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

public class ColorSpaceXyzTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;
	private static final double CONVERT_RGB_DELTA = 1e-4;
	private static final double TRANSFER_FUNCTION_DELTA = 1e-12;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.XYZ.parseColor(null));
		assertNull(ColorSpace.XYZ.parseColor("color(xyz)"));
		assertNull(ColorSpace.XYZ.parseColor("rgb(0 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("color(xyz 0.4124 0.2126 0.0193)",  new double[]{0.4124, 0.2126, 0.0193}, 1.0); // red
		testParseColor("color(xyz 0.3576 0.7152 0.1192)", new double[]{0.3576, 0.7152, 0.1192}, 1.0); // green
		testParseColor("color(xyz 0.1805 0.0722 0.9505)", new double[]{0.1805, 0.0722, 0.9505}, 1.0); // blue
		testParseColor("color(xyz 0.77 0.9278 0.1385)", new double[]{0.77, 0.9278, 0.1385}, 1.0); // yellow
		testParseColor("color(xyz 0.5381 0.7874 1.0697)", new double[]{0.5381, 0.7874, 1.0697}, 1.0); // cyan
		testParseColor("color(xyz 0.5929 0.2848 0.9699)", new double[]{0.5929, 0.2848, 0.9699}, 1.0); // magenta
		testParseColor("color(xyz 0.2034 0.214 0.2331)", new double[]{0.2034, 0.214, 0.2331}, 1.0); // gray
		testParseColor("color(xyz 0.9505 1 1.0891)", new double[]{0.9505, 1.0, 1.0891}, 1.0); // white
		testParseColor("color(xyz 0 0 0)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("color(xyz 0.5469 0.4817 0.0642)", new double[]{0.5469, 0.4817, 0.0642}, 1.0); // orange
		testParseColor("color(xyz 0.128 0.0615 0.2094)", new double[]{0.128, 0.0615, 0.2094}, 1.0); // purple
		testParseColor("color(xyz 0.0693 0.0311 0.2135)", new double[]{0.0693, 0.0311, 0.2135}, 1.0); // indigo
		testParseColor("color(xyz 0.7087 0.6327 0.6498)", new double[]{0.7087, 0.6327, 0.6498}, 1.0); // pink
		testParseColor("color(xyz 0.1676 0.0982 0.032)", new double[]{0.1676, 0.0982, 0.032}, 1.0); // brown
		testParseColor("color(xyz 0.08902 0.0459 0.00417)", new double[]{0.08902, 0.0459, 0.00417}, 1.0); // maroon
		testParseColor("color(xyz 0.16621 0.20028 0.0299)", new double[]{0.16621, 0.20028, 0.0299}, 1.0); // olive
		testParseColor("color(xyz 0.11615 0.16996 0.23091)", new double[]{0.11615, 0.16996, 0.23091}, 1.0); // teal
		testParseColor("color(xyz 0.03896 0.01558 0.20518)", new double[]{0.03896, 0.01558, 0.20518}, 1.0); // navy
		testParseColor("color(xyz 0.501 0.52712 0.57406)", new double[]{0.501, 0.52712, 0.57406}, 1.0); // silver
		testParseColor("color(xyz 0.12412 0.07493 0.3093)", new double[]{0.12412, 0.07493, 0.3093}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("color(xyz-d65 0.4124 0.2126 0.0193)", new double[]{0.4124, 0.2126, 0.0193}, 1.0); // d65 alias
		testParseColor("color(xyz 41.24% 21.26% 1.93%)", new double[]{0.4124, 0.2126, 0.0193}, 1.0); // percentage
		testParseColor("color(xyz-d65 41.24% 21.26% 1.93%)", new double[]{0.4124, 0.2126, 0.0193}, 1.0); // d65 alias percentage
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("color(xyz 0.4124 0.2126 0.0193 / 0.5)", new double[]{0.4124, 0.2126, 0.0193}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_preserved() {
		testParseColor("color(xyz 1.2 -0.1 1.3)", new double[]{1.2, -0.1, 1.3}, 1.0);
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "color(xyz-d65 0 0 0)"); // black
		testFormat(new double[]{0.12412, 0.07493, 0.3093}, 1.0, "color(xyz-d65 0.12412 0.07493 0.3093)"); // rebeccapurple
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.5, "color(xyz-d65 0 0 0 / 0.5)"); // alpha
	}

	@Test
	public void testConvertFromXyz() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			assertArrayEquals(color.xyzD65(), ColorSpace.XYZ.convertFromXyz(color.xyzD65()), CONVERT_DELTA, color.name());
		}
	}

	@Test
	public void testConvertToXyz() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			assertArrayEquals(color.xyzD65(), ColorSpace.XYZ.convertToXyz(color.xyzD65()), CONVERT_DELTA, color.name());
		}
	}

	@Test
	public void testConvertFromRgb() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			assertArrayEquals(
					color.xyzD65(),
					ColorSpace.XYZ.convertFromRgb(color.rgb()),
					CONVERT_DELTA,
					color.name());
		}
	}

	@Test
	public void testConvertFromRgb_extendedNegativeSrgb() {
		// CSS Color 4 lin_sRGB(): negative extended-gamut sRGB values keep their sign.
		assertArrayEquals(
				new double[]{-0.08826859699926537, -0.0455134953277462, -0.004137590484340559},
				ColorSpace.XYZ.convertFromRgb(new double[]{-0.5, 0.0, 0.0}),
				CONVERT_DELTA);
	}

	@Test
	public void testConvertFromRgb_srgbTransferThresholdUsesLinearBranch() {
		// CSS Color 4 lin_sRGB(): abs(val) <= 0.04045 uses val / 12.92.
		assertArrayEquals(
				new double[]{0.0012911151571445862, 0.0006657312529026772, 0.00006052102299115241},
				ColorSpace.XYZ.convertFromRgb(new double[]{0.04045, 0.0, 0.0}),
				TRANSFER_FUNCTION_DELTA);
	}

	@Test
	public void testConvertToRgb() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] rgb = ColorSpace.XYZ.convertToRgb(color.xyzD65());
			assertArrayEquals(color.rgb(), rgb, CONVERT_RGB_DELTA, color.name());
		}
	}

	@Test
	public void testConvertToRgb_extendedSrgbPreserved() {
		// CSS Color 4 gam_sRGB(): XYZ to sRGB conversion must not clamp out-of-gamut components.
		assertArrayEquals(
				new double[]{1.2, -0.2, 0.5},
				ColorSpace.XYZ.convertToRgb(new double[]{0.6523223705715724, 0.314315437950128, 0.22882878008058644}),
				CONVERT_RGB_DELTA);
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] xyz = ColorSpace.XYZ.convertFromXyz(color.xyzD65());
			double[] back = ColorSpace.XYZ.convertToXyz(xyz);
			assertArrayEquals(color.xyzD65(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.XYZ.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.XYZ.format(components, alpha);
		assertEquals(exp, s);
	}
}
