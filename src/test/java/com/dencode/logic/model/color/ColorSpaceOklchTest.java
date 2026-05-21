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

public class ColorSpaceOklchTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.OKLCH.parseColor(null));
		assertNull(ColorSpace.OKLCH.parseColor("oklch()"));
		assertNull(ColorSpace.OKLCH.parseColor("oklch(62.8% 0.2576)"));
		assertNull(ColorSpace.OKLCH.parseColor("oklab(0% 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("oklch(62.8% 0.2576 29.23deg)", new double[]{0.628, 0.2576, 29.23}, 1.0); // red
		testParseColor("oklch(86.64% 0.2948 142.51deg)", new double[]{0.8664, 0.2948, 142.51}, 1.0); // green
		testParseColor("oklch(45.2% 0.3133 264.06deg)", new double[]{0.452, 0.3133, 264.06}, 1.0); // blue
		testParseColor("oklch(96.8% 0.2109 109.79deg)", new double[]{0.968, 0.2109, 109.79}, 1.0); // yellow
		testParseColor("oklch(90.54% 0.1546 194.81deg)", new double[]{0.9054, 0.1546, 194.81}, 1.0); // cyan
		testParseColor("oklch(70.17% 0.3225 328.35deg)", new double[]{0.7017, 0.3225, 328.35}, 1.0); // magenta
		testParseColor("oklch(59.82% 0 0deg)", new double[]{0.5982, 0.0, 0.0}, 1.0); // gray
		testParseColor("oklch(100% 0 0deg)", new double[]{1.0, 0.0, 0.0}, 1.0); // white
		testParseColor("oklch(0% 0 0deg)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("oklch(79.27% 0.1709 70.67deg)", new double[]{0.7927, 0.1709, 70.67}, 1.0); // orange
		testParseColor("oklch(42.09% 0.1935 328.35deg)", new double[]{0.4209, 0.1935, 328.35}, 1.0); // purple
		testParseColor("oklch(33.9% 0.1793 301.68deg)", new double[]{0.339, 0.1793, 301.68}, 1.0); // indigo
		testParseColor("oklch(86.77% 0.0735 7.01deg)", new double[]{0.8677, 0.0735, 7.01}, 1.0); // pink
		testParseColor("oklch(48.06% 0.1596 25.55deg)", new double[]{0.4806, 0.1596, 25.55}, 1.0); // brown
		testParseColor("oklch(37.67% 0.1545 29.23deg)", new double[]{0.3767, 0.1545, 29.23}, 1.0); // maroon
		testParseColor("oklch(58.07% 0.1265 109.79deg)", new double[]{0.5807, 0.1265, 109.79}, 1.0); // olive
		testParseColor("oklch(54.31% 0.0927 194.81deg)", new double[]{0.5431, 0.0927, 194.81}, 1.0); // teal
		testParseColor("oklch(27.11% 0.188 264.06deg)", new double[]{0.2711, 0.188, 264.06}, 1.0); // navy
		testParseColor("oklch(80.78% 0 0deg)", new double[]{0.8078, 0.0, 0.0}, 1.0); // silver
		testParseColor("oklch(44.03% 0.1604 303.36deg)", new double[]{0.4403, 0.1604, 303.36}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("oklch(62.8%, 0.2576, 29.23deg)", new double[]{0.628, 0.2576, 29.23}, 1.0); // comma separated
		// 100% = 0.4 for c
		testParseColor("oklch(62.8% 64.4% 29.23deg)", new double[]{0.628, 0.2576, 29.23}, 1.0); // percentage c
		testParseColor("oklch(62.8% 0.2576 29.23deg)", new double[]{0.628, 0.2576, 29.23}, 1.0); // hue deg
		testParseColor("oklch(62.8% 0.2576 29.23)", new double[]{0.628, 0.2576, 29.23}, 1.0); // no hue unit
	}

	@Test
	public void testParseColor_hueNormalization() {
		testParseColor("oklch(62.8% 0.2576 389.23deg)", new double[]{0.628, 0.2576, 29.23}, 1.0); // positive wrap
		testParseColor("oklch(62.8% 0.2576 -330.77deg)", new double[]{0.628, 0.2576, 29.23}, 1.0); // negative wrap
		testParseColor("oklch(62.8% 0.2576 749.23deg)", new double[]{0.628, 0.2576, 29.23}, 1.0); // multiple wraps
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("oklch(62.8% 0.2576 29.23deg / 0.5)", new double[]{0.628, 0.2576, 29.23}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("oklch(120% 0.5 40deg)", new double[]{1.0, 0.5, 40.0}, 1.0);
		testParseColor("oklch(-10% -0.2 40deg)", new double[]{0.0, 0.0, 0.0}, 1.0);
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "oklch(0% 0 0deg)"); // black
		testFormat(new double[]{0.4403, 0.1604, 303.36}, 1.0, "oklch(44.03% 0.1604 303.36deg)"); // rebeccapurple
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.5, "oklch(0% 0 0deg / 0.5)"); // alpha
	}

	@Test
	public void testFormat_powerlessHue() {
		// CSS Color 4: OkLCh hue is powerless when C <= 0.000004.
		assertEquals("oklch(50% 0 0deg)", Color.from(ColorSpace.OKLCH, new double[]{0.5, 0.000004, 120.0}, 1.0).toString());
		assertEquals("oklch(50% 0.0001 120deg)", Color.from(ColorSpace.OKLCH, new double[]{0.5, 0.00006, 120.0}, 1.0).toString());
	}

	@Test
	public void testConvertFromXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.OKLCH.convertFromXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testConvertToXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.OKLCH.convertToXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testConvertToXyz_unnormalizedHue() {
		assertArrayEquals(
				ColorSpace.OKLCH.convertToXyz(new double[]{0.628, 0.2576, 29.23}),
				ColorSpace.OKLCH.convertToXyz(new double[]{0.628, 0.2576, 389.23}),
				CONVERT_DELTA);
		assertArrayEquals(
				ColorSpace.OKLCH.convertToXyz(new double[]{0.628, 0.2576, 29.23}),
				ColorSpace.OKLCH.convertToXyz(new double[]{0.628, 0.2576, -330.77}),
				CONVERT_DELTA);
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] oklch = ColorSpace.OKLCH.convertFromXyz(color.xyzD65());
			double[] back = ColorSpace.OKLCH.convertToXyz(oklch);
			assertArrayEquals(color.xyzD65(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.OKLCH.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.OKLCH.format(components, alpha);
		assertEquals(exp, s);
	}
}
