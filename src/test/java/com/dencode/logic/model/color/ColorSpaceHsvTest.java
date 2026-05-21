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

public class ColorSpaceHsvTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.HSV.parseColor(null));
		assertNull(ColorSpace.HSV.parseColor("hsv()"));
		assertNull(ColorSpace.HSV.parseColor("hsl(0 100% 50%)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("hsv(0deg 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // red
		testParseColor("hsv(120deg 100% 100%)", new double[]{120.0, 1.0, 1.0}, 1.0); // green
		testParseColor("hsv(240deg 100% 100%)", new double[]{240.0, 1.0, 1.0}, 1.0); // blue
		testParseColor("hsv(60deg 100% 100%)", new double[]{60.0, 1.0, 1.0}, 1.0); // yellow
		testParseColor("hsv(180deg 100% 100%)", new double[]{180.0, 1.0, 1.0}, 1.0); // cyan
		testParseColor("hsv(300deg 100% 100%)", new double[]{300.0, 1.0, 1.0}, 1.0); // magenta
		testParseColor("hsv(0deg 0% 50%)", new double[]{0.0, 0.0, 0.5}, 1.0); // gray
		testParseColor("hsv(0deg 0% 100%)", new double[]{0.0, 0.0, 1.0}, 1.0); // white
		testParseColor("hsv(0deg 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("hsv(38.824deg 100% 100%)", new double[]{38.824, 1.0, 1.0}, 1.0); // orange
		testParseColor("hsv(300deg 100% 50.196%)", new double[]{300.0, 1.0, 0.50196}, 1.0); // purple
		testParseColor("hsv(274.615deg 100% 50.98%)", new double[]{274.615, 1.0, 0.5098}, 1.0); // indigo
		testParseColor("hsv(349.524deg 24.706% 100%)", new double[]{349.524, 0.24706, 1.0}, 1.0); // pink
		testParseColor("hsv(0deg 74.545% 64.706%)", new double[]{0.0, 0.74545, 0.64706}, 1.0); // brown
		testParseColor("hsv(0deg 100% 50.196%)", new double[]{0.0, 1.0, 0.50196}, 1.0); // maroon
		testParseColor("hsv(60deg 100% 50.196%)", new double[]{60.0, 1.0, 0.50196}, 1.0); // olive
		testParseColor("hsv(180deg 100% 50.196%)", new double[]{180.0, 1.0, 0.50196}, 1.0); // teal
		testParseColor("hsv(240deg 100% 50.196%)", new double[]{240.0, 1.0, 0.50196}, 1.0); // navy
		testParseColor("hsv(0deg 0% 75.294%)", new double[]{0.0, 0.0, 0.75294}, 1.0); // silver
		testParseColor("hsv(270deg 66.667% 60%)", new double[]{270.0, 0.66667, 0.6}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("hsv(0deg 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // hue unit
		testParseColor("hsv(0 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // no hue unit
		testParseColor("hsv(0deg, 100%, 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // comma separated
		testParseColor("hsv(0deg 1 1)", new double[]{0.0, 1.0, 1.0}, 1.0); // ratios
		testParseColor("hsb(0deg 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // hsb alias
		testParseColor("hsb(0deg, 100%, 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // hsb alias comma separated
	}

	@Test
	public void testParseColor_hueNormalization() {
		testParseColor("hsv(360deg 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // positive wrap
		testParseColor("hsv(720deg 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // multiple wraps
		testParseColor("hsb(360deg 100% 100%)", new double[]{0.0, 1.0, 1.0}, 1.0); // hsb alias wrap
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("hsv(0deg 100% 100% / 0.5)", new double[]{0.0, 1.0, 1.0}, 0.5); // alpha slash
		testParseColor("hsva(0deg, 100%, 100%, 0.5)", new double[]{0.0, 1.0, 1.0}, 0.5); // alpha comma

		testParseColor("hsb(0deg 100% 100% / 0.5)", new double[]{0.0, 1.0, 1.0}, 0.5); // hsb alias, alpha slash
		testParseColor("hsba(0deg, 100%, 100%, 0.5)", new double[]{0.0, 1.0, 1.0}, 0.5); // hsba alias, alpha comma
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("hsv(0deg 150% 120%)", new double[]{0.0, 1.0, 1.0}, 1.0);
	}

	@Test
	public void testParseColor_negativeComponents_unsupported() {
		assertNull(ColorSpace.HSV.parseColor("hsv(-120deg 100% 100%)"));
		assertNull(ColorSpace.HSV.parseColor("hsv(0deg -10% 100%)"));
		assertNull(ColorSpace.HSV.parseColor("hsv(0deg 100% -20%)"));
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 1.0, 1.0}, 1.0, "hsv(0deg 100% 100%)"); // red
		testFormat(new double[]{120.0, 1.0, 1.0}, 1.0, "hsv(120deg 100% 100%)"); // green
		testFormat(new double[]{240.0, 1.0, 1.0}, 1.0, "hsv(240deg 100% 100%)"); // blue
		testFormat(new double[]{60.0, 1.0, 1.0}, 1.0, "hsv(60deg 100% 100%)"); // yellow
		testFormat(new double[]{180.0, 1.0, 1.0}, 1.0, "hsv(180deg 100% 100%)"); // cyan
		testFormat(new double[]{300.0, 1.0, 1.0}, 1.0, "hsv(300deg 100% 100%)"); // magenta
		testFormat(new double[]{0.0, 0.0, 0.5}, 1.0, "hsv(0deg 0% 50%)"); // gray
		testFormat(new double[]{0.0, 0.0, 1.0}, 1.0, "hsv(0deg 0% 100%)"); // white
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "hsv(0deg 0% 0%)"); // black
		testFormat(new double[]{38.824, 1.0, 1.0}, 1.0, "hsv(38.82deg 100% 100%)"); // orange
		testFormat(new double[]{300.0, 1.0, 0.50196}, 1.0, "hsv(300deg 100% 50.2%)"); // purple
		testFormat(new double[]{274.615, 1.0, 0.5098}, 1.0, "hsv(274.62deg 100% 50.98%)"); // indigo
		testFormat(new double[]{349.524, 0.24706, 1.0}, 1.0, "hsv(349.52deg 24.71% 100%)"); // pink
		testFormat(new double[]{0.0, 0.74545, 0.64706}, 1.0, "hsv(0deg 74.54% 64.71%)"); // brown
		testFormat(new double[]{0.0, 1.0, 0.50196}, 1.0, "hsv(0deg 100% 50.2%)"); // maroon
		testFormat(new double[]{60.0, 1.0, 0.50196}, 1.0, "hsv(60deg 100% 50.2%)"); // olive
		testFormat(new double[]{180.0, 1.0, 0.50196}, 1.0, "hsv(180deg 100% 50.2%)"); // teal
		testFormat(new double[]{240.0, 1.0, 0.50196}, 1.0, "hsv(240deg 100% 50.2%)"); // navy
		testFormat(new double[]{0.0, 0.0, 0.75294}, 1.0, "hsv(0deg 0% 75.29%)"); // silver
		testFormat(new double[]{270.0, 0.66667, 0.6}, 1.0, "hsv(270deg 66.67% 60%)"); // rebeccapurple

		testFormat(new double[]{0.0, 1.0, 1.0}, 0.5, "hsv(0deg 100% 100% / 0.5)"); // alpha
		assertEquals("hsv(300deg 100% 100%)", Color.from(ColorSpace.HSV, new double[]{-60.0, 1.0, 1.0}, 1.0).toString()); // normalized hue
	}

	@Test
	public void testConvertFromRgb() {
		assertArrayEquals(new double[]{0.0, 1.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{120.0, 1.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{240.0, 1.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{60.0, 1.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{1.0, 1.0, 0.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{180.0, 1.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{0.0, 1.0, 1.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{300.0, 1.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{1.0, 0.0, 1.0}), CONVERT_DELTA); // magenta

		double[] gray = ColorSpace.HSV.convertFromRgb(new double[]{0.5, 0.5, 0.5});
		assertEquals(0.0, gray[1], CONVERT_DELTA); // S=0
		assertEquals(0.5, gray[2], CONVERT_DELTA); // V=0.5

		double[] white = ColorSpace.HSV.convertFromRgb(new double[]{1.0, 1.0, 1.0});
		assertEquals(0.0, white[1], CONVERT_DELTA); // S=0
		assertEquals(1.0, white[2], CONVERT_DELTA); // V=1

		double[] black = ColorSpace.HSV.convertFromRgb(new double[]{0.0, 0.0, 0.0});
		assertEquals(0.0, black[1], CONVERT_DELTA); // S=0
		assertEquals(0.0, black[2], CONVERT_DELTA); // V=0

		assertArrayEquals(new double[]{165.0 / 255.0 * 60.0, 1.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{1.0, 165.0 / 255.0, 0.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{300.0, 1.0, 128.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{(4.0 + 75.0 / 130.0) * 60.0, 1.0, 130.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{(6.0 + (192.0 - 203.0) / 63.0) * 60.0, 63.0 / 255.0, 1.0}, ColorSpace.HSV.convertFromRgb(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{0.0, 123.0 / 165.0, 165.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{0.0, 1.0, 128.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 0.0}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{60.0, 1.0, 128.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{180.0, 1.0, 128.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{240.0, 1.0, 128.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{0.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{0.0, 0.0, 192.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{270.0, 102.0 / 153.0, 153.0 / 255.0}, ColorSpace.HSV.convertFromRgb(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.HSV.convertToRgb(new double[]{0.0, 1.0, 1.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{0.0, 1.0, 0.0}, ColorSpace.HSV.convertToRgb(new double[]{120.0, 1.0, 1.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{0.0, 0.0, 1.0}, ColorSpace.HSV.convertToRgb(new double[]{240.0, 1.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{1.0, 1.0, 0.0}, ColorSpace.HSV.convertToRgb(new double[]{60.0, 1.0, 1.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{0.0, 1.0, 1.0}, ColorSpace.HSV.convertToRgb(new double[]{180.0, 1.0, 1.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{1.0, 0.0, 1.0}, ColorSpace.HSV.convertToRgb(new double[]{300.0, 1.0, 1.0}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.5, 0.5, 0.5}, ColorSpace.HSV.convertToRgb(new double[]{0.0, 0.0, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{1.0, 1.0, 1.0}, ColorSpace.HSV.convertToRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.HSV.convertToRgb(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{1.0, 165.0 / 255.0, 0.0}, ColorSpace.HSV.convertToRgb(new double[]{38.824, 1.0, 1.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{300.0, 1.0, 0.50196}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{274.615, 1.0, 0.5098}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{349.524, 0.24706, 1.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{0.0, 0.74545, 0.64706}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 0.0}, ColorSpace.HSV.convertToRgb(new double[]{0.0, 1.0, 0.50196}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, ColorSpace.HSV.convertToRgb(new double[]{60.0, 1.0, 0.50196}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{180.0, 1.0, 0.50196}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{0.0, 0.0, 128.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{240.0, 1.0, 0.50196}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{0.0, 0.0, 0.75294}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, ColorSpace.HSV.convertToRgb(new double[]{270.0, 0.66667, 0.6}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] hsv = ColorSpace.HSV.convertFromRgb(color.rgb());
			double[] back = ColorSpace.HSV.convertToRgb(hsv);
			assertArrayEquals(color.rgb(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.HSV.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.HSV.format(components, alpha);
		assertEquals(exp, s);
	}
}
