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

public class ColorSpaceOklabTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.OKLAB.parseColor(null));
		assertNull(ColorSpace.OKLAB.parseColor("oklab()"));
		assertNull(ColorSpace.OKLAB.parseColor("oklab(62.8% 0.2248)"));
		assertNull(ColorSpace.OKLAB.parseColor("lab(50% 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("oklab(62.8% 0.2248 0.1258)", new double[]{0.628, 0.2248, 0.1258}, 1.0); // red
		testParseColor("oklab(86.64% -0.2339 0.1794)", new double[]{0.8664, -0.2339, 0.1794}, 1.0); // green
		testParseColor("oklab(45.2% -0.0324 -0.3116)", new double[]{0.452, -0.0324, -0.3116}, 1.0); // blue
		testParseColor("oklab(96.8% -0.0714 0.1985)", new double[]{0.968, -0.0714, 0.1985}, 1.0); // yellow
		testParseColor("oklab(90.54% -0.1495 -0.0395)", new double[]{0.9054, -0.1495, -0.0395}, 1.0); // cyan
		testParseColor("oklab(70.17% 0.2746 -0.1693)", new double[]{0.7017, 0.2746, -0.1693}, 1.0); // magenta
		testParseColor("oklab(59.82% 0 0)", new double[]{0.5982, 0.0, 0.0}, 1.0); // gray
		testParseColor("oklab(100% 0 0)", new double[]{1.0, 0.0, 0.0}, 1.0); // white
		testParseColor("oklab(0% 0 0)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("oklab(79.27% 0.0566 0.1613)", new double[]{0.7927, 0.0566, 0.1613}, 1.0); // orange
		testParseColor("oklab(42.09% 0.1647 -0.1015)", new double[]{0.4209, 0.1647, -0.1015}, 1.0); // purple
		testParseColor("oklab(33.9% 0.0942 -0.1526)", new double[]{0.339, 0.0942, -0.1526}, 1.0); // indigo
		testParseColor("oklab(86.77% 0.073 0.009)", new double[]{0.8677, 0.073, 0.009}, 1.0); // pink
		testParseColor("oklab(48.06% 0.144 0.0688)", new double[]{0.4806, 0.144, 0.0688}, 1.0); // brown
		testParseColor("oklab(37.67% 0.1349 0.0755)", new double[]{0.3767, 0.1349, 0.0755}, 1.0); // maroon
		testParseColor("oklab(58.07% -0.0428 0.1191)", new double[]{0.5807, -0.0428, 0.1191}, 1.0); // olive
		testParseColor("oklab(54.31% -0.0897 -0.0237)", new double[]{0.5431, -0.0897, -0.0237}, 1.0); // teal
		testParseColor("oklab(27.11% -0.0195 -0.1869)", new double[]{0.2711, -0.0195, -0.1869}, 1.0); // navy
		testParseColor("oklab(80.78% 0 0)", new double[]{0.8078, 0.0, 0.0}, 1.0); // silver
		testParseColor("oklab(44.03% 0.0882 -0.1339)", new double[]{0.4403, 0.0882, -0.1339}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("oklab(62.8%, 0.2248, 0.1258)", new double[]{0.628, 0.2248, 0.1258}, 1.0); // comma separated
		testParseColor("oklab(0.628 0.2248 0.1258)", new double[]{0.628, 0.2248, 0.1258}, 1.0); // nonPercentage L
		// 100% = 0.4 for a,b
		testParseColor("oklab(62.8% 56.2% 31.45%)", new double[]{0.628, 0.2248, 0.1258}, 1.0); // percentage a,b
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("oklab(62.8% 0.2248 0.1258 / 0.5)", new double[]{0.628, 0.2248, 0.1258}, 0.5);
	}

	@Test
	public void testParseColor_L_clamped() {
		testParseColor("oklab(120% 0.5 -0.5)", new double[]{1.0, 0.5, -0.5}, 1.0);
		testParseColor("oklab(-10% 0.5 -0.5)", new double[]{0.0, 0.5, -0.5}, 1.0);
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "oklab(0% 0 0)"); // black
		testFormat(new double[]{0.4403, 0.0882, -0.1339}, 1.0, "oklab(44.03% 0.0882 -0.1339)"); // rebeccapurple
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.5, "oklab(0% 0 0 / 0.5)"); // alpha
	}

	@Test
	public void testConvertFromXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.OKLAB.convertFromXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testConvertToXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.OKLAB.convertToXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] oklab = ColorSpace.OKLAB.convertFromXyz(color.xyzD65());
			double[] back = ColorSpace.OKLAB.convertToXyz(oklab);
			assertArrayEquals(color.xyzD65(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.OKLAB.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.OKLAB.format(components, alpha);
		assertEquals(exp, s);
	}
}
