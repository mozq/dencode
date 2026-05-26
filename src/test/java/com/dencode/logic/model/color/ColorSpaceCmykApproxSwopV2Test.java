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

public class ColorSpaceCmykApproxSwopV2Test {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).parseColor(null));
		assertNull(ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).parseColor("color(--swop-v2)"));
		assertNull(ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).parseColor("rgb(0 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("color(--swop-v2 0% 100% 100% 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0); // red
		testParseColor("color(--swop-v2 100% 0% 100% 0%)", new double[]{1.0, 0.0, 1.0, 0.0}, 1.0); // green
		testParseColor("color(--swop-v2 100% 100% 0% 0%)", new double[]{1.0, 1.0, 0.0, 0.0}, 1.0); // blue
		testParseColor("color(--swop-v2 0% 0% 100% 0%)", new double[]{0.0, 0.0, 1.0, 0.0}, 1.0); // yellow
		testParseColor("color(--swop-v2 100% 0% 0% 0%)", new double[]{1.0, 0.0, 0.0, 0.0}, 1.0); // cyan
		testParseColor("color(--swop-v2 0% 100% 0% 0%)", new double[]{0.0, 1.0, 0.0, 0.0}, 1.0); // magenta
		testParseColor("color(--swop-v2 0% 0% 0% 50%)", new double[]{0.0, 0.0, 0.0, 0.5}, 1.0); // gray
		testParseColor("color(--swop-v2 0% 0% 0% 0%)", new double[]{0.0, 0.0, 0.0, 0.0}, 1.0); // white
		testParseColor("color(--swop-v2 0% 0% 0% 100%)", new double[]{0.0, 0.0, 0.0, 1.0}, 1.0); // black
		testParseColor("color(--swop-v2 0% 35.294% 100% 0%)", new double[]{0.0, 0.35294, 1.0, 0.0}, 1.0); // orange
		testParseColor("color(--swop-v2 0% 100% 0% 49.804%)", new double[]{0.0, 1.0, 0.0, 0.49804}, 1.0); // purple
		testParseColor("color(--swop-v2 42.308% 100% 0% 49.02%)", new double[]{0.42308, 1.0, 0.0, 0.4902}, 1.0); // indigo
		testParseColor("color(--swop-v2 0% 24.706% 20.392% 0%)", new double[]{0.0, 0.24706, 0.20392, 0.0}, 1.0); // pink
		testParseColor("color(--swop-v2 0% 74.545% 74.545% 35.294%)", new double[]{0.0, 0.74545, 0.74545, 0.35294}, 1.0); // brown
		testParseColor("color(--swop-v2 0% 100% 100% 49.804%)", new double[]{0.0, 1.0, 1.0, 0.49804}, 1.0); // maroon
		testParseColor("color(--swop-v2 0% 0% 100% 49.804%)", new double[]{0.0, 0.0, 1.0, 0.49804}, 1.0); // olive
		testParseColor("color(--swop-v2 100% 0% 0% 49.804%)", new double[]{1.0, 0.0, 0.0, 0.49804}, 1.0); // teal
		testParseColor("color(--swop-v2 100% 100% 0% 49.804%)", new double[]{1.0, 1.0, 0.0, 0.49804}, 1.0); // navy
		testParseColor("color(--swop-v2 0% 0% 0% 24.706%)", new double[]{0.0, 0.0, 0.0, 0.24706}, 1.0); // silver
		testParseColor("color(--swop-v2 33.333% 66.667% 0% 40%)", new double[]{0.33333, 0.66667, 0.0, 0.4}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("color(--swop-v2 0% 100% 100% 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0);
		testParseColor("color(--swop-v2 0 1 1 0)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0);
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("color(--swop-v2 0% 100% 100% 0% / 50%)", new double[]{0.0, 1.0, 1.0, 0.0}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("color(--swop-v2 120% 130% 140% 150%)", new double[]{1.0, 1.0, 1.0, 1.0}, 1.0);
	}

	@Test
	public void testParseColor_negativeComponents_unsupported() {
		assertNull(ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).parseColor("color(--swop-v2 -10% 50% 100% 0%)"));
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 1.0, 1.0, 0.0}, 1.0, "color(--swop-v2 0% 100% 100% 0%)"); // red
		testFormat(new double[]{1.0, 0.0, 1.0, 0.0}, 1.0, "color(--swop-v2 100% 0% 100% 0%)"); // green
		testFormat(new double[]{1.0, 1.0, 0.0, 0.0}, 1.0, "color(--swop-v2 100% 100% 0% 0%)"); // blue
		testFormat(new double[]{0.0, 0.0, 1.0, 0.0}, 1.0, "color(--swop-v2 0% 0% 100% 0%)"); // yellow
		testFormat(new double[]{1.0, 0.0, 0.0, 0.0}, 1.0, "color(--swop-v2 100% 0% 0% 0%)"); // cyan
		testFormat(new double[]{0.0, 1.0, 0.0, 0.0}, 1.0, "color(--swop-v2 0% 100% 0% 0%)"); // magenta
		testFormat(new double[]{0.0, 0.0, 0.0, 0.5}, 1.0, "color(--swop-v2 0% 0% 0% 50%)"); // gray
		testFormat(new double[]{0.0, 0.0, 0.0, 0.0}, 1.0, "color(--swop-v2 0% 0% 0% 0%)"); // white
		testFormat(new double[]{0.0, 0.0, 0.0, 1.0}, 1.0, "color(--swop-v2 0% 0% 0% 100%)"); // black
		testFormat(new double[]{0.0, 0.35294, 1.0, 0.0}, 1.0, "color(--swop-v2 0% 35.29% 100% 0%)"); // orange
		testFormat(new double[]{0.0, 1.0, 0.0, 0.49804}, 1.0, "color(--swop-v2 0% 100% 0% 49.8%)"); // purple
		testFormat(new double[]{0.42308, 1.0, 0.0, 0.4902}, 1.0, "color(--swop-v2 42.31% 100% 0% 49.02%)"); // indigo
		testFormat(new double[]{0.0, 0.24706, 0.20392, 0.0}, 1.0, "color(--swop-v2 0% 24.71% 20.39% 0%)"); // pink
		testFormat(new double[]{0.0, 0.74545, 0.74545, 0.35294}, 1.0, "color(--swop-v2 0% 74.54% 74.54% 35.29%)"); // brown
		testFormat(new double[]{0.0, 1.0, 1.0, 0.49804}, 1.0, "color(--swop-v2 0% 100% 100% 49.8%)"); // maroon
		testFormat(new double[]{0.0, 0.0, 1.0, 0.49804}, 1.0, "color(--swop-v2 0% 0% 100% 49.8%)"); // olive
		testFormat(new double[]{1.0, 0.0, 0.0, 0.49804}, 1.0, "color(--swop-v2 100% 0% 0% 49.8%)"); // teal
		testFormat(new double[]{1.0, 1.0, 0.0, 0.49804}, 1.0, "color(--swop-v2 100% 100% 0% 49.8%)"); // navy
		testFormat(new double[]{0.0, 0.0, 0.0, 0.24706}, 1.0, "color(--swop-v2 0% 0% 0% 24.71%)"); // silver
		testFormat(new double[]{0.33333, 0.66667, 0.0, 0.4}, 1.0, "color(--swop-v2 33.33% 66.67% 0% 40%)"); // rebeccapurple
		testFormat(new double[]{0.5, 0.5, 0.5, 0.0}, 1.0, "color(--swop-v2 50% 50% 50% 0%)"); // gray_no_normalization
		testFormat(new double[]{0.0, 1.0, 1.0, 0.0}, 0.5, "color(--swop-v2 0% 100% 100% 0% / 0.5)"); // alpha
		assertEquals("color(--swop-v2 0% 50% 100% 100%)", Color.from(ColorSpace.of(ColorSpaceCmykApproxSwopV2.class), new double[]{-0.1, 0.5, 1.2, 1.5}, 1.0).toString()); // computed-value clamp
	}

	@Test
	public void testConvertFromRgb() {
		assertRoundtripFromRgb(new double[]{0.93234, 0.19399, 0.219});
		assertRoundtripFromRgb(new double[]{-0.32452, 0.66151, 0.35244});
		assertRoundtripFromRgb(new double[]{0.24007, 0.2495, 0.58576});
		assertRoundtripFromRgb(new double[]{1.03042, 0.95014, 0.11928});
		assertRoundtripFromRgb(new double[]{-0.46706, 0.68827, 0.93919});
		assertRoundtripFromRgb(new double[]{0.92912, 0.14908, 0.56172});
		assertRoundtripFromRgb(new double[]{0.21235, 0.2082, 0.21105});
	}

	@Test
	public void testConvertFromRgb_blackBranch() {
		assertRoundtripFromRgb(new double[]{0.21235, 0.2082, 0.21105});
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{0.93234, 0.19399, 0.219}, ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(new double[]{0.0, 1.0, 1.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{-0.32452, 0.66151, 0.35244}, ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(new double[]{1.0, 0.0, 1.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{0.24007, 0.2495, 0.58576}, ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(new double[]{1.0, 1.0, 0.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{1.03042, 0.95014, 0.11928}, ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(new double[]{0.0, 0.0, 1.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{-0.46706, 0.68827, 0.93919}, ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(new double[]{1.0, 0.0, 0.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{0.92912, 0.14908, 0.56172}, ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(new double[]{0.0, 1.0, 0.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{0.21235, 0.2082, 0.21105}, ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(new double[]{0.0, 0.0, 0.0, 1.0}), CONVERT_DELTA);
	}

	@Test
	public void testRoundtrip() {
		double[][] samples = {
				{0.0, 0.0, 0.0, 0.0},
				{1.0, 0.0, 0.0, 0.0},
				{0.0, 1.0, 0.0, 0.0},
				{0.0, 0.0, 1.0, 0.0},
				{0.0, 0.0, 0.0, 1.0},
				{0.25, 0.50, 0.75, 0.10},
				{0.70, 0.40, 0.10, 0.35}
		};

		for (double[] sample : samples) {
			double[] xyz = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToXyz(sample);
			double[] cmyk = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertFromXyz(xyz);
			double[] back = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToXyz(cmyk);
			assertArrayEquals(xyz, back, ROUNDTRIP_DELTA);
		}
	}

	private void assertRoundtripFromRgb(double[] rgb) {
		double[] cmyk = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertFromRgb(rgb);
		double[] back = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).convertToRgb(cmyk);
		assertArrayEquals(rgb, back, ROUNDTRIP_DELTA);
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class).format(components, alpha);
		assertEquals(exp, s);
	}
}
