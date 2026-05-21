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

public class ColorSpaceCmyTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.CMY.parseColor(null));
		assertNull(ColorSpace.CMY.parseColor("cmy()"));
		assertNull(ColorSpace.CMY.parseColor("rgb(0 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("cmy(0% 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // red
		testParseColor("cmy(100% 0% 100%)", new double[]{1.0, 0.0, 1.0}, 1.0); // green
		testParseColor("cmy(100% 100% 0%)", new double[]{1.0, 1.0, 0.0}, 1.0); // blue
		testParseColor("cmy(0% 0% 100%)", new double[]{0.0, 0.0, 1.0}, 1.0); // yellow
		testParseColor("cmy(100% 0% 0%)", new double[]{1.0, 0.0, 0.0}, 1.0); // cyan
		testParseColor("cmy(0% 100% 0%)", new double[]{0.0, 1.0, 0.0}, 1.0); // magenta
		testParseColor("cmy(50% 50% 50%)", new double[]{0.5, 0.5, 0.5}, 1.0); // gray
		testParseColor("cmy(0% 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // white
		testParseColor("cmy(100% 100% 100%)", new double[]{1.0, 1.0, 1.0}, 1.0); // black
		testParseColor("cmy(0% 35.294% 100%)", new double[]{0.0, 0.35294, 1.0}, 1.0); // orange
		testParseColor("cmy(49.804% 100% 49.804%)", new double[]{0.49804, 1.0, 0.49804}, 1.0); // purple
		testParseColor("cmy(70.588% 100% 49.02%)", new double[]{0.70588, 1.0, 0.4902}, 1.0); // indigo
		testParseColor("cmy(0% 24.706% 20.392%)", new double[]{0.0, 0.24706, 0.20392}, 1.0); // pink
		testParseColor("cmy(35.294% 83.529% 83.529%)", new double[]{0.35294, 0.83529, 0.83529}, 1.0); // brown
		testParseColor("cmy(49.804% 100% 100%)", new double[]{0.49804, 1.0, 1.0}, 1.0); // maroon
		testParseColor("cmy(49.804% 49.804% 100%)", new double[]{0.49804, 0.49804, 1.0}, 1.0); // olive
		testParseColor("cmy(100% 49.804% 49.804%)", new double[]{1.0, 0.49804, 0.49804}, 1.0); // teal
		testParseColor("cmy(100% 100% 49.804%)", new double[]{1.0, 1.0, 0.49804}, 1.0); // navy
		testParseColor("cmy(24.706% 24.706% 24.706%)", new double[]{0.24706, 0.24706, 0.24706}, 1.0); // silver
		testParseColor("cmy(60% 80% 40%)", new double[]{0.6, 0.8, 0.4}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("device-cmy(0% 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // alias
		testParseColor("device-cmy(0%, 100%, 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // alias comma separated
		testParseColor("cmy(0%, 100%, 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // comma separated
		testParseColor("cmy(0 1 1)", new double[]{0.0, 1.0, 1.0}, 1.0); // ratios
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("cmy(0% 100% 100% / 0.5)", new double[]{0.0, 1.0, 1.0}, 0.5); // alpha slash
		testParseColor("cmy(0%, 100%, 100%, 0.5)", new double[]{0.0, 1.0, 1.0}, 0.5); // alpha comma
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("cmy(120% 130% 140%)", new double[]{1.0, 1.0, 1.0}, 1.0);
	}

	@Test
	public void testParseColor_negativeComponents_unsupported() {
		assertNull(ColorSpace.CMY.parseColor("cmy(-10% 50% 100%)"));
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 1.0, 1.0}, 1.0, "cmy(0% 100% 100%)"); // red
		testFormat(new double[]{1.0, 0.0, 1.0}, 1.0, "cmy(100% 0% 100%)"); // green
		testFormat(new double[]{1.0, 1.0, 0.0}, 1.0, "cmy(100% 100% 0%)"); // blue
		testFormat(new double[]{0.0, 0.0, 1.0}, 1.0, "cmy(0% 0% 100%)"); // yellow
		testFormat(new double[]{1.0, 0.0, 0.0}, 1.0, "cmy(100% 0% 0%)"); // cyan
		testFormat(new double[]{0.0, 1.0, 0.0}, 1.0, "cmy(0% 100% 0%)"); // magenta
		testFormat(new double[]{0.5, 0.5, 0.5}, 1.0, "cmy(50% 50% 50%)"); // gray
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "cmy(0% 0% 0%)"); // white
		testFormat(new double[]{1.0, 1.0, 1.0}, 1.0, "cmy(100% 100% 100%)"); // black
		testFormat(new double[]{0.0, 0.35294, 1.0}, 1.0, "cmy(0% 35.29% 100%)"); // orange
		testFormat(new double[]{0.49804, 1.0, 0.49804}, 1.0, "cmy(49.8% 100% 49.8%)"); // purple
		testFormat(new double[]{0.70588, 1.0, 0.4902}, 1.0, "cmy(70.59% 100% 49.02%)"); // indigo
		testFormat(new double[]{0.0, 0.24706, 0.20392}, 1.0, "cmy(0% 24.71% 20.39%)"); // pink
		testFormat(new double[]{0.35294, 0.83529, 0.83529}, 1.0, "cmy(35.29% 83.53% 83.53%)"); // brown
		testFormat(new double[]{0.49804, 1.0, 1.0}, 1.0, "cmy(49.8% 100% 100%)"); // maroon
		testFormat(new double[]{0.49804, 0.49804, 1.0}, 1.0, "cmy(49.8% 49.8% 100%)"); // olive
		testFormat(new double[]{1.0, 0.49804, 0.49804}, 1.0, "cmy(100% 49.8% 49.8%)"); // teal
		testFormat(new double[]{1.0, 1.0, 0.49804}, 1.0, "cmy(100% 100% 49.8%)"); // navy
		testFormat(new double[]{0.24706, 0.24706, 0.24706}, 1.0, "cmy(24.71% 24.71% 24.71%)"); // silver
		testFormat(new double[]{0.6, 0.8, 0.4}, 1.0, "cmy(60% 80% 40%)"); // rebeccapurple

		testFormat(new double[]{0.0, 1.0, 1.0}, 0.5, "cmy(0% 100% 100% / 0.5)"); // alpha
		assertEquals("cmy(0% 50% 100%)", Color.from(ColorSpace.CMY, new double[]{-0.1, 0.5, 1.2}, 1.0).toString()); // computed-value clamp
	}

	@Test
	public void testConvertFromRgb() {
		assertArrayEquals(new double[]{0.0, 1.0, 1.0}, ColorSpace.CMY.convertFromRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{1.0, 0.0, 1.0}, ColorSpace.CMY.convertFromRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0}, ColorSpace.CMY.convertFromRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.0, 1.0}, ColorSpace.CMY.convertFromRgb(new double[]{1.0, 1.0, 0.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.CMY.convertFromRgb(new double[]{0.0, 1.0, 1.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 1.0, 0.0}, ColorSpace.CMY.convertFromRgb(new double[]{1.0, 0.0, 1.0}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.5, 0.5, 0.5}, ColorSpace.CMY.convertFromRgb(new double[]{0.5, 0.5, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.CMY.convertFromRgb(new double[]{1.0, 1.0, 1.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{1.0, 1.0, 1.0}, ColorSpace.CMY.convertFromRgb(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{0.0, 0.35294, 1.0}, ColorSpace.CMY.convertFromRgb(new double[]{1.0, 165.0 / 255.0, 0.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{0.49804, 1.0, 0.49804}, ColorSpace.CMY.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{0.70588, 1.0, 0.4902}, ColorSpace.CMY.convertFromRgb(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{0.0, 0.24706, 0.20392}, ColorSpace.CMY.convertFromRgb(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{0.35294, 0.83529, 0.83529}, ColorSpace.CMY.convertFromRgb(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{127.0 / 255.0, 1.0, 1.0}, ColorSpace.CMY.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 0.0}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{127.0 / 255.0, 127.0 / 255.0, 1.0}, ColorSpace.CMY.convertFromRgb(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{1.0, 127.0 / 255.0, 127.0 / 255.0}, ColorSpace.CMY.convertFromRgb(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{1.0, 1.0, 127.0 / 255.0}, ColorSpace.CMY.convertFromRgb(new double[]{0.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{63.0 / 255.0, 63.0 / 255.0, 63.0 / 255.0}, ColorSpace.CMY.convertFromRgb(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{153.0 / 255.0, 204.0 / 255.0, 102.0 / 255.0}, ColorSpace.CMY.convertFromRgb(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.CMY.convertToRgb(new double[]{0.0, 1.0, 1.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{0.0, 1.0, 0.0}, ColorSpace.CMY.convertToRgb(new double[]{1.0, 0.0, 1.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{0.0, 0.0, 1.0}, ColorSpace.CMY.convertToRgb(new double[]{1.0, 1.0, 0.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{1.0, 1.0, 0.0}, ColorSpace.CMY.convertToRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{0.0, 1.0, 1.0}, ColorSpace.CMY.convertToRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{1.0, 0.0, 1.0}, ColorSpace.CMY.convertToRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.5, 0.5, 0.5}, ColorSpace.CMY.convertToRgb(new double[]{0.5, 0.5, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{1.0, 1.0, 1.0}, ColorSpace.CMY.convertToRgb(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.CMY.convertToRgb(new double[]{1.0, 1.0, 1.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{1.0, 165.0 / 255.0, 0.0}, ColorSpace.CMY.convertToRgb(new double[]{0.0, 0.35294, 1.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{0.49804, 1.0, 0.49804}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{0.70588, 1.0, 0.4902}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{0.0, 0.24706, 0.20392}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{0.35294, 0.83529, 0.83529}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 0.0}, ColorSpace.CMY.convertToRgb(new double[]{0.49804, 1.0, 1.0}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, ColorSpace.CMY.convertToRgb(new double[]{0.49804, 0.49804, 1.0}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{1.0, 0.49804, 0.49804}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{0.0, 0.0, 128.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{1.0, 1.0, 0.49804}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{0.24706, 0.24706, 0.24706}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, ColorSpace.CMY.convertToRgb(new double[]{0.6, 0.8, 0.4}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] cmy = ColorSpace.CMY.convertFromRgb(color.rgb());
			double[] back = ColorSpace.CMY.convertToRgb(cmy);
			assertArrayEquals(color.rgb(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.CMY.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.CMY.format(components, alpha);
		assertEquals(exp, s);
	}
}
