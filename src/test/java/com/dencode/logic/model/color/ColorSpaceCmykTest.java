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

public class ColorSpaceCmykTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.CMYK.parseColor(null));
		assertNull(ColorSpace.CMYK.parseColor("device-cmyk()"));
		assertNull(ColorSpace.CMYK.parseColor("rgb(0 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("device-cmyk(0% 100% 100% 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0); // red
		testParseColor("device-cmyk(100% 0% 100% 0%)", new double[]{1.0, 0.0, 1.0, 0.0}, 1.0); // green
		testParseColor("device-cmyk(100% 100% 0% 0%)", new double[]{1.0, 1.0, 0.0, 0.0}, 1.0); // blue
		testParseColor("device-cmyk(0% 0% 100% 0%)", new double[]{0.0, 0.0, 1.0, 0.0}, 1.0); // yellow
		testParseColor("device-cmyk(100% 0% 0% 0%)", new double[]{1.0, 0.0, 0.0, 0.0}, 1.0); // cyan
		testParseColor("device-cmyk(0% 100% 0% 0%)", new double[]{0.0, 1.0, 0.0, 0.0}, 1.0); // magenta
		testParseColor("device-cmyk(0% 0% 0% 50%)", new double[]{0.0, 0.0, 0.0, 0.5}, 1.0); // gray
		testParseColor("device-cmyk(0% 0% 0% 0%)", new double[]{0.0, 0.0, 0.0, 0.0}, 1.0); // white
		testParseColor("device-cmyk(0% 0% 0% 100%)", new double[]{0.0, 0.0, 0.0, 1.0}, 1.0); // black
		testParseColor("device-cmyk(0% 35.294% 100% 0%)", new double[]{0.0, 0.35294, 1.0, 0.0}, 1.0); // orange
		testParseColor("device-cmyk(0% 100% 0% 49.804%)", new double[]{0.0, 1.0, 0.0, 0.49804}, 1.0); // purple
		testParseColor("device-cmyk(42.308% 100% 0% 49.02%)", new double[]{0.42308, 1.0, 0.0, 0.4902}, 1.0); // indigo
		testParseColor("device-cmyk(0% 24.706% 20.392% 0%)", new double[]{0.0, 0.24706, 0.20392, 0.0}, 1.0); // pink
		testParseColor("device-cmyk(0% 74.545% 74.545% 35.294%)", new double[]{0.0, 0.74545, 0.74545, 0.35294}, 1.0); // brown
		testParseColor("device-cmyk(0% 100% 100% 49.804%)", new double[]{0.0, 1.0, 1.0, 0.49804}, 1.0); // maroon
		testParseColor("device-cmyk(0% 0% 100% 49.804%)", new double[]{0.0, 0.0, 1.0, 0.49804}, 1.0); // olive
		testParseColor("device-cmyk(100% 0% 0% 49.804%)", new double[]{1.0, 0.0, 0.0, 0.49804}, 1.0); // teal
		testParseColor("device-cmyk(100% 100% 0% 49.804%)", new double[]{1.0, 1.0, 0.0, 0.49804}, 1.0); // navy
		testParseColor("device-cmyk(0% 0% 0% 24.706%)", new double[]{0.0, 0.0, 0.0, 0.24706}, 1.0); // silver
		testParseColor("device-cmyk(33.333% 66.667% 0% 40%)", new double[]{0.33333, 0.66667, 0.0, 0.4}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("cmyk(0% 100% 100% 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0); // alias
		testParseColor("cmyk(0%, 100%, 100%, 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0); // alias comma separated
		testParseColor("device-cmyk(0, 100%, 100%, 0)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0); // comma separated
		testParseColor("device-cmyk(0 1 1 0)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0); // ratios
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("device-cmyk(0 100% 100% 0 / 50%)", new double[]{0.0, 1.0, 1.0, 0.0}, 0.5); // alpha slash
		testParseColor("device-cmyk(0%, 100%, 100%, 0%, 0.5)", new double[]{0.0, 1.0, 1.0, 0.0}, 0.5); // alpha comma
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("device-cmyk(120% 130% 140% 150%)", new double[]{1.0, 1.0, 1.0, 1.0}, 1.0);
	}

	@Test
	public void testParseColor_negativeComponents_unsupported() {
		assertNull(ColorSpace.CMYK.parseColor("device-cmyk(-10% 50% 100% 0%)"));
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 1.0, 1.0, 0.0}, 1.0, "device-cmyk(0% 100% 100% 0%)"); // red
		testFormat(new double[]{1.0, 0.0, 1.0, 0.0}, 1.0, "device-cmyk(100% 0% 100% 0%)"); // green
		testFormat(new double[]{1.0, 1.0, 0.0, 0.0}, 1.0, "device-cmyk(100% 100% 0% 0%)"); // blue
		testFormat(new double[]{0.0, 0.0, 1.0, 0.0}, 1.0, "device-cmyk(0% 0% 100% 0%)"); // yellow
		testFormat(new double[]{1.0, 0.0, 0.0, 0.0}, 1.0, "device-cmyk(100% 0% 0% 0%)"); // cyan
		testFormat(new double[]{0.0, 1.0, 0.0, 0.0}, 1.0, "device-cmyk(0% 100% 0% 0%)"); // magenta
		testFormat(new double[]{0.0, 0.0, 0.0, 0.5}, 1.0, "device-cmyk(0% 0% 0% 50%)"); // gray
		testFormat(new double[]{0.0, 0.0, 0.0, 0.0}, 1.0, "device-cmyk(0% 0% 0% 0%)"); // white
		testFormat(new double[]{0.0, 0.0, 0.0, 1.0}, 1.0, "device-cmyk(0% 0% 0% 100%)"); // black
		testFormat(new double[]{0.0, 0.35294, 1.0, 0.0}, 1.0, "device-cmyk(0% 35.29% 100% 0%)"); // orange
		testFormat(new double[]{0.0, 1.0, 0.0, 0.49804}, 1.0, "device-cmyk(0% 100% 0% 49.8%)"); // purple
		testFormat(new double[]{0.42308, 1.0, 0.0, 0.4902}, 1.0, "device-cmyk(42.31% 100% 0% 49.02%)"); // indigo
		testFormat(new double[]{0.0, 0.24706, 0.20392, 0.0}, 1.0, "device-cmyk(0% 24.71% 20.39% 0%)"); // pink
		testFormat(new double[]{0.0, 0.74545, 0.74545, 0.35294}, 1.0, "device-cmyk(0% 74.54% 74.54% 35.29%)"); // brown
		testFormat(new double[]{0.0, 1.0, 1.0, 0.49804}, 1.0, "device-cmyk(0% 100% 100% 49.8%)"); // maroon
		testFormat(new double[]{0.0, 0.0, 1.0, 0.49804}, 1.0, "device-cmyk(0% 0% 100% 49.8%)"); // olive
		testFormat(new double[]{1.0, 0.0, 0.0, 0.49804}, 1.0, "device-cmyk(100% 0% 0% 49.8%)"); // teal
		testFormat(new double[]{1.0, 1.0, 0.0, 0.49804}, 1.0, "device-cmyk(100% 100% 0% 49.8%)"); // navy
		testFormat(new double[]{0.0, 0.0, 0.0, 0.24706}, 1.0, "device-cmyk(0% 0% 0% 24.71%)"); // silver
		testFormat(new double[]{0.33333, 0.66667, 0.0, 0.4}, 1.0, "device-cmyk(33.33% 66.67% 0% 40%)"); // rebeccapurple

		testFormat(new double[]{0.5, 0.5, 0.5, 0.0}, 1.0, "device-cmyk(50% 50% 50% 0%)"); // gray_no_normalization
		testFormat(new double[]{0.0, 1.0, 1.0, 0.0}, 0.5, "device-cmyk(0% 100% 100% 0% / 0.5)"); // alpha
		assertEquals("device-cmyk(0% 50% 100% 100%)", Color.from(ColorSpace.CMYK, new double[]{-0.1, 0.5, 1.2, 1.5}, 1.0).toString()); // computed-value clamp
	}

	@Test
	public void testConvertFromRgb() {
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{1.0, 0.0, 1.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{1.0, 1.0, 0.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{0.0, 1.0, 1.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 1.0, 0.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{1.0, 0.0, 1.0}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 0.5}, ColorSpace.CMYK.convertFromRgb(new double[]{0.5, 0.5, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{1.0, 1.0, 1.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorSpace.CMYK.convertFromRgb(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{0.0, 0.35294, 1.0, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{1.0, 165.0 / 255.0, 0.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{0.0, 1.0, 0.0, 0.49804}, ColorSpace.CMYK.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{0.42308, 1.0, 0.0, 0.4902}, ColorSpace.CMYK.convertFromRgb(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{0.0, 0.24706, 0.20392, 0.0}, ColorSpace.CMYK.convertFromRgb(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{0.0, 0.74545, 0.74545, 0.35294}, ColorSpace.CMYK.convertFromRgb(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 127.0 / 255.0}, ColorSpace.CMYK.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 0.0}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 127.0 / 255.0}, ColorSpace.CMYK.convertFromRgb(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 127.0 / 255.0}, ColorSpace.CMYK.convertFromRgb(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 127.0 / 255.0}, ColorSpace.CMYK.convertFromRgb(new double[]{0.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 63.0 / 255.0}, ColorSpace.CMYK.convertFromRgb(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{51.0 / 153.0, 102.0 / 153.0, 0.0, 102.0 / 255.0}, ColorSpace.CMYK.convertFromRgb(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testConvertFromRgb_blackBranch() {
		assertArrayEquals(
				new double[]{0.0, 0.0, 0.0, 1.0},
				ColorSpace.CMYK.convertFromRgb(new double[]{0.0, 0.0, 0.0}),
				CONVERT_DELTA);
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 1.0, 1.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{0.0, 1.0, 0.0}, ColorSpace.CMYK.convertToRgb(new double[]{1.0, 0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{0.0, 0.0, 1.0}, ColorSpace.CMYK.convertToRgb(new double[]{1.0, 1.0, 0.0, 0.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{1.0, 1.0, 0.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.0, 1.0, 0.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{0.0, 1.0, 1.0}, ColorSpace.CMYK.convertToRgb(new double[]{1.0, 0.0, 0.0, 0.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{1.0, 0.0, 1.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 1.0, 0.0, 0.0}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.5, 0.5, 0.5}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.0, 0.0, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{1.0, 1.0, 1.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.0, 0.0, 0.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.0, 0.0, 1.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{1.0, 165.0 / 255.0, 0.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.35294, 1.0, 0.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 1.0, 0.0, 0.49804}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.42308, 1.0, 0.0, 0.4902}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.24706, 0.20392, 0.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.74545, 0.74545, 0.35294}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 0.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 1.0, 1.0, 0.49804}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.0, 1.0, 0.49804}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{1.0, 0.0, 0.0, 0.49804}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{0.0, 0.0, 128.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{1.0, 1.0, 0.0, 0.49804}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.0, 0.0, 0.0, 0.24706}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, ColorSpace.CMYK.convertToRgb(new double[]{0.33333, 0.66667, 0.0, 0.4}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] cmyk = ColorSpace.CMYK.convertFromRgb(color.rgb());
			double[] back = ColorSpace.CMYK.convertToRgb(cmyk);
			assertArrayEquals(color.rgb(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.CMYK.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.CMYK.format(components, alpha);
		assertEquals(exp, s);
	}
}
