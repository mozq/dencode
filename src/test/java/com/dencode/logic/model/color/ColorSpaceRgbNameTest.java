/*!
 * DenCode
 * Copyright 2016 Mozq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.dencode.logic.model.color;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

public class ColorSpaceRgbNameTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.RGB_NAME.parseColor(null));
		assertNull(ColorSpace.RGB_NAME.parseColor("notacolor"));
		assertNull(ColorSpace.RGB_NAME.parseColor("rgb(0 0 0)")); // RgbName space doesn't parse rgb()
		assertNull(ColorSpace.RGB_NAME.parseColor("rgb(from notacolor r g b)")); // Invalid base color
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("red", new double[]{1.0, 0.0, 0.0}, 1.0); // red
		testParseColor("lime", new double[]{0.0, 1.0, 0.0}, 1.0); // green
		testParseColor("blue", new double[]{0.0, 0.0, 1.0}, 1.0); // blue
		testParseColor("yellow", new double[]{1.0, 1.0, 0.0}, 1.0); // yellow
		testParseColor("cyan", new double[]{0.0, 1.0, 1.0}, 1.0); // cyan
		testParseColor("magenta", new double[]{1.0, 0.0, 1.0}, 1.0); // magenta
		testParseColor("gray", new double[]{128.0 / 255.0, 128.0 / 255.0, 128.0 / 255.0}, 1.0); // gray
		testParseColor("white", new double[]{1.0, 1.0, 1.0}, 1.0); // white
		testParseColor("black", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("orange", new double[]{1.0, 165.0 / 255.0, 0.0}, 1.0); // orange
		testParseColor("purple", new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, 1.0); // purple
		testParseColor("indigo", new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, 1.0); // indigo
		testParseColor("pink", new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, 1.0); // pink
		testParseColor("brown", new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, 1.0); // brown
		testParseColor("maroon", new double[]{128.0 / 255.0, 0.0, 0.0}, 1.0); // maroon
		testParseColor("olive", new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, 1.0); // olive
		testParseColor("teal", new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, 1.0); // teal
		testParseColor("navy", new double[]{0.0, 0.0, 128.0 / 255.0}, 1.0); // navy
		testParseColor("silver", new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, 1.0); // silver

		testParseColor("rebeccapurple", new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, 1.0);
	}

	@Test
	public void testParseColor_specialNames() {
		testParseColor("transparent", new double[]{0.0, 0.0, 0.0}, 0.0);
	}

	@Test
	public void testParseColor_synonyms() {
		testParseColor("aqua", new double[]{0.0, 1.0, 1.0}, 1.0); // synonym
		testParseColor("grey", new double[]{128.0 / 255.0, 128.0 / 255.0, 128.0 / 255.0}, 1.0); // synonym
	}

	@Test
	public void testParseColor_rcs() {
		testParseColor("rgb(from blue r g b)", new double[]{0.0, 0.0, 1.0}, 1.0); // rcs no alpha
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("rgb(from red r g b / 0.5)", new double[]{1.0, 0.0, 0.0}, 0.5); // rcs alpha
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{1.0, 0.0, 0.0}, 1.0, "red");
		testFormat(new double[]{0.0, 0.0, 1.0}, 1.0, "blue");
		testFormat(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, 1.0, "rebeccapurple");
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.0, "transparent");

		testFormat(new double[]{1.0, 0.0, 0.0}, 0.5, "rgb(from red r g b / 0.5)"); // with alpha

		assertNull(ColorSpace.RGB_NAME.format(new double[]{1.0, 128.0 / 255.0, 64.0 / 255.0}, 1.0)); // fallback
	}

	@Test
	public void testFormat_alphaClamped() {
		testFormat(new double[]{1.0, 0.0, 0.0}, 1.2, "red");
		testFormat(new double[]{1.0, 0.0, 0.0}, -0.2, "rgb(from red r g b / 0)");
	}

	@Test
	public void testFormat_transparentRequiresTransparentBlack() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.0, "transparent");
		testFormat(new double[]{1.0, 0.0, 0.0}, 0.0, "rgb(from red r g b / 0)");
	}

	@Test
	public void testFormat_synonym_cyan() {
		// cyan is an alias for aqua (0x00ffff), map might return aqua or cyan depending on iteration,
		// but since we keep the first one inserted or overridden, let's just make sure it returns either aqua or cyan.
		String s = ColorSpace.RGB_NAME.format(new double[]{0.0, 1.0, 1.0}, 1.0);
		assertTrue("aqua".equals(s) || "cyan".equals(s));
	}

	@Test
	public void testConvertFromRgb() {
		double[] rgb = {1.0, 0.0, 0.0};
		assertArrayEquals(rgb, ColorSpace.RGB_NAME.convertFromRgb(rgb), CONVERT_DELTA);
	}

	@Test
	public void testConvertToRgb() {
		double[] rgb = {0.0, 1.0, 0.0};
		assertArrayEquals(rgb, ColorSpace.RGB_NAME.convertToRgb(rgb), CONVERT_DELTA);
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] rgbName = ColorSpace.RGB_NAME.convertFromRgb(color.rgb());
			double[] back = ColorSpace.RGB_NAME.convertToRgb(rgbName);
			assertArrayEquals(color.rgb(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.RGB_NAME.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.RGB_NAME.format(components, alpha);
		assertEquals(exp, s);
	}
}
