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

public class ColorSpaceCmykApproxFogra52Test {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.of(ColorSpaceCmykApproxFogra52.class).parseColor(null));
		assertNull(ColorSpace.of(ColorSpaceCmykApproxFogra52.class).parseColor("color(--fogra52)"));
		assertNull(ColorSpace.of(ColorSpaceCmykApproxFogra52.class).parseColor("rgb(0 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("color(--fogra52 0% 100% 100% 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0); // red
		testParseColor("color(--fogra52 100% 0% 100% 0%)", new double[]{1.0, 0.0, 1.0, 0.0}, 1.0); // green
		testParseColor("color(--fogra52 100% 100% 0% 0%)", new double[]{1.0, 1.0, 0.0, 0.0}, 1.0); // blue
		testParseColor("color(--fogra52 0% 0% 100% 0%)", new double[]{0.0, 0.0, 1.0, 0.0}, 1.0); // yellow
		testParseColor("color(--fogra52 100% 0% 0% 0%)", new double[]{1.0, 0.0, 0.0, 0.0}, 1.0); // cyan
		testParseColor("color(--fogra52 0% 100% 0% 0%)", new double[]{0.0, 1.0, 0.0, 0.0}, 1.0); // magenta
		testParseColor("color(--fogra52 0% 0% 0% 50%)", new double[]{0.0, 0.0, 0.0, 0.5}, 1.0); // gray
		testParseColor("color(--fogra52 0% 0% 0% 0%)", new double[]{0.0, 0.0, 0.0, 0.0}, 1.0); // white
		testParseColor("color(--fogra52 0% 0% 0% 100%)", new double[]{0.0, 0.0, 0.0, 1.0}, 1.0); // black
		testParseColor("color(--fogra52 0% 35.294% 100% 0%)", new double[]{0.0, 0.35294, 1.0, 0.0}, 1.0); // orange
		testParseColor("color(--fogra52 0% 100% 0% 49.804%)", new double[]{0.0, 1.0, 0.0, 0.49804}, 1.0); // purple
		testParseColor("color(--fogra52 42.308% 100% 0% 49.02%)", new double[]{0.42308, 1.0, 0.0, 0.4902}, 1.0); // indigo
		testParseColor("color(--fogra52 0% 24.706% 20.392% 0%)", new double[]{0.0, 0.24706, 0.20392, 0.0}, 1.0); // pink
		testParseColor("color(--fogra52 0% 74.545% 74.545% 35.294%)", new double[]{0.0, 0.74545, 0.74545, 0.35294}, 1.0); // brown
		testParseColor("color(--fogra52 0% 100% 100% 49.804%)", new double[]{0.0, 1.0, 1.0, 0.49804}, 1.0); // maroon
		testParseColor("color(--fogra52 0% 0% 100% 49.804%)", new double[]{0.0, 0.0, 1.0, 0.49804}, 1.0); // olive
		testParseColor("color(--fogra52 100% 0% 0% 49.804%)", new double[]{1.0, 0.0, 0.0, 0.49804}, 1.0); // teal
		testParseColor("color(--fogra52 100% 100% 0% 49.804%)", new double[]{1.0, 1.0, 0.0, 0.49804}, 1.0); // navy
		testParseColor("color(--fogra52 0% 0% 0% 24.706%)", new double[]{0.0, 0.0, 0.0, 0.24706}, 1.0); // silver
		testParseColor("color(--fogra52 33.333% 66.667% 0% 40%)", new double[]{0.33333, 0.66667, 0.0, 0.4}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("color(--fogra52 0% 100% 100% 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0);
		testParseColor("color(--fogra52 0 1 1 0)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0);
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("color(--fogra52 0% 100% 100% 0% / 50%)", new double[]{0.0, 1.0, 1.0, 0.0}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("color(--fogra52 120% 130% 140% 150%)", new double[]{1.0, 1.0, 1.0, 1.0}, 1.0);
	}

	@Test
	public void testParseColor_negativeComponents_unsupported() {
		assertNull(ColorSpace.of(ColorSpaceCmykApproxFogra52.class).parseColor("color(--fogra52 -10% 50% 100% 0%)"));
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 1.0, 1.0, 0.0}, 1.0, "color(--fogra52 0% 100% 100% 0%)"); // red
		testFormat(new double[]{1.0, 0.0, 1.0, 0.0}, 1.0, "color(--fogra52 100% 0% 100% 0%)"); // green
		testFormat(new double[]{1.0, 1.0, 0.0, 0.0}, 1.0, "color(--fogra52 100% 100% 0% 0%)"); // blue
		testFormat(new double[]{0.0, 0.0, 1.0, 0.0}, 1.0, "color(--fogra52 0% 0% 100% 0%)"); // yellow
		testFormat(new double[]{1.0, 0.0, 0.0, 0.0}, 1.0, "color(--fogra52 100% 0% 0% 0%)"); // cyan
		testFormat(new double[]{0.0, 1.0, 0.0, 0.0}, 1.0, "color(--fogra52 0% 100% 0% 0%)"); // magenta
		testFormat(new double[]{0.0, 0.0, 0.0, 0.5}, 1.0, "color(--fogra52 0% 0% 0% 50%)"); // gray
		testFormat(new double[]{0.0, 0.0, 0.0, 0.0}, 1.0, "color(--fogra52 0% 0% 0% 0%)"); // white
		testFormat(new double[]{0.0, 0.0, 0.0, 1.0}, 1.0, "color(--fogra52 0% 0% 0% 100%)"); // black
		testFormat(new double[]{0.0, 0.35294, 1.0, 0.0}, 1.0, "color(--fogra52 0% 35.29% 100% 0%)"); // orange
		testFormat(new double[]{0.0, 1.0, 0.0, 0.49804}, 1.0, "color(--fogra52 0% 100% 0% 49.8%)"); // purple
		testFormat(new double[]{0.42308, 1.0, 0.0, 0.4902}, 1.0, "color(--fogra52 42.31% 100% 0% 49.02%)"); // indigo
		testFormat(new double[]{0.0, 0.24706, 0.20392, 0.0}, 1.0, "color(--fogra52 0% 24.71% 20.39% 0%)"); // pink
		testFormat(new double[]{0.0, 0.74545, 0.74545, 0.35294}, 1.0, "color(--fogra52 0% 74.54% 74.54% 35.29%)"); // brown
		testFormat(new double[]{0.0, 1.0, 1.0, 0.49804}, 1.0, "color(--fogra52 0% 100% 100% 49.8%)"); // maroon
		testFormat(new double[]{0.0, 0.0, 1.0, 0.49804}, 1.0, "color(--fogra52 0% 0% 100% 49.8%)"); // olive
		testFormat(new double[]{1.0, 0.0, 0.0, 0.49804}, 1.0, "color(--fogra52 100% 0% 0% 49.8%)"); // teal
		testFormat(new double[]{1.0, 1.0, 0.0, 0.49804}, 1.0, "color(--fogra52 100% 100% 0% 49.8%)"); // navy
		testFormat(new double[]{0.0, 0.0, 0.0, 0.24706}, 1.0, "color(--fogra52 0% 0% 0% 24.71%)"); // silver
		testFormat(new double[]{0.33333, 0.66667, 0.0, 0.4}, 1.0, "color(--fogra52 33.33% 66.67% 0% 40%)"); // rebeccapurple
		testFormat(new double[]{0.5, 0.5, 0.5, 0.0}, 1.0, "color(--fogra52 50% 50% 50% 0%)"); // gray_no_normalization
		testFormat(new double[]{0.0, 1.0, 1.0, 0.0}, 0.5, "color(--fogra52 0% 100% 100% 0% / 0.5)"); // alpha
		assertEquals("color(--fogra52 0% 50% 100% 100%)", Color.from(ColorSpace.of(ColorSpaceCmykApproxFogra52.class), new double[]{-0.1, 0.5, 1.2, 1.5}, 1.0).toString()); // computed-value clamp
	}

	@Test
	public void testConvertFromRgb() {
		assertRoundtripFromRgb(new double[]{1.0, 1.0, 1.0});
		assertRoundtripFromRgb(new double[]{0.82219, 0.82057, 0.81678});
		assertRoundtripFromRgb(new double[]{0.67396, 0.6706, 0.66269});
		assertRoundtripFromRgb(new double[]{0.4775, 0.47069, 0.45436});
		assertRoundtripFromRgb(new double[]{0.33825, 0.32715, 0.29944});
		assertRoundtripFromRgb(new double[]{1.00961, 0.97604, 0.81481});
		assertRoundtripFromRgb(new double[]{0.82933, 0.80214, 0.67062});
	}

	@Test
	public void testConvertFromRgb_blackBranch() {
		assertRoundtripFromRgb(new double[]{0.33825, 0.32715, 0.29944});
	}

	@Test
	public void testConvertToRgb() {
		assertArrayEquals(new double[]{0.90191, 0.33129, 0.33127}, ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(new double[]{0.0, 1.0, 1.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{0.02985, 0.6028, 0.39743}, ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(new double[]{1.0, 0.0, 1.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{0.36856, 0.37135, 0.56173}, ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(new double[]{1.0, 1.0, 0.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{1.01949, 0.93369, 0.22141}, ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(new double[]{0.0, 0.0, 1.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{-0.21433, 0.65773, 0.88707}, ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(new double[]{1.0, 0.0, 0.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{0.92147, 0.3367, 0.55151}, ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(new double[]{0.0, 1.0, 0.0, 0.0}), CONVERT_DELTA);
		assertArrayEquals(new double[]{0.33825, 0.32715, 0.29944}, ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(new double[]{0.0, 0.0, 0.0, 1.0}), CONVERT_DELTA);
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
			double[] xyz = ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToXyz(sample);
			double[] cmyk = ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertFromXyz(xyz);
			double[] back = ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToXyz(cmyk);
			assertArrayEquals(xyz, back, ROUNDTRIP_DELTA);
		}
	}

	private void assertRoundtripFromRgb(double[] rgb) {
		double[] cmyk = ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertFromRgb(rgb);
		double[] back = ColorSpace.of(ColorSpaceCmykApproxFogra52.class).convertToRgb(cmyk);
		assertArrayEquals(rgb, back, ROUNDTRIP_DELTA);
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.of(ColorSpaceCmykApproxFogra52.class).parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.of(ColorSpaceCmykApproxFogra52.class).format(components, alpha);
		assertEquals(exp, s);
	}
}
