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

public class ColorSpaceHslTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.HSL.parseColor(null));
		assertNull(ColorSpace.HSL.parseColor("hsl()"));
		assertNull(ColorSpace.HSL.parseColor("hsl(abc)"));
		assertNull(ColorSpace.HSL.parseColor("rgb(0 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("hsl(0deg 100% 50%)", new double[]{0.0, 1.0, 0.5}, 1.0); // red
		testParseColor("hsl(120deg 100% 50%)", new double[]{120.0, 1.0, 0.5}, 1.0); // green
		testParseColor("hsl(240deg 100% 50%)", new double[]{240.0, 1.0, 0.5}, 1.0); // blue
		testParseColor("hsl(60deg 100% 50%)", new double[]{60.0, 1.0, 0.5}, 1.0); // yellow
		testParseColor("hsl(180deg 100% 50%)", new double[]{180.0, 1.0, 0.5}, 1.0); // cyan
		testParseColor("hsl(300deg 100% 50%)", new double[]{300.0, 1.0, 0.5}, 1.0); // magenta
		testParseColor("hsl(0deg 0% 50%)", new double[]{0.0, 0.0, 0.5}, 1.0); // gray
		testParseColor("hsl(0deg 0% 100%)", new double[]{0.0, 0.0, 1.0}, 1.0); // white
		testParseColor("hsl(0deg 0% 0%)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("hsl(38.824deg 100% 50%)", new double[]{38.824, 1.0, 0.5}, 1.0); // orange
		testParseColor("hsl(300deg 100% 25.098%)", new double[]{300.0, 1.0, 0.25098}, 1.0); // purple
		testParseColor("hsl(274.615deg 100% 25.49%)", new double[]{274.615, 1.0, 0.2549}, 1.0); // indigo
		testParseColor("hsl(349.524deg 100% 87.647%)", new double[]{349.524, 1.0, 0.87647}, 1.0); // pink
		testParseColor("hsl(0deg 59.42% 40.588%)", new double[]{0.0, 0.5942, 0.40588}, 1.0); // brown
		testParseColor("hsl(0deg 100% 25.098%)", new double[]{0.0, 1.0, 0.25098}, 1.0); // maroon
		testParseColor("hsl(60deg 100% 25.098%)", new double[]{60.0, 1.0, 0.25098}, 1.0); // olive
		testParseColor("hsl(180deg 100% 25.098%)", new double[]{180.0, 1.0, 0.25098}, 1.0); // teal
		testParseColor("hsl(240deg 100% 25.098%)", new double[]{240.0, 1.0, 0.25098}, 1.0); // navy
		testParseColor("hsl(0deg 0% 75.294%)", new double[]{0.0, 0.0, 0.75294}, 1.0); // silver
		testParseColor("hsl(270deg 50% 40%)", new double[]{270.0, 0.5, 0.4}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("hsl(0deg 100% 50%)", new double[]{0.0, 1.0, 0.5}, 1.0); // hue unit
		testParseColor("hsl(0 100% 50%)", new double[]{0.0, 1.0, 0.5}, 1.0); // no hue unit
		testParseColor("hsl(0deg, 100%, 50%)", new double[]{0.0, 1.0, 0.5}, 1.0); // comma separated
		testParseColor("hsl(0deg 1 0.5)", new double[]{0.0, 1.0, 0.5}, 1.0); // ratios
	}

	@Test
	public void testParseColor_hueNormalization() {
		testParseColor("hsl(360deg 100% 50%)", new double[]{0.0, 1.0, 0.5}, 1.0); // positive wrap
		testParseColor("hsl(-120deg 100% 50%)", new double[]{240.0, 1.0, 0.5}, 1.0); // negative wrap
		testParseColor("hsl(720deg 100% 50%)", new double[]{0.0, 1.0, 0.5}, 1.0); // multiple wraps
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("hsl(0deg 100% 50% / 50%)", new double[]{0.0, 1.0, 0.5}, 0.5); // alpha slash
		testParseColor("hsla(0deg, 100%, 50%, 0.5)", new double[]{0.0, 1.0, 0.5}, 0.5); // alpha comma
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("hsl(0 150% 120%)", new double[]{0.0, 1.0, 1.0}, 1.0);
		testParseColor("hsl(0 -10% 20%)", new double[]{0.0, 0.0, 0.2}, 1.0);
	}

	@Test
	public void testParseColor_negativeLightness_unsupported() {
		assertNull(ColorSpace.HSL.parseColor("hsl(0 100% -20%)"));
	}

	@Test
	public void testConvertToRgb_unnormalizedHue() {
		// H=360 (= 0) and H=-360 (= 0) must both produce red
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{360.0, 1.0, 0.5}), CONVERT_DELTA);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{-360.0, 1.0, 0.5}), CONVERT_DELTA);
	}

	@Test
	public void testFormat_unnormalizedHue_normalized() {
		// Color created programmatically with hue=390 (= 30 after normalize)
		Color c = Color.from(ColorSpace.HSL, new double[]{390.0, 1.0, 0.5}, 1.0);
		assertEquals("hsl(30deg 100% 50%)", c.toString());

		// negative hue: -30 normalizes to 330
		Color c2 = Color.from(ColorSpace.HSL, new double[]{-30.0, 1.0, 0.5}, 1.0);
		assertEquals("hsl(330deg 100% 50%)", c2.toString());
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 1.0, 0.5}, 1.0, "hsl(0deg 100% 50%)"); // red
		testFormat(new double[]{120.0, 1.0, 0.5}, 1.0, "hsl(120deg 100% 50%)"); // green
		testFormat(new double[]{240.0, 1.0, 0.5}, 1.0, "hsl(240deg 100% 50%)"); // blue
		testFormat(new double[]{60.0, 1.0, 0.5}, 1.0, "hsl(60deg 100% 50%)"); // yellow
		testFormat(new double[]{180.0, 1.0, 0.5}, 1.0, "hsl(180deg 100% 50%)"); // cyan
		testFormat(new double[]{300.0, 1.0, 0.5}, 1.0, "hsl(300deg 100% 50%)"); // magenta
		testFormat(new double[]{0.0, 0.0, 0.5}, 1.0, "hsl(0deg 0% 50%)"); // gray
		testFormat(new double[]{0.0, 0.0, 1.0}, 1.0, "hsl(0deg 0% 100%)"); // white
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "hsl(0deg 0% 0%)"); // black
		testFormat(new double[]{38.824, 1.0, 0.5}, 1.0, "hsl(38.82deg 100% 50%)"); // orange
		testFormat(new double[]{300.0, 1.0, 0.25098}, 1.0, "hsl(300deg 100% 25.1%)"); // purple
		testFormat(new double[]{274.615, 1.0, 0.2549}, 1.0, "hsl(274.62deg 100% 25.49%)"); // indigo
		testFormat(new double[]{349.524, 1.0, 0.87647}, 1.0, "hsl(349.52deg 100% 87.65%)"); // pink
		testFormat(new double[]{0.0, 0.5942, 0.40588}, 1.0, "hsl(0deg 59.42% 40.59%)"); // brown
		testFormat(new double[]{0.0, 1.0, 0.25098}, 1.0, "hsl(0deg 100% 25.1%)"); // maroon
		testFormat(new double[]{60.0, 1.0, 0.25098}, 1.0, "hsl(60deg 100% 25.1%)"); // olive
		testFormat(new double[]{180.0, 1.0, 0.25098}, 1.0, "hsl(180deg 100% 25.1%)"); // teal
		testFormat(new double[]{240.0, 1.0, 0.25098}, 1.0, "hsl(240deg 100% 25.1%)"); // navy
		testFormat(new double[]{0.0, 0.0, 0.75294}, 1.0, "hsl(0deg 0% 75.29%)"); // silver
		testFormat(new double[]{270.0, 0.5, 0.4}, 1.0, "hsl(270deg 50% 40%)"); // rebeccapurple

		testFormat(new double[]{0.0, 1.0, 0.5}, 0.5, "hsl(0deg 100% 50% / 0.5)"); // alpha
	}

	@Test
	public void testConvertFromRgb() {
		assertArrayEquals(new double[]{0.0, 1.0, 0.5}, ColorSpace.HSL.convertFromRgb(new double[]{1.0, 0.0, 0.0}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{120.0, 1.0, 0.5}, ColorSpace.HSL.convertFromRgb(new double[]{0.0, 1.0, 0.0}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{240.0, 1.0, 0.5}, ColorSpace.HSL.convertFromRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{60.0, 1.0, 0.5}, ColorSpace.HSL.convertFromRgb(new double[]{1.0, 1.0, 0.0}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{180.0, 1.0, 0.5}, ColorSpace.HSL.convertFromRgb(new double[]{0.0, 1.0, 1.0}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{300.0, 1.0, 0.5}, ColorSpace.HSL.convertFromRgb(new double[]{1.0, 0.0, 1.0}), CONVERT_DELTA); // magenta

		double[] gray = ColorSpace.HSL.convertFromRgb(new double[]{0.5, 0.5, 0.5});
		assertEquals(0.0, gray[1], CONVERT_DELTA); // S=0
		assertEquals(0.5, gray[2], CONVERT_DELTA); // L=0.5

		double[] white = ColorSpace.HSL.convertFromRgb(new double[]{1.0, 1.0, 1.0});
		assertEquals(0.0, white[1], CONVERT_DELTA); // S=0
		assertEquals(1.0, white[2], CONVERT_DELTA); // L=1

		double[] black = ColorSpace.HSL.convertFromRgb(new double[]{0.0, 0.0, 0.0});
		assertEquals(0.0, black[1], CONVERT_DELTA); // S=0
		assertEquals(0.0, black[2], CONVERT_DELTA); // L=0

		assertArrayEquals(new double[]{165.0 / 255.0 * 60.0, 1.0, 0.5}, ColorSpace.HSL.convertFromRgb(new double[]{1.0, 165.0 / 255.0, 0.0}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{300.0, 1.0, 64.0 / 255.0}, ColorSpace.HSL.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{(4.0 + 75.0 / 130.0) * 60.0, 1.0, 65.0 / 255.0}, ColorSpace.HSL.convertFromRgb(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{(6.0 + (192.0 - 203.0) / 63.0) * 60.0, 1.0, 447.0 / 510.0}, ColorSpace.HSL.convertFromRgb(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{0.0, 123.0 / 207.0, 207.0 / 510.0}, ColorSpace.HSL.convertFromRgb(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{0.0, 1.0, 64.0 / 255.0}, ColorSpace.HSL.convertFromRgb(new double[]{128.0 / 255.0, 0.0, 0.0}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{60.0, 1.0, 64.0 / 255.0}, ColorSpace.HSL.convertFromRgb(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{180.0, 1.0, 64.0 / 255.0}, ColorSpace.HSL.convertFromRgb(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{240.0, 1.0, 64.0 / 255.0}, ColorSpace.HSL.convertFromRgb(new double[]{0.0, 0.0, 128.0 / 255.0}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{0.0, 0.0, 192.0 / 255.0}, ColorSpace.HSL.convertFromRgb(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{270.0, 0.5, 0.4}, ColorSpace.HSL.convertFromRgb(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{0.0, 1.0, 0.5}), CONVERT_DELTA); // red
		assertArrayEquals(new double[]{0.0, 1.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{120.0, 1.0, 0.5}), CONVERT_DELTA); // green
		assertArrayEquals(new double[]{0.0, 0.0, 1.0}, ColorSpace.HSL.convertToRgb(new double[]{240.0, 1.0, 0.5}), CONVERT_DELTA); // blue
		assertArrayEquals(new double[]{1.0, 1.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{60.0, 1.0, 0.5}), CONVERT_DELTA); // yellow
		assertArrayEquals(new double[]{0.0, 1.0, 1.0}, ColorSpace.HSL.convertToRgb(new double[]{180.0, 1.0, 0.5}), CONVERT_DELTA); // cyan
		assertArrayEquals(new double[]{1.0, 0.0, 1.0}, ColorSpace.HSL.convertToRgb(new double[]{300.0, 1.0, 0.5}), CONVERT_DELTA); // magenta
		assertArrayEquals(new double[]{0.5, 0.5, 0.5}, ColorSpace.HSL.convertToRgb(new double[]{0.0, 0.0, 0.5}), CONVERT_DELTA); // gray
		assertArrayEquals(new double[]{1.0, 1.0, 1.0}, ColorSpace.HSL.convertToRgb(new double[]{0.0, 0.0, 1.0}), CONVERT_DELTA); // white
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
		assertArrayEquals(new double[]{1.0, 165.0 / 255.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{38.824, 1.0, 0.5}), CONVERT_DELTA); // orange
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{300.0, 1.0, 0.25098}), CONVERT_DELTA); // purple
		assertArrayEquals(new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{274.615, 1.0, 0.2549}), CONVERT_DELTA); // indigo
		assertArrayEquals(new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{349.524, 1.0, 0.87647}), CONVERT_DELTA); // pink
		assertArrayEquals(new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{0.0, 0.5942, 0.40588}), CONVERT_DELTA); // brown
		assertArrayEquals(new double[]{128.0 / 255.0, 0.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{0.0, 1.0, 0.25098}), CONVERT_DELTA); // maroon
		assertArrayEquals(new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, ColorSpace.HSL.convertToRgb(new double[]{60.0, 1.0, 0.25098}), CONVERT_DELTA); // olive
		assertArrayEquals(new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{180.0, 1.0, 0.25098}), CONVERT_DELTA); // teal
		assertArrayEquals(new double[]{0.0, 0.0, 128.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{240.0, 1.0, 0.25098}), CONVERT_DELTA); // navy
		assertArrayEquals(new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{0.0, 0.0, 0.75294}), CONVERT_DELTA); // silver
		assertArrayEquals(new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, ColorSpace.HSL.convertToRgb(new double[]{270.0, 0.5, 0.4}), CONVERT_DELTA); // rebeccapurple
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] hsl = ColorSpace.HSL.convertFromRgb(color.rgb());
			double[] back = ColorSpace.HSL.convertToRgb(hsl);
			assertArrayEquals(color.rgb(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.HSL.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.HSL.format(components, alpha);
		assertEquals(exp, s);
	}
}
