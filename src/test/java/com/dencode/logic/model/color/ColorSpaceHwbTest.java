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

public class ColorSpaceHwbTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.HWB.parseColor(null));
		assertNull(ColorSpace.HWB.parseColor("hwb()"));
		assertNull(ColorSpace.HWB.parseColor("hsl(0 100% 50%)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("hwb(0deg 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // red
		testParseColor("hwb(120deg 0% 0%)", new double[]{120.0, 0.0, 0.0}, 1.0); // green
		testParseColor("hwb(240deg 0% 0%)", new double[]{240.0, 0.0, 0.0}, 1.0); // blue
		testParseColor("hwb(60deg 0% 0%)", new double[]{60.0, 0.0, 0.0}, 1.0); // yellow
		testParseColor("hwb(180deg 0% 0%)", new double[]{180.0, 0.0, 0.0}, 1.0); // cyan
		testParseColor("hwb(300deg 0% 0%)", new double[]{300.0, 0.0, 0.0}, 1.0); // magenta
		testParseColor("hwb(0deg 50% 50%)", new double[]{0.0, 0.5, 0.5}, 1.0); // gray
		testParseColor("hwb(0deg 100% 0%)", new double[]{0.0, 1.0, 0.0}, 1.0); // white
		testParseColor("hwb(0deg 0% 100%)", new double[]{0.0, 0.0, 1.0}, 1.0); // black
		testParseColor("hwb(38.824deg 0% 0%)", new double[]{38.824, 0.0, 0.0}, 1.0); // orange
		testParseColor("hwb(300deg 0% 49.804%)", new double[]{300.0, 0.0, 0.49804}, 1.0); // purple
		testParseColor("hwb(274.615deg 0% 49.02%)", new double[]{274.615, 0.0, 0.4902}, 1.0); // indigo
		testParseColor("hwb(349.524deg 75.294% 0%)", new double[]{349.524, 0.75294, 0.0}, 1.0); // pink
		testParseColor("hwb(0deg 16.471% 35.294%)", new double[]{0.0, 0.16471, 0.35294}, 1.0); // brown
		testParseColor("hwb(0deg 0% 49.804%)", new double[]{0.0, 0.0, 0.49804}, 1.0); // maroon
		testParseColor("hwb(60deg 0% 49.804%)", new double[]{60.0, 0.0, 0.49804}, 1.0); // olive
		testParseColor("hwb(180deg 0% 49.804%)", new double[]{180.0, 0.0, 0.49804}, 1.0); // teal
		testParseColor("hwb(240deg 0% 49.804%)", new double[]{240.0, 0.0, 0.49804}, 1.0); // navy
		testParseColor("hwb(0deg 75.294% 24.706%)", new double[]{0.0, 0.75294, 0.24706}, 1.0); // silver
		testParseColor("hwb(270deg 20% 40%)", new double[]{270.0, 0.2, 0.4}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("hwb(0deg 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // hue unit
		testParseColor("hwb(0 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // no hue unit
		testParseColor("hwb(0deg, 0%, 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // comma separated
		testParseColor("hwb(270deg 0.2 0.4)", new double[]{270.0, 0.2, 0.4}, 1.0); // ratios
	}

	@Test
	public void testParseColor_hueNormalization() {
		testParseColor("hwb(360deg 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // positive wrap
		testParseColor("hwb(-120deg 0% 0%)", new double[]{240.0, 0.0, 0.0}, 1.0); // negative wrap
		testParseColor("hwb(720deg 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // multiple wraps
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("hwb(0deg 0% 0% / 0.5)", new double[]{0.0, 0.0, 0.0}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("hwb(0deg 120% 130%)", new double[]{0.0, 1.0, 1.0}, 1.0);
		testParseColor("hwb(0deg -10% -20%)", new double[]{0.0, 0.0, 0.0}, 1.0);
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "hwb(0deg 0% 0%)"); // red
		testFormat(new double[]{270.0, 0.2, 0.4}, 1.0, "hwb(270deg 20% 40%)"); // rebeccapurple
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.5, "hwb(0deg 0% 0% / 0.5)"); // alpha
		assertEquals("hwb(60deg 20% 40%)", Color.from(ColorSpace.HWB, new double[]{420.0, 0.2, 0.4}, 1.0).toString()); // normalized hue
	}

	@Test
	public void testConvertFromRgb() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{120.0, 0.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{240.0, 0.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{60.0, 0.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{1.0, 1.0, 0.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{180.0, 0.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{0.0, 1.0, 1.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{300.0, 0.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{1.0, 0.0, 1.0}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.0, 0.5, 0.5}, ColorSpace.HWB.convertFromRgb(new double[]{0.5, 0.5, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{0.0, 1.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{1.0, 1.0, 1.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{0.0, 0.0, 1.0}, ColorSpace.HWB.convertFromRgb(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{165.0 / 255.0 * 60.0, 0.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{1.0, 165.0 / 255.0, 0.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{300.0, 0.0, 127.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{(4.0 + 75.0 / 130.0) * 60.0, 0.0, 125.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{(6.0 + (192.0 - 203.0) / 63.0) * 60.0, 192.0 / 255.0, 0.0}, ColorSpace.HWB.convertFromRgb(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{0.0, 42.0 / 255.0, 90.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{0.0, 0.0, 127.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 0.0}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{60.0, 0.0, 127.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{180.0, 0.0, 127.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{240.0, 0.0, 127.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{0.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{0.0, 192.0 / 255.0, 63.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{270.0, 51.0 / 255.0, 102.0 / 255.0}, ColorSpace.HWB.convertFromRgb(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{0.0, 1.0, 0.0}, ColorSpace.HWB.convertToRgb(new double[]{120.0, 0.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{0.0, 0.0, 1.0}, ColorSpace.HWB.convertToRgb(new double[]{240.0, 0.0, 0.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{1.0, 1.0, 0.0}, ColorSpace.HWB.convertToRgb(new double[]{60.0, 0.0, 0.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{0.0, 1.0, 1.0}, ColorSpace.HWB.convertToRgb(new double[]{180.0, 0.0, 0.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{1.0, 0.0, 1.0}, ColorSpace.HWB.convertToRgb(new double[]{300.0, 0.0, 0.0}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.5, 0.5, 0.5}, ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.5, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{1.0, 1.0, 1.0}, ColorSpace.HWB.convertToRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{1.0, 165.0 / 255.0, 0.0}, ColorSpace.HWB.convertToRgb(new double[]{38.824, 0.0, 0.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{300.0, 0.0, 0.49804}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{274.615, 0.0, 0.4902}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{349.524, 0.75294, 0.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.16471, 0.35294}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 0.0}, ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.0, 0.49804}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, ColorSpace.HWB.convertToRgb(new double[]{60.0, 0.0, 0.49804}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{180.0, 0.0, 0.49804}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{0.0, 0.0, 128.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{240.0, 0.0, 0.49804}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.75294, 0.24706}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, ColorSpace.HWB.convertToRgb(new double[]{270.0, 0.2, 0.4}), CONVERT_DELTA); // rebeccapurple

		// W+B >= 1 => gray
		double[] rgbGray = ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.6, 0.6});
		assertEquals(rgbGray[0], rgbGray[1], CONVERT_DELTA);
		assertEquals(rgbGray[1], rgbGray[2], CONVERT_DELTA);
	}

	@Test
	public void testConvertToRgb_whiteBlackBoundary() {
		assertArrayEquals(
				new double[]{0.25, 0.25, 0.25},
				ColorSpace.HWB.convertToRgb(new double[]{0.0, 0.25, 0.75}),
				CONVERT_DELTA);
		assertArrayEquals(
				new double[]{0.5, 0.5, 0.5},
				ColorSpace.HWB.convertToRgb(new double[]{120.0, 0.6, 0.6}),
				CONVERT_DELTA);
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] hwb = ColorSpace.HWB.convertFromRgb(color.rgb());
			double[] back = ColorSpace.HWB.convertToRgb(hwb);
			assertArrayEquals(color.rgb(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.HWB.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.HWB.format(components, alpha);
		assertEquals(exp, s);
	}
}
