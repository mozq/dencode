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

public class ColorSpaceRgbTest {

	private static final double PARSE_DELTA = 1e-4;
	private static final double CONVERT_DELTA = 1e-4;
	private static final double ROUNDTRIP_DELTA = 1e-4;

	@Test
	public void testParseColor_blank() {
		assertNull(ColorSpace.RGB.parseColor(null));
		assertNull(ColorSpace.RGB.parseColor("rgb()"));
		assertNull(ColorSpace.RGB.parseColor("rgb(255, 0)"));
		assertNull(ColorSpace.RGB.parseColor("notrgb"));
	}

	@Test
	public void testParseColor_colorVariations() {
		testParseColor("rgb(255 0 0)", new double[]{1.0, 0.0, 0.0}, 1.0); // red
		testParseColor("rgb(0 255 0)", new double[]{0.0, 1.0, 0.0}, 1.0); // green
		testParseColor("rgb(0 0 255)", new double[]{0.0, 0.0, 1.0}, 1.0); // blue
		testParseColor("rgb(255 255 0)", new double[]{1.0, 1.0, 0.0}, 1.0); // yellow
		testParseColor("rgb(0 255 255)", new double[]{0.0, 1.0, 1.0}, 1.0); // cyan
		testParseColor("rgb(255 0 255)", new double[]{1.0, 0.0, 1.0}, 1.0); // magenta
		testParseColor("rgb(50% 50% 50%)", new double[]{0.5, 0.5, 0.5}, 1.0); // gray
		testParseColor("rgb(255 255 255)", new double[]{1.0, 1.0, 1.0}, 1.0); // white
		testParseColor("rgb(0 0 0)", new double[]{0.0, 0.0, 0.0}, 1.0); // black
		testParseColor("rgb(255 165 0)", new double[]{1.0, 165.0 / 255.0, 0.0}, 1.0); // orange
		testParseColor("rgb(128 0 128)", new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, 1.0); // purple
		testParseColor("rgb(75 0 130)", new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, 1.0); // indigo
		testParseColor("rgb(255 192 203)", new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, 1.0); // pink
		testParseColor("rgb(165 42 42)", new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, 1.0); // brown
		testParseColor("rgb(128 0 0)", new double[]{128.0 / 255.0, 0.0, 0.0}, 1.0); // maroon
		testParseColor("rgb(128 128 0)", new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, 1.0); // olive
		testParseColor("rgb(0 128 128)", new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, 1.0); // teal
		testParseColor("rgb(0 0 128)", new double[]{0.0, 0.0, 128.0 / 255.0}, 1.0); // navy
		testParseColor("rgb(192 192 192)", new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, 1.0); // silver
		testParseColor("rgb(102 51 153)", new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, 1.0); // rebeccapurple
	}

	@Test
	public void testParseColor_formatVariations() {
		testParseColor("rgb(100% 0% 0%)", new double[]{1.0, 0.0, 0.0}, 1.0); // rgb percentage
		testParseColor("rgb(255, 0, 0)", new double[]{1.0, 0.0, 0.0}, 1.0); // comma separated
		testParseColor("255, 0, 0", new double[]{1.0, 0.0, 0.0}, 1.0); // bare comma separated
		testParseColor("color(srgb 1.0 0.0 0.0)", new double[]{1.0, 0.0, 0.0}, 1.0); // color srgb
		testParseColor("color(srgb 100% 0% 0%)", new double[]{1.0, 0.0, 0.0}, 1.0); // color srgb percentage
	}

	@Test
	public void testParseColor_hex() {
		testParseColor("#f00", new double[]{1.0, 0.0, 0.0}, 1.0); // hex3
		testParseColor("#f008", new double[]{1.0, 0.0, 0.0}, 8.0 / 15.0); // hex4
		testParseColor("#ff0000", new double[]{1.0, 0.0, 0.0}, 1.0); // hex6
		testParseColor("#ff000080", new double[]{1.0, 0.0, 0.0}, 128.0 / 255.0); // hex8
	}

