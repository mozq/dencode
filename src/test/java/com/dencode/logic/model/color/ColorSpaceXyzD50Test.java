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

public class ColorSpaceXyzD50Test {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;
	private static final double CONVERT_RGB_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.XYZ_D50.parseColor(null));
		assertNull(ColorSpace.XYZ_D50.parseColor("color(xyz-d50)"));
		assertNull(ColorSpace.XYZ_D50.parseColor("rgb(0 0 0)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("color(xyz-d50 0.43607 0.22249 0.01392)", new double[]{0.43607, 0.22249, 0.01392}, 1.0); // red
		testParseColor("color(xyz-d50 0.38515 0.71689 0.09708)", new double[]{0.38515, 0.71689, 0.09708}, 1.0); // green
		testParseColor("color(xyz-d50 0.14308 0.06062 0.7141)", new double[]{0.14308, 0.06062, 0.7141}, 1.0); // blue
		testParseColor("color(xyz-d50 0.82122 0.93938 0.11101)", new double[]{0.82122, 0.93938, 0.11101}, 1.0); // yellow
		testParseColor("color(xyz-d50 0.52823 0.77751 0.81118)", new double[]{0.52823, 0.77751, 0.81118}, 1.0); // cyan
		testParseColor("color(xyz-d50 0.57914 0.28311 0.72802)", new double[]{0.57914, 0.28311, 0.72802}, 1.0); // magenta
		testParseColor("color(xyz-d50 0.2064 0.21404 0.17661)", new double[]{0.2064, 0.21404, 0.17661}, 1.0); // gray
		testParseColor("color(xyz-d50 0.9643 1 0.8251)", new double[]{0.9643, 1.0, 0.8251}, 1.0); // white
		testParseColor("color(xyz-d50 0 0 0)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("color(xyz-d50 0.58098 0.49223 0.05045)", new double[]{0.58098, 0.49223, 0.05045}, 1.0); // orange
		testParseColor("color(xyz-d50 0.12501 0.06111 0.15715)", new double[]{0.12501, 0.06111, 0.15715}, 1.0); // purple
		testParseColor("color(xyz-d50 0.06262 0.02919 0.16039)", new double[]{0.06262, 0.02919, 0.16039}, 1.0); // indigo
		testParseColor("color(xyz-d50 0.72453 0.63658 0.49156)", new double[]{0.72453, 0.63658, 0.49156}, 1.0); // pink
		testParseColor("color(xyz-d50 0.17631 0.10172 0.02402)", new double[]{0.17631, 0.10172, 0.02402}, 1.0); // brown
		testParseColor("color(xyz-d50 0.09413 0.04803 0.00301)", new double[]{0.09413, 0.04803, 0.00301}, 1.0); // maroon
		testParseColor("color(xyz-d50 0.17727 0.20278 0.02396)", new double[]{0.17727, 0.20278, 0.02396}, 1.0); // olive
		testParseColor("color(xyz-d50 0.11402 0.16783 0.1751)", new double[]{0.11402, 0.16783, 0.1751}, 1.0); // teal
		testParseColor("color(xyz-d50 0.03088 0.01309 0.15415)", new double[]{0.03088, 0.01309, 0.15415}, 1.0); // navy
		testParseColor("color(xyz-d50 0.50829 0.52712 0.43493)", new double[]{0.50829, 0.52712, 0.43493}, 1.0); // silver
		testParseColor("color(xyz-d50 0.11627 0.0726 0.23254)", new double[]{0.11627, 0.0726, 0.23254}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("color(xyz-d50 43.607% 22.249% 1.392%)", new double[]{0.43607, 0.22249, 0.01392}, 1.0); // percentage
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("color(xyz-d50 0.43607 0.22249 0.01392 / 0.5)", new double[]{0.43607, 0.22249, 0.01392}, 0.5);
	}

	@Test
	public void testParseColor_outOfGamut_preserved() {
		testParseColor("color(xyz-d50 1.2 -0.1 1.3)", new double[]{1.2, -0.1, 1.3}, 1.0);
	}

	@Test
	public void testParseColor_only_d50_accepted() {
		// xyz (D65) should NOT be accepted by XYZ_D50
		assertNull(ColorSpace.XYZ_D50.parseColor("color(xyz 0.4124 0.2126 0.0193)"));
		assertNull(ColorSpace.XYZ_D50.parseColor("color(xyz-d65 0.4124 0.2126 0.0193)"));
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "color(xyz-d50 0 0 0)"); // black
		testFormat(new double[]{0.11627, 0.0726, 0.23254}, 1.0, "color(xyz-d50 0.11627 0.0726 0.23254)"); // rebeccapurple
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.5, "color(xyz-d50 0 0 0 / 0.5)"); // alpha
	}

	@Test
	public void testConvertFromXyz() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			assertArrayEquals(
					color.xyzD50(),
					ColorSpace.XYZ_D50.convertFromXyz(color.xyzD65()),
					CONVERT_DELTA,
					color.name());
		}
	}

	@Test
	public void testConvertToXyz() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			assertArrayEquals(
					color.xyzD65(),
					ColorSpace.XYZ_D50.convertToXyz(color.xyzD50()),
					CONVERT_DELTA,
					color.name());
		}
	}

	@Test
	public void testConvertFromRgb() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			assertArrayEquals(
					color.xyzD50(),
					ColorSpace.XYZ_D50.convertFromRgb(color.rgb()),
					CONVERT_DELTA,
					color.name());
		}
	}

	@Test
	public void testConvertToRgb() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] rgb = ColorSpace.XYZ_D50.convertToRgb(color.xyzD50());
			assertArrayEquals(color.rgb(), rgb, CONVERT_RGB_DELTA, color.name());
		}
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] xyzD50 = ColorSpace.XYZ_D50.convertFromXyz(color.xyzD65());
			double[] back = ColorSpace.XYZ_D50.convertToXyz(xyzD50);
			assertArrayEquals(color.xyzD65(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.XYZ_D50.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.XYZ_D50.format(components, alpha);
		assertEquals(exp, s);
	}
}
