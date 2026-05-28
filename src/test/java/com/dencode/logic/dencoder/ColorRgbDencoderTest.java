package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorRgbDencoderTest {

	@Test
	public void testHex_blank() {
		testHexDencoder("", null);
	}

	@Test
	public void testHex_colorVariations() {
		testHexDencoder("red", "#ff0000");
		testHexDencoder("green", "#008000");
		testHexDencoder("lime", "#00ff00");
		testHexDencoder("blue", "#0000ff");
		testHexDencoder("yellow", "#ffff00");
		testHexDencoder("cyan", "#00ffff");
		testHexDencoder("magenta", "#ff00ff");
		testHexDencoder("gray", "#808080");
		testHexDencoder("white", "#ffffff");
		testHexDencoder("black", "#000000");
		testHexDencoder("orange", "#ffa500");
		testHexDencoder("purple", "#800080");
		testHexDencoder("indigo", "#4b0082");
		testHexDencoder("pink", "#ffc0cb");
		testHexDencoder("brown", "#a52a2a");
		testHexDencoder("maroon", "#800000");
		testHexDencoder("olive", "#808000");
		testHexDencoder("teal", "#008080");
		testHexDencoder("navy", "#000080");
		testHexDencoder("silver", "#c0c0c0");
		testHexDencoder("rebeccapurple", "#663399");
	}

	@Test
	public void testHex_hexAndRgb() {
		testHexDencoder("rgb(255 0 0)", "#ff0000");
	}

	@Test
	public void testHex_alpha() {
		testHexDencoder("rgba(255 0 0 / 0.5)", "#ff000080");
	}

	@Test
	public void testHex_argbNotation() {
		testHexDencoder("red", "aarrggbb", "0xffff0000");
		testHexDencoder("rgba(255 0 0 / 0.5)", "aarrggbb", "0x80ff0000");
	}

	@Test
	public void testHex_unknownNotation_fallsBackToRgbAlpha() {
		testHexDencoder("red", "unknown", "#ff0000");
	}

	@Test
	public void testHex_alphaClamp() {
		testHexDencoder("rgba(255 0 0 / 120%)", "#ff0000");
		testHexDencoder("rgba(255 0 0 / 0)", "#ff000000");
	}

	@Test
	public void testHex_invalid() {
		testHexDencoder("x", null);
	}

	@Test
	public void testFn_blank() {
		testFnDencoder("", null);
	}

	@Test
	public void testFn_colorVariations() {
		testFnDencoder("red", "rgb(255 0 0)");
		testFnDencoder("green", "rgb(0 128 0)");
		testFnDencoder("lime", "rgb(0 255 0)");
		testFnDencoder("blue", "rgb(0 0 255)");
		testFnDencoder("yellow", "rgb(255 255 0)");
		testFnDencoder("cyan", "rgb(0 255 255)");
		testFnDencoder("magenta", "rgb(255 0 255)");
		testFnDencoder("gray", "rgb(128 128 128)");
		testFnDencoder("white", "rgb(255 255 255)");
		testFnDencoder("black", "rgb(0 0 0)");
		testFnDencoder("orange", "rgb(255 165 0)");
		testFnDencoder("purple", "rgb(128 0 128)");
		testFnDencoder("indigo", "rgb(75 0 130)");
		testFnDencoder("pink", "rgb(255 192 203)");
		testFnDencoder("brown", "rgb(165 42 42)");
		testFnDencoder("maroon", "rgb(128 0 0)");
		testFnDencoder("olive", "rgb(128 128 0)");
		testFnDencoder("teal", "rgb(0 128 128)");
		testFnDencoder("navy", "rgb(0 0 128)");
		testFnDencoder("silver", "rgb(192 192 192)");
		testFnDencoder("rebeccapurple", "rgb(102 51 153)");
	}

	@Test
	public void testFn_hexAndRgb() {
		testFnDencoder("#ff0000", "rgb(255 0 0)");
	}

	@Test
	public void testFn_alpha() {
		testFnDencoder("rgba(255 0 0 / 0.5)", "rgb(255 0 0 / 0.5)");
	}

	@Test
	public void testFn_alphaClamp() {
		testFnDencoder("rgba(255 0 0 / 120%)", "rgb(255 0 0)");
		testFnDencoder("rgba(255 0 0 / 0)", "rgb(255 0 0 / 0)");
	}

	@Test
	public void testFn_invalid() {
		testFnDencoder("x", null);
	}

	@Test
	public void testFn_number() {
		Map<String, String> options = new HashMap<>();
		options.put("color.rgb.notation", "number");
		DencodeCondition cond = new DencodeCondition("red", StandardCharsets.UTF_8, "", null, options);
		assertEquals("rgb(255 0 0)", ColorRgbDencoder.encColorRgb(cond));
	}

	@Test
	public void testFn_percentage() {
		testFnDencoder("red", "rgb", "percentage", "rgb(100% 0% 0%)");
	}

	@Test
	public void testFn_colorSpaceSrgb() {
		testFnDencoder("red", "srgb", "number", "color(srgb 1 0 0)");
		testFnDencoder("red", "srgb", "percentage", "color(srgb 100% 0% 0%)");
	}

	@Test
	public void testFn_colorSpaceSrgbLinear() {
		testFnDencoder("red", "srgb-linear", "number", "color(srgb-linear 1 0 0)");
		testFnDencoder("red", "srgb-linear", "percentage", "color(srgb-linear 100% 0% 0%)");
	}

	@Test
	public void testFn_colorSpaceDisplayP3() {
		testFnDencoder("red", "display-p3", "number", "color(display-p3 0.91749 0.20029 0.13856)");
		testFnDencoder("red", "display-p3", "percentage", "color(display-p3 91.75% 20.03% 13.86%)");
	}

	@Test
	public void testFn_colorSpaceA98Rgb() {
		testFnDencoder("red", "a98-rgb", "number", "color(a98-rgb 0.85859 0 0)");
		testFnDencoder("red", "a98-rgb", "percentage", "color(a98-rgb 85.86% 0% 0%)");
	}

	@Test
	public void testFn_colorSpaceProphotoRgb() {
		testFnDencoder("red", "prophoto-rgb", "number", "color(prophoto-rgb 0.70225 0.27572 0.10355)");
		testFnDencoder("red", "prophoto-rgb", "percentage", "color(prophoto-rgb 70.22% 27.57% 10.35%)");
	}

	@Test
	public void testFn_colorSpaceRec2020() {
		testFnDencoder("red", "rec2020", "number", "color(rec2020 0.82346 0.32843 0.18034)");
		testFnDencoder("red", "rec2020", "percentage", "color(rec2020 82.35% 32.84% 18.03%)");
	}

	@Test
	public void testFn_unknownColorSpace_fallsBackToRgb() {
		testFnDencoder("red", "unknown", "number", "rgb(255 0 0)");
	}

	private void testHexDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<String, String>(0));
		String encStr = ColorRgbDencoder.encColorRgbHex(cond);
		assertEquals(exp, encStr);
	}

	private void testHexDencoder(String val, String hexNotation, String exp) {
		Map<String, String> options = new HashMap<>();
		options.put("color.rgb.hex-notation", hexNotation);

		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, options);
		String encStr = ColorRgbDencoder.encColorRgbHex(cond);
		assertEquals(exp, encStr);
	}

	private void testFnDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<String, String>(0));
		String encStr = ColorRgbDencoder.encColorRgb(cond);
		assertEquals(exp, encStr);
	}

	private void testFnDencoder(String val, String colorSpaceName, String notation, String exp) {
		Map<String, String> options = new HashMap<>();
		options.put("color.rgb.color-space", colorSpaceName);
		options.put("color.rgb.notation", notation);

		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, options);
		String encStr = ColorRgbDencoder.encColorRgb(cond);
		assertEquals(exp, encStr);
	}
}
