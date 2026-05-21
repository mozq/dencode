package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorRGBDencoderTest {

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
		testFnDencoder("red", "rgb(100% 0% 0%)");
		testFnDencoder("green", "rgb(0% 50.2% 0%)");
		testFnDencoder("lime", "rgb(0% 100% 0%)");
		testFnDencoder("blue", "rgb(0% 0% 100%)");
		testFnDencoder("yellow", "rgb(100% 100% 0%)");
		testFnDencoder("cyan", "rgb(0% 100% 100%)");
		testFnDencoder("magenta", "rgb(100% 0% 100%)");
		testFnDencoder("gray", "rgb(50.2% 50.2% 50.2%)");
		testFnDencoder("white", "rgb(100% 100% 100%)");
		testFnDencoder("black", "rgb(0% 0% 0%)");
		testFnDencoder("orange", "rgb(100% 64.71% 0%)");
		testFnDencoder("purple", "rgb(50.2% 0% 50.2%)");
		testFnDencoder("indigo", "rgb(29.41% 0% 50.98%)");
		testFnDencoder("pink", "rgb(100% 75.29% 79.61%)");
		testFnDencoder("brown", "rgb(64.71% 16.47% 16.47%)");
		testFnDencoder("maroon", "rgb(50.2% 0% 0%)");
		testFnDencoder("olive", "rgb(50.2% 50.2% 0%)");
		testFnDencoder("teal", "rgb(0% 50.2% 50.2%)");
		testFnDencoder("navy", "rgb(0% 0% 50.2%)");
		testFnDencoder("silver", "rgb(75.29% 75.29% 75.29%)");
		testFnDencoder("rebeccapurple", "rgb(40% 20% 60%)");
	}

	@Test
	public void testFn_hexAndRgb() {
		testFnDencoder("#ff0000", "rgb(100% 0% 0%)");
	}

	@Test
	public void testFn_alpha() {
		testFnDencoder("rgba(255 0 0 / 0.5)", "rgb(100% 0% 0% / 0.5)");
	}

	@Test
	public void testFn_alphaClamp() {
		testFnDencoder("rgba(255 0 0 / 120%)", "rgb(100% 0% 0%)");
		testFnDencoder("rgba(255 0 0 / 0)", "rgb(100% 0% 0% / 0)");
	}

	@Test
	public void testFn_invalid() {
		testFnDencoder("x", null);
	}

	@Test
	public void testFnNumber() {
		Map<String, String> options = new HashMap<>();
		options.put("color.rgb.notation", "number");
		DencodeCondition cond = new DencodeCondition("red", StandardCharsets.UTF_8, "", null, options);
		assertEquals("rgb(255 0 0)", ColorRGBDencoder.encColorRGBFn(cond));
	}

	private void testHexDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<String, String>(0));
		String encStr = ColorRGBDencoder.encColorRGBHex(cond);
		assertEquals(exp, encStr);
	}

	private void testFnDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<String, String>(0));
		String encStr = ColorRGBDencoder.encColorRGBFn(cond);
		assertEquals(exp, encStr);
	}
}
