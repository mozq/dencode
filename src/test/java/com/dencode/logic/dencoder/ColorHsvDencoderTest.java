package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorHsvDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "hsv(0deg 100% 100%)");
		testDencoder("green", "hsv(120deg 100% 50.2%)");
		testDencoder("lime", "hsv(120deg 100% 100%)");
		testDencoder("blue", "hsv(240deg 100% 100%)");
		testDencoder("yellow", "hsv(60deg 100% 100%)");
		testDencoder("cyan", "hsv(180deg 100% 100%)");
		testDencoder("magenta", "hsv(300deg 100% 100%)");
		testDencoder("gray", "hsv(0deg 0% 50.2%)");
		testDencoder("white", "hsv(0deg 0% 100%)");
		testDencoder("black", "hsv(0deg 0% 0%)");
		testDencoder("orange", "hsv(38.82deg 100% 100%)");
		testDencoder("purple", "hsv(300deg 100% 50.2%)");
		testDencoder("indigo", "hsv(274.62deg 100% 50.98%)");
		testDencoder("pink", "hsv(349.52deg 24.71% 100%)");
		testDencoder("brown", "hsv(0deg 74.55% 64.71%)");
		testDencoder("maroon", "hsv(0deg 100% 50.2%)");
		testDencoder("olive", "hsv(60deg 100% 50.2%)");
		testDencoder("teal", "hsv(180deg 100% 50.2%)");
		testDencoder("navy", "hsv(240deg 100% 50.2%)");
		testDencoder("silver", "hsv(0deg 0% 75.29%)");
		testDencoder("rebeccapurple", "hsv(270deg 66.67% 60%)");
	}

	@Test
	public void test_identity() {
		testDencoder("hsv(0deg 100% 100%)", "hsv(0deg 100% 100%)"); // red
		testDencoder("hsv(120deg 100% 50.2%)", "hsv(120deg 100% 50.2%)"); // green
		testDencoder("hsv(120deg 100% 100%)", "hsv(120deg 100% 100%)"); // lime
		testDencoder("hsv(240deg 100% 100%)", "hsv(240deg 100% 100%)"); // blue
		testDencoder("hsv(60deg 100% 100%)", "hsv(60deg 100% 100%)"); // yellow
		testDencoder("hsv(180deg 100% 100%)", "hsv(180deg 100% 100%)"); // cyan
		testDencoder("hsv(300deg 100% 100%)", "hsv(300deg 100% 100%)"); // magenta
		testDencoder("hsv(0deg 0% 50.2%)", "hsv(0deg 0% 50.2%)"); // gray
		testDencoder("hsv(0deg 0% 100%)", "hsv(0deg 0% 100%)"); // white
		testDencoder("hsv(0deg 0% 0%)", "hsv(0deg 0% 0%)"); // black
		testDencoder("hsv(38.82deg 100% 100%)", "hsv(38.82deg 100% 100%)"); // orange
		testDencoder("hsv(300deg 100% 50.2%)", "hsv(300deg 100% 50.2%)"); // purple
		testDencoder("hsv(274.62deg 100% 50.98%)", "hsv(274.62deg 100% 50.98%)"); // indigo
		testDencoder("hsv(349.52deg 24.71% 100%)", "hsv(349.52deg 24.71% 100%)"); // pink
		testDencoder("hsv(0deg 74.55% 64.71%)", "hsv(0deg 74.55% 64.71%)"); // brown
		testDencoder("hsv(0deg 100% 50.2%)", "hsv(0deg 100% 50.2%)"); // maroon
		testDencoder("hsv(60deg 100% 50.2%)", "hsv(60deg 100% 50.2%)"); // olive
		testDencoder("hsv(180deg 100% 50.2%)", "hsv(180deg 100% 50.2%)"); // teal
		testDencoder("hsv(240deg 100% 50.2%)", "hsv(240deg 100% 50.2%)"); // navy
		testDencoder("hsv(0deg 0% 75.29%)", "hsv(0deg 0% 75.29%)"); // silver
		testDencoder("hsv(270deg 66.67% 60%)", "hsv(270deg 66.67% 60%)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "hsv(0deg 100% 100%)");
		testDencoder("rgb(255 0 0)", "hsv(0deg 100% 100%)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "hsv(0deg 100% 100% / 0.5)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}

	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<>(0));
		String encStr = ColorHSVDencoder.encColorHSVFn(cond);
		assertEquals(exp, encStr);
	}
}
