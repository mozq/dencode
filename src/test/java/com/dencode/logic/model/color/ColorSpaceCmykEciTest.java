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

public class ColorSpaceCmykEciTest {

	private static final double PARSE_DELTA = 1e-4;

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("color(--ecicmyk 0 1 1 0)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0);
		testParseColor("color(--ecicmyk 0% 100% 100% 0%)", new double[]{0.0, 1.0, 1.0, 0.0}, 1.0);
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("color(--ecicmyk 1.2 130% 1.4 150%)", new double[]{1.0, 1.0, 1.0, 1.0}, 1.0);
	}

	@Test
	public void testParseColor_negativeComponents_unsupported() {
		assertNull(ColorSpace.CMYK_ECI.parseColor("color(--ecicmyk -0.1 0.5 1 0)"));
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.CMYK_ECI.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}
}
