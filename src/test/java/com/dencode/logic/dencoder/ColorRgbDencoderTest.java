package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorRgbDencoderTest {
	private final DencoderTester hexTester = new DencoderTester(
			ColorRgbDencoder::encColorRgbHex,
			"color.rgb.hex-notation");
	private final DencoderTester tester = new DencoderTester(
			ColorRgbDencoder::encColorRgb,
			"color.rgb.color-space",
			"color.rgb.notation");

	@Test
	public void testHex_blank() {
		hexTester.testEncoder("", null);
	}

	@Test
	public void testHex_colorVariations() {
		hexTester.testEncoder("red", "#ff0000");
		hexTester.testEncoder("green", "#008000");
		hexTester.testEncoder("lime", "#00ff00");
		hexTester.testEncoder("blue", "#0000ff");
		hexTester.testEncoder("yellow", "#ffff00");
		hexTester.testEncoder("cyan", "#00ffff");
		hexTester.testEncoder("magenta", "#ff00ff");
		hexTester.testEncoder("gray", "#808080");
		hexTester.testEncoder("white", "#ffffff");
		hexTester.testEncoder("black", "#000000");
		hexTester.testEncoder("orange", "#ffa500");
		hexTester.testEncoder("purple", "#800080");
		hexTester.testEncoder("indigo", "#4b0082");
		hexTester.testEncoder("pink", "#ffc0cb");
		hexTester.testEncoder("brown", "#a52a2a");
		hexTester.testEncoder("maroon", "#800000");
		hexTester.testEncoder("olive", "#808000");
		hexTester.testEncoder("teal", "#008080");
		hexTester.testEncoder("navy", "#000080");
		hexTester.testEncoder("silver", "#c0c0c0");
		hexTester.testEncoder("rebeccapurple", "#663399");
	}

	@Test
	public void testHex_hexAndRgb() {
		hexTester.testEncoder("rgb(255 0 0)", "#ff0000");
	}

	@Test
	public void testHex_alpha() {
		hexTester.testEncoder("rgba(255 0 0 / 0.5)", "#ff000080");
	}

	@Test
	public void testHex_argbNotation() {
		hexTester.testEncoder("red", "0xffff0000", hexTester.options("aarrggbb"));
		hexTester.testEncoder("rgba(255 0 0 / 0.5)", "0x80ff0000", hexTester.options("aarrggbb"));
	}

	@Test
	public void testHex_unknownNotation_fallsBackToRgbAlpha() {
		hexTester.testEncoder("red", "#ff0000", hexTester.options("unknown"));
	}

	@Test
	public void testHex_alphaClamp() {
		hexTester.testEncoder("rgba(255 0 0 / 120%)", "#ff0000");
		hexTester.testEncoder("rgba(255 0 0 / 0)", "#ff000000");
	}

	@Test
	public void testHex_invalid() {
		hexTester.testEncoder("x", null);
	}

	@Test
	public void testFn_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void testFn_colorVariations() {
		tester.testEncoder("red", "rgb(255 0 0)");
		tester.testEncoder("green", "rgb(0 128 0)");
		tester.testEncoder("lime", "rgb(0 255 0)");
		tester.testEncoder("blue", "rgb(0 0 255)");
		tester.testEncoder("yellow", "rgb(255 255 0)");
		tester.testEncoder("cyan", "rgb(0 255 255)");
		tester.testEncoder("magenta", "rgb(255 0 255)");
		tester.testEncoder("gray", "rgb(128 128 128)");
		tester.testEncoder("white", "rgb(255 255 255)");
		tester.testEncoder("black", "rgb(0 0 0)");
		tester.testEncoder("orange", "rgb(255 165 0)");
		tester.testEncoder("purple", "rgb(128 0 128)");
		tester.testEncoder("indigo", "rgb(75 0 130)");
		tester.testEncoder("pink", "rgb(255 192 203)");
		tester.testEncoder("brown", "rgb(165 42 42)");
		tester.testEncoder("maroon", "rgb(128 0 0)");
		tester.testEncoder("olive", "rgb(128 128 0)");
		tester.testEncoder("teal", "rgb(0 128 128)");
		tester.testEncoder("navy", "rgb(0 0 128)");
		tester.testEncoder("silver", "rgb(192 192 192)");
		tester.testEncoder("rebeccapurple", "rgb(102 51 153)");
	}

	@Test
	public void testFn_hexAndRgb() {
		tester.testEncoder("#ff0000", "rgb(255 0 0)");
	}

	@Test
	public void testFn_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "rgb(255 0 0 / 0.5)");
	}

	@Test
	public void testFn_alphaClamp() {
		tester.testEncoder("rgba(255 0 0 / 120%)", "rgb(255 0 0)");
		tester.testEncoder("rgba(255 0 0 / 0)", "rgb(255 0 0 / 0)");
	}

	@Test
	public void testFn_invalid() {
		tester.testEncoder("x", null);
	}

	@Test
	public void testFn_number() {
		tester.testEncoder("red", "rgb(255 0 0)", tester.options("rgb", "number"));
	}

	@Test
	public void testFn_percentage() {
		tester.testEncoder("red", "rgb(100% 0% 0%)", tester.options("rgb", "percentage"));
	}

	@Test
	public void testFn_colorSpaceSrgb() {
		tester.testEncoder("red", "color(srgb 1 0 0)", tester.options("srgb", "number"));
		tester.testEncoder("red", "color(srgb 100% 0% 0%)", tester.options("srgb", "percentage"));
	}

	@Test
	public void testFn_colorSpaceSrgbLinear() {
		tester.testEncoder("red", "color(srgb-linear 1 0 0)", tester.options("srgb-linear", "number"));
		tester.testEncoder("red", "color(srgb-linear 100% 0% 0%)", tester.options("srgb-linear", "percentage"));
	}

	@Test
	public void testFn_colorSpaceDisplayP3() {
		tester.testEncoder("red", "color(display-p3 0.91749 0.20029 0.13856)", tester.options("display-p3", "number"));
		tester.testEncoder("red", "color(display-p3 91.75% 20.03% 13.86%)", tester.options("display-p3", "percentage"));
	}

	@Test
	public void testFn_colorSpaceA98Rgb() {
		tester.testEncoder("red", "color(a98-rgb 0.85859 0 0)", tester.options("a98-rgb", "number"));
		tester.testEncoder("red", "color(a98-rgb 85.86% 0% 0%)", tester.options("a98-rgb", "percentage"));
	}

	@Test
	public void testFn_colorSpaceProphotoRgb() {
		tester.testEncoder("red", "color(prophoto-rgb 0.70225 0.27572 0.10355)", tester.options("prophoto-rgb", "number"));
		tester.testEncoder("red", "color(prophoto-rgb 70.22% 27.57% 10.35%)", tester.options("prophoto-rgb", "percentage"));
	}

	@Test
	public void testFn_colorSpaceRec2020() {
		tester.testEncoder("red", "color(rec2020 0.82346 0.32843 0.18034)", tester.options("rec2020", "number"));
		tester.testEncoder("red", "color(rec2020 82.35% 32.84% 18.03%)", tester.options("rec2020", "percentage"));
	}

	@Test
	public void testFn_unknownColorSpace_fallsBackToRgb() {
		tester.testEncoder("red", "rgb(255 0 0)", tester.options("unknown", "number"));
	}
}
