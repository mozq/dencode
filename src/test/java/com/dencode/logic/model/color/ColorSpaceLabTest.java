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

public class ColorSpaceLabTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.LAB.parseColor(null));
		assertNull(ColorSpace.LAB.parseColor("lab()"));
		assertNull(ColorSpace.LAB.parseColor("lab(50%)"));
		assertNull(ColorSpace.LAB.parseColor("hsl(0 100% 50%)"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("lab(54.29% 80.8049 69.891)", new double[]{54.29, 80.8049, 69.891}, 1.0); // red
		testParseColor("lab(87.82% -79.2711 80.9946)", new double[]{87.82, -79.2711, 80.9946}, 1.0); // green
		testParseColor("lab(29.57% 68.2874 -112.0297)", new double[]{29.57, 68.2874, -112.0297}, 1.0); // blue
		testParseColor("lab(97.61% -15.7498 93.3936)", new double[]{97.61, -15.7498, 93.3936}, 1.0); // yellow
		testParseColor("lab(90.67% -50.6565 -14.9617)", new double[]{90.67, -50.6565, -14.9617}, 1.0); // cyan
		testParseColor("lab(60.17% 93.5396 -60.5008)", new double[]{60.17, 93.5396, -60.5008}, 1.0); // magenta
		testParseColor("lab(53.39% 0 0)", new double[]{53.39, 0.0, 0.0}, 1.0); // gray
		testParseColor("lab(100% 0 0)", new double[]{100.0, 0.0, 0.0}, 1.0); // white
		testParseColor("lab(0% 0 0)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("lab(75.59% 27.5162 79.1208)", new double[]{75.59, 27.5162, 79.1208}, 1.0); // orange
		testParseColor("lab(29.69% 56.1117 -36.2927)", new double[]{29.69, 56.1117, -36.2927}, 1.0); // purple
		testParseColor("lab(19.72% 47.029 -54.2775)", new double[]{19.72, 47.029, -54.2775}, 1.0); // indigo
		testParseColor("lab(83.79% 24.4368 3.7594)", new double[]{83.79, 24.4368, 3.7594}, 1.0); // pink
		testParseColor("lab(38.15% 50.3836 31.8348)", new double[]{38.15, 50.3836, 31.8348}, 1.0); // brown
		testParseColor("lab(26.17% 48.4725 39.4393)", new double[]{26.17, 48.4725, 39.4393}, 1.0); // maroon
		testParseColor("lab(52.15% -9.4479 56.0241)", new double[]{52.15, -9.4479, 56.0241}, 1.0); // olive
		testParseColor("lab(47.99% -30.3874 -8.9751)", new double[]{47.99, -30.3874, -8.9751}, 1.0); // teal
		testParseColor("lab(11.34% 40.9636 -67.2034)", new double[]{11.34, 40.9636, -67.2034}, 1.0); // navy
		testParseColor("lab(77.7% 0 0)", new double[]{77.7, 0.0, 0.0}, 1.0); // silver
		testParseColor("lab(32.39% 38.423 -47.6911)", new double[]{32.39, 38.423, -47.6911}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("lab(54.29, 80.8049, 69.891)", new double[]{54.29, 80.8049, 69.891}, 1.0); // comma separated
		testParseColor("lab(54.29 80.8049 69.891)", new double[]{54.29, 80.8049, 69.891}, 1.0); // nonPercentage L
		// 100% = 125 for a,b
		testParseColor("lab(54.29% 64.644% 55.913%)", new double[]{54.29, 80.805, 69.89125}, 1.0); // percentage a,b
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("lab(54.29% 80.8049 69.891 / 0.5)", new double[]{54.29, 80.8049, 69.891}, 0.5);
	}

	@Test
	public void testParseColor_L_clamped() {
		testParseColor("lab(120% 0 0)", new double[]{100.0, 0.0, 0.0}, 1.0);
		testParseColor("lab(-10% 0 0)", new double[]{0.0, 0.0, 0.0}, 1.0);
	}

	@Test
	public void testParseColor_outOfGamut_ab_preserved() {
		testParseColor("lab(50% 150 -150)", new double[]{50.0, 150.0, -150.0}, 1.0);
	}

	@Test
	public void testFormat() {
		testFormat(new double[]{0.0, 0.0, 0.0}, 1.0, "lab(0% 0 0)"); // black
		testFormat(new double[]{32.39, 38.423, -47.6911}, 1.0, "lab(32.39% 38.423 -47.6911)"); // rebeccapurple
		testFormat(new double[]{0.0, 0.0, 0.0}, 0.5, "lab(0% 0 0 / 0.5)"); // alpha
	}

	@Test
	public void testConvertFromXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.LAB.convertFromXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testConvertToXyz() {
		assertArrayEquals(new double[]{0.0, 0.0, 0.0}, ColorSpace.LAB.convertToXyz(new double[]{0.0, 0.0, 0.0}), CONVERT_DELTA); // black
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] lab = ColorSpace.LAB.convertFromXyz(color.xyzD65());
			double[] back = ColorSpace.LAB.convertToXyz(lab);
			assertArrayEquals(color.xyzD65(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.LAB.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}

	private void testFormat(double[] components, double alpha, String exp) {
		String s = ColorSpace.LAB.format(components, alpha);
		assertEquals(exp, s);
	}
}