	@Test
	public void testParseColor_hex_requiresHashPrefix() {
		assertNull(ColorSpace.RGB.parseColor("f00"));
		assertNull(ColorSpace.RGB.parseColor("f008"));
		assertNull(ColorSpace.RGB.parseColor("ff0000"));
		assertNull(ColorSpace.RGB.parseColor("ff000080"));
	}

	@Test
	public void testParseColor_hexArgb() {
		testParseColor("0xff0000", new double[]{1.0, 0.0, 0.0}, 1.0); // 0xRRGGBB
		testParseColor("0x80ff0000", new double[]{1.0, 0.0, 0.0}, 128.0 / 255.0); // 0xAARRGGBB
	}

	@Test
	public void testParseColor_gray() {
		testParseColor("gray(128)", new double[]{128.0 / 255.0, 128.0 / 255.0, 128.0 / 255.0}, 1.0);
		testParseColor("gray(50%)", new double[]{0.5, 0.5, 0.5}, 1.0);
		testParseColor("graya(128 / 0.5)", new double[]{128.0 / 255.0, 128.0 / 255.0, 128.0 / 255.0}, 0.5);
	}

	@Test
	public void testParseColor_alpha() {
		testParseColor("rgb(255 0 0 / 0.5)", new double[]{1.0, 0.0, 0.0}, 0.5); // alpha slash
		testParseColor("rgba(0, 0, 255, 0.5)", new double[]{0.0, 0.0, 1.0}, 0.5); // alpha comma
		testParseColor("color(srgb 1.0 0.0 0.0 / 0.5)", new double[]{1.0, 0.0, 0.0}, 0.5); // color srgb alpha

		Color c = ColorSpace.RGB.parseColor("#ff000080");
		assertNotNull(c);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0}, c.components(), PARSE_DELTA);
		assertEquals(128.0 / 255.0, c.alpha(), PARSE_DELTA);
	}

	@Test
	public void testParseColor_outOfGamut_clamped() {
		testParseColor("rgb(300 -10 0)", new double[]{1.0, 0.0, 0.0}, 1.0);
		testParseColor("rgb(255% -20% 0%)", new double[]{1.0, 0.0, 0.0}, 1.0);
		testParseColor("255, -10, 0", new double[]{1.0, 0.0, 0.0}, 1.0);
		testParseColor("gray(-10%)", new double[]{0.0, 0.0, 0.0}, 1.0);
	}

	@Test
	public void testParseColor_colorSrgb_outOfGamut_preserved() {
		Color c = ColorSpace.RGB.parseColor("color(srgb 1.5 -0.2 0)");
		assertNotNull(c);
		assertArrayEquals(new double[]{1.5, -0.2, 0.0}, c.components(), PARSE_DELTA);
	}

	@Test
	public void testFormat_default_percentage() {
		String s = ColorSpace.RGB.format(new double[]{1.0, 0.0, 0.0}, 1.0);
		assertEquals("rgb(100% 0% 0%)", s);
	}

	@Test
	public void testFormat_default_percentage_alpha() {
		String s = ColorSpace.RGB.format(new double[]{1.0, 0.0, 0.0}, 0.5);
		assertEquals("rgb(100% 0% 0% / 0.5)", s);
	}

	@Test
	public void testFormat_alphaClamped() {
		assertEquals("rgb(100% 0% 0%)", ColorSpace.RGB.format(new double[]{1.0, 0.0, 0.0}, 1.2));
		assertEquals("rgb(100% 0% 0% / 0)", ColorSpace.RGB.format(new double[]{1.0, 0.0, 0.0}, -0.2));
	}

	@Test
	public void testFormat_withFormatter_number() {
		ColorSpace cs = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_NUMBER);
		assertEquals("rgb(255 0 0)", cs.format(new double[]{1.0, 0.0, 0.0}, 1.0));
	}

	@Test
	public void testFormat_withFormatter_hex() {
		ColorSpace cs = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_HEX);
		assertEquals("#ff0000", cs.format(new double[]{1.0, 0.0, 0.0}, 1.0));

		String sAlpha = cs.format(new double[]{1.0, 0.0, 0.0}, 0.5);
		assertTrue(sAlpha.startsWith("#ff0000"));
	}

	@Test
	public void testFormat_withFormatter_hexArgb() {
		ColorSpace cs = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_HEX_ARGB);
		assertEquals("0xffff0000", cs.format(new double[]{1.0, 0.0, 0.0}, 1.0));
		assertEquals("0x80ff0000", cs.format(new double[]{1.0, 0.0, 0.0}, 128.0 / 255.0));
	}

	@Test
	public void testFormat_number_outOfGamut_clamped() {
		// FORMATTER_NUMBER can only express 0-255; out-of-gamut must be clamped
		ColorSpace cs = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_NUMBER);
		String s = cs.format(new double[]{1.5, -0.2, 0.0}, 1.0);
		// R clamped to 1.0 → 255, G clamped to 0.0 → 0
		assertEquals("rgb(255 0 0)", s);
	}

	@Test
	public void testFormat_hex_outOfGamut_clamped() {
		// FORMATTER_HEX can only express 0x00-0xff; out-of-gamut must be clamped
		ColorSpace cs = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_HEX);
		String s = cs.format(new double[]{1.5, -0.2, 0.0}, 1.0);
		// R clamped to ff, G clamped to 00
		assertEquals("#ff0000", s);
	}

	@Test
	public void testFormat_percentage_outOfGamut_preserved() {
		// FORMATTER_PERCENTAGE (CSS Color 4 syntax) can express any value — no clamping
		String s = ColorSpace.RGB.format(new double[]{1.5, -0.2, 0.0}, 1.0);
		// 1.5 * 100 = 150%, -0.2 * 100 = -20%  (preserved as-is)
		assertEquals("rgb(150% -20% 0%)", s);
	}

	@Test
	public void testConvertFromRgb() {
		double[] rgb = {1.0, 0.0, 0.0};
		assertArrayEquals(rgb, ColorSpace.RGB.convertFromRgb(rgb), CONVERT_DELTA);
	}

	@Test
	public void testConvertToRgb() {
		double[] rgb = {0.0, 1.0, 0.0};
		assertArrayEquals(rgb, ColorSpace.RGB.convertToRgb(rgb), CONVERT_DELTA);
	}

	@Test
	public void testRoundtrip() {
		for (ColorSpaceColorFixtures.ColorFixture color : ColorSpaceColorFixtures.COLORS) {
			double[] rgb = ColorSpace.RGB.convertFromRgb(color.rgb());
			double[] back = ColorSpace.RGB.convertToRgb(rgb);
			assertArrayEquals(color.rgb(), back, ROUNDTRIP_DELTA, color.name());
		}
	}

	@Test
	public void testWith_doesNotMutateOriginal() {
		ColorSpace cs1 = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_NUMBER);
		// original should still use default (percentage) formatter
		String original = ColorSpace.RGB.format(new double[]{1.0, 0.0, 0.0}, 1.0);
		assertTrue(original.contains("%"), "Original formatter should be percentage");
		String custom = cs1.format(new double[]{1.0, 0.0, 0.0}, 1.0);
		assertFalse(custom.contains("%"), "Custom formatter should NOT use percentage");
	}

	private void testParseColor(String val, double[] expComponents, double expAlpha) {
		Color c = ColorSpace.RGB.parseColor(val);
		assertNotNull(c, "Should parse: " + val);
		assertArrayEquals(expComponents, c.components(), PARSE_DELTA);
		assertEquals(expAlpha, c.alpha(), PARSE_DELTA);
	}
}
