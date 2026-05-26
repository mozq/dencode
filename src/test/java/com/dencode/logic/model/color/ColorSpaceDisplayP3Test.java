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

public class ColorSpaceDisplayP3Test {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.DISPLAY_P3.parseColor(null));
		assertNull(ColorSpace.DISPLAY_P3.parseColor("color(display-p3)"));
		assertNull(ColorSpace.DISPLAY_P3.parseColor("color(display-p3 1 0)"));
		assertNull(ColorSpace.DISPLAY_P3.parseColor("rgb(255 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("color(display-p3 1 0 0)", new double[]{1.0, 0.0, 0.0}, 1.0); // red
		testParseColor("color(display-p3 0 1 0)", new double[]{0.0, 1.0, 0.0}, 1.0); // green
		testParseColor("color(display-p3 0 0 1)", new double[]{0.0, 0.0, 1.0}, 1.0); // blue
		testParseColor("color(display-p3 1 1 0)", new double[]{1.0, 1.0, 0.0}, 1.0); // yellow
		testParseColor("color(display-p3 0 1 1)", new double[]{0.0, 1.0, 1.0}, 1.0); // cyan
		testParseColor("color(display-p3 1 0 1)", new double[]{1.0, 0.0, 1.0}, 1.0); // magenta
		testParseColor("color(display-p3 0.5 0.5 0.5)", new double[]{0.5, 0.5, 0.5}, 1.0); // gray
		testParseColor("color(display-p3 1 1 1)", new double[]{1.0, 1.0, 1.0}, 1.0); // white
		testParseColor("color(display-p3 0 0 0)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("color(display-p3 1 0.64706 0)", new double[]{1.0, 165.0 / 255.0, 0.0}, 1.0); // orange
		testParseColor("color(display-p3 0.50196 0 0.50196)", new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, 1.0); // purple
		testParseColor("color(display-p3 0.29412 0 0.5098)", new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, 1.0); // indigo
		testParseColor("color(display-p3 1 0.75294 0.79608)", new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, 1.0); // pink
		testParseColor("color(display-p3 0.64706 0.16471 0.16471)", new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, 1.0); // brown
		testParseColor("color(display-p3 0.50196 0 0)", new double[]{128.0 / 255.0, 0.0, 0.0}, 1.0); // maroon
		testParseColor("color(display-p3 0.50196 0.50196 0)", new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, 1.0); // olive
		testParseColor("color(display-p3 0 0.50196 0.50196)", new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, 1.0); // teal
		testParseColor("color(display-p3 0 0 0.50196)", new double[]{0.0, 0.0, 128.0 / 255.0}, 1.0); // navy
		testParseColor("color(display-p3 0.75294 0.75294 0.75294)", new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, 1.0); // silver
		testParseColor("color(display-p3 0.4 0.2 0.6)", new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("color(display-p3 1 0 0)", new double[]{1.0, 0.0, 0.0}, 1.0);
		testParseColor("color(display-p3 100% 0% 0%)", new double[]{1.0, 0.0, 0.0}, 1.0);
		testParseColor("color(display-p3 1 0 0 / 50%)", new double[]{1.0, 0.0, 0.0}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_preserved() {
		testParseColor("color(display-p3 1.5 -0.2 0)", new double[]{1.5, -0.2, 0.0}, 1.0);
	}

	@Test
	public void testFormat() {
		assertEquals("color(display-p3 1 0 0)", ColorSpace.DISPLAY_P3.format(new double[]{1.0, 0.0, 0.0}, 1.0));
		assertEquals("color(display-p3 1 0 0 / 0.5)", ColorSpace.DISPLAY_P3.format(new double[]{1.0, 0.0, 0.0}, 0.5));
	}

	@Test
	public void testFormat_withFormatter_percentage() {
		ColorSpace cs = ColorSpace.DISPLAY_P3.with(ColorSpaceDisplayP3.FORMATTER_PERCENTAGE);
		assertEquals("color(display-p3 100% 0% 0%)", cs.format(new double[]{1.0, 0.0, 0.0}, 1.0));
		assertEquals("color(display-p3 150% -20% 0% / 0.5)", cs.format(new double[]{1.5, -0.2, 0.0}, 0.5));
	}

	@Test
	public void testConvertToXyz() {
		assertArrayEquals(new double[]{0.48657, 0.22897, 0.0}, ColorSpace.DISPLAY_P3.convertToXyz(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{0.26567, 0.69174, 0.04511}, ColorSpace.DISPLAY_P3.convertToXyz(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{0.19822, 0.07929, 1.04394}, ColorSpace.DISPLAY_P3.convertToXyz(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{0.95046, 1.0, 1.08906}, ColorSpace.DISPLAY_P3.convertToXyz(new double[]{1.0, 1.0, 1.0}), CONVERT_DELTA); // white
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{1.09307, -0.22674, -0.15014}, ColorSpace.DISPLAY_P3.convertToRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{-0.51161, 1.01827, -0.31067}, ColorSpace.DISPLAY_P3.convertToRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{0.0, 0.0, 1.04202}, ColorSpace.DISPLAY_P3.convertToRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{1.0, 1.0, 1.0}, ColorSpace.DISPLAY_P3.convertToRgb(new double[]{1.0, 1.0, 1.0}), CONVERT_DELTA);
	}

	@Test
	public void testConvertFromRgb() {
		assertArrayEquals(new double[]{0.91749, 0.20029, 0.13856}, ColorSpace.DISPLAY_P3.convertFromRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] sample = ColorSpace.DISPLAY_P3.convertFromRgb(color.rgb());
			double[] xyz = ColorSpace.DISPLAY_P3.convertToXyz(sample);
			double[] back = ColorSpace.DISPLAY_P3.convertFromXyz(xyz);
			assertArrayEquals(sample, back, ROUNDTRIP_DELTA, color.name());
		}
	}

	@Test
	public void testWith_doesNotMutateOriginal() {
		ColorSpace cs = ColorSpace.DISPLAY_P3.with(ColorSpaceDisplayP3.FORMATTER_PERCENTAGE);
		assertFalse(ColorSpace.DISPLAY_P3.format(new double[]{1.0, 0.0, 0.0}, 1.0).contains("%"));
		assertTrue(cs.format(new double[]{1.0, 0.0, 0.0}, 1.0).contains("%"));
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.DISPLAY_P3.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}
}
