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

public class ColorSpaceLchTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.LCH.parseColor(null));
		assertNull(ColorSpace.LCH.parseColor("lch()"));
		assertNull(ColorSpace.LCH.parseColor("lch(50%)"));
		assertNull(ColorSpace.LCH.parseColor("lab(50% 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("lch(54.29% 106.8372 40.86deg)", new double[]{54.29, 106.8372, 40.86}, 1.0); // red
		testParseColor("lch(87.82% 113.3315 134.38deg)", new double[]{87.82, 113.3315, 134.38}, 1.0); // green
		testParseColor("lch(29.57% 131.202 301.36deg)", new double[]{29.57, 131.202, 301.36}, 1.0); // blue
		testParseColor("lch(97.61% 94.713 99.57deg)", new double[]{97.61, 94.713, 99.57}, 1.0); // yellow
		testParseColor("lch(90.67% 52.82 196.45deg)", new double[]{90.67, 52.82, 196.45}, 1.0); // cyan
		testParseColor("lch(60.17% 111.4 327.11deg)", new double[]{60.17, 111.4, 327.11}, 1.0); // magenta
		testParseColor("lch(53.39% 0 0deg)", new double[]{53.39, 0.0, 0.0}, 1.0); // gray
		testParseColor("lch(100% 0 0deg)", new double[]{100.0, 0.0, 0.0}, 1.0); // white
		testParseColor("lch(0% 0 0deg)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("lch(75.59% 83.769 70.82deg)", new double[]{75.59, 83.769, 70.82}, 1.0); // orange
		testParseColor("lch(29.69% 66.826 327.11deg)", new double[]{29.69, 66.826, 327.11}, 1.0); // purple
		testParseColor("lch(19.72% 71.818 310.91deg)", new double[]{19.72, 71.818, 310.91}, 1.0); // indigo
		testParseColor("lch(83.79% 24.724 8.75deg)", new double[]{83.79, 24.724, 8.75}, 1.0); // pink
		testParseColor("lch(38.15% 59.598 32.29deg)", new double[]{38.15, 59.598, 32.29}, 1.0); // brown
		testParseColor("lch(26.17% 62.4903 39.13deg)", new double[]{26.17, 62.4903, 39.13}, 1.0); // maroon
		testParseColor("lch(52.15% 56.8151 99.57deg)", new double[]{52.15, 56.8151, 99.57}, 1.0); // olive
		testParseColor("lch(47.99% 31.6851 196.45deg)", new double[]{47.99, 31.6851, 196.45}, 1.0); // teal
		testParseColor("lch(11.34% 78.7039 301.36deg)", new double[]{11.34, 78.7039, 301.36}, 1.0); // navy
		testParseColor("lch(77.7% 0 0deg)", new double[]{77.7, 0.0, 0.0}, 1.0); // silver
		testParseColor("lch(32.39% 61.2435 308.86deg)", new double[]{32.39, 61.2435, 308.86}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("lch(54.29, 106.8372, 40.86deg)", new double[]{54.29, 106.8372, 40.86}, 1.0); // comma separated
		testParseColor("lch(54.29% 106.8372 40.86deg)", new double[]{54.29, 106.8372, 40.86}, 1.0); // hue unit
		testParseColor("lch(54.29% 106.8372 40.86)", new double[]{54.29, 106.8372, 40.86}, 1.0); // no hue unit
		// 100% = 150 for c
		testParseColor("lch(54.29% 71.2248% 40.86deg)", new double[]{54.29, 106.8372, 40.86}, 1.0); // percentage c
	}

	@Test
	public void testParseColor_hueNormalization() {
		testParseColor("lch(54.29% 106.8372 400.86deg)", new double[]{54.29, 106.8372, 40.86}, 1.0); // positive wrap
		testParseColor("lch(54.29% 106.8372 -319.14deg)", new double[]{54.29, 106.8372, 40.86}, 1.0); // negative wrap
		testParseColor("lch(54.29% 106.8372 760.86deg)", new double[]{54.29, 106.8372, 40.86}, 1.0); // multiple wraps
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("lch(54.29% 106.8372 40.86deg / 0.5)", new double[]{54.29, 106.8372, 40.86}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("lch(120% 180 40deg)", new double[]{100.0, 180.0, 40.0}, 1.0);
		testParseColor("lch(-10% -20 40deg)", new double[]{0.0, 0.0, 0.0}, 1.0);
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "lch(0% 0 0deg)"); // black
		testFormat(new double[]{32.39, 61.2435, 308.86}, 1.0, "lch(32.39% 61.2435 308.86deg)"); // rebeccapurple
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.5, "lch(0% 0 0deg / 0.5)"); // alpha
	}

	@Test
	public void testFormat_powerlessHue() {
		// CSS Color 4: LCH hue is powerless when C <= 0.0015.
		assertEquals("lch(50% 0 0deg)", Color.from(ColorSpace.LCH, new double[]{50.0, 0.0015, 120.0}, 1.0).toString());
		assertEquals("lch(50% 0.0016 120deg)", Color.from(ColorSpace.LCH, new double[]{50.0, 0.0016, 120.0}, 1.0).toString());
	}

	@Test
	public void testConvertFromXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.LCH.convertFromXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testConvertToXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.LCH.convertToXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testConvertToXyz_unnormalizedHue() {
		assertArrayEquals(
				ColorSpace.LCH.convertToXyz(new double[]{54.29, 106.8372, 40.86}),
				ColorSpace.LCH.convertToXyz(new double[]{54.29, 106.8372, 400.86}),
				CONVERT_DELTA);
		assertArrayEquals(
				ColorSpace.LCH.convertToXyz(new double[]{54.29, 106.8372, 40.86}),
				ColorSpace.LCH.convertToXyz(new double[]{54.29, 106.8372, -319.14}),
				CONVERT_DELTA);
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] lch = ColorSpace.LCH.convertFromXyz(color.xyzD65());
			double[] back = ColorSpace.LCH.convertToXyz(lch);
			assertArrayEquals(color.xyzD65(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.LCH.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.LCH.format(components, alpha);
		assertEquals(exp, s);
	}
}
