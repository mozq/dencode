package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorHslDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "hsl(0deg 100% 50%)");
		testDencoder("green", "hsl(120deg 100% 25.1%)");
		testDencoder("lime", "hsl(120deg 100% 50%)");
		testDencoder("blue", "hsl(240deg 100% 50%)");
		testDencoder("yellow", "hsl(60deg 100% 50%)");
		testDencoder("cyan", "hsl(180deg 100% 50%)");
		testDencoder("magenta", "hsl(300deg 100% 50%)");
		testDencoder("gray", "hsl(0deg 0% 50.2%)");
		testDencoder("white", "hsl(0deg 0% 100%)");
		testDencoder("black", "hsl(0deg 0% 0%)");
		testDencoder("orange", "hsl(38.82deg 100% 50%)");
		testDencoder("purple", "hsl(300deg 100% 25.1%)");
		testDencoder("indigo", "hsl(274.62deg 100% 25.49%)");
		testDencoder("pink", "hsl(349.52deg 100% 87.65%)");
		testDencoder("brown", "hsl(0deg 59.42% 40.59%)");
		testDencoder("maroon", "hsl(0deg 100% 25.1%)");
		testDencoder("olive", "hsl(60deg 100% 25.1%)");
		testDencoder("teal", "hsl(180deg 100% 25.1%)");
		testDencoder("navy", "hsl(240deg 100% 25.1%)");
		testDencoder("silver", "hsl(0deg 0% 75.29%)");
		testDencoder("rebeccapurple", "hsl(270deg 50% 40%)");
	}

	@Test
	public void test_identity() {
		testDencoder("hsl(0deg 100% 50%)", "hsl(0deg 100% 50%)"); // red
		testDencoder("hsl(120deg 100% 25.1%)", "hsl(120deg 100% 25.1%)"); // green
		testDencoder("hsl(120deg 100% 50%)", "hsl(120deg 100% 50%)"); // lime
		testDencoder("hsl(240deg 100% 50%)", "hsl(240deg 100% 50%)"); // blue
		testDencoder("hsl(60deg 100% 50%)", "hsl(60deg 100% 50%)"); // yellow
		testDencoder("hsl(180deg 100% 50%)", "hsl(180deg 100% 50%)"); // cyan
		testDencoder("hsl(300deg 100% 50%)", "hsl(300deg 100% 50%)"); // magenta
		testDencoder("hsl(0deg 0% 50.2%)", "hsl(0deg 0% 50.2%)"); // gray
		testDencoder("hsl(0deg 0% 100%)", "hsl(0deg 0% 100%)"); // white
		testDencoder("hsl(0deg 0% 0%)", "hsl(0deg 0% 0%)"); // black
		testDencoder("hsl(38.82deg 100% 50%)", "hsl(38.82deg 100% 50%)"); // orange
		testDencoder("hsl(300deg 100% 25.1%)", "hsl(300deg 100% 25.1%)"); // purple
		testDencoder("hsl(274.62deg 100% 25.49%)", "hsl(274.62deg 100% 25.49%)"); // indigo
		testDencoder("hsl(349.52deg 100% 87.65%)", "hsl(349.52deg 100% 87.65%)"); // pink
		testDencoder("hsl(0deg 59.42% 40.59%)", "hsl(0deg 59.42% 40.59%)"); // brown
		testDencoder("hsl(0deg 100% 25.1%)", "hsl(0deg 100% 25.1%)"); // maroon
		testDencoder("hsl(60deg 100% 25.1%)", "hsl(60deg 100% 25.1%)"); // olive
		testDencoder("hsl(180deg 100% 25.1%)", "hsl(180deg 100% 25.1%)"); // teal
		testDencoder("hsl(240deg 100% 25.1%)", "hsl(240deg 100% 25.1%)"); // navy
		testDencoder("hsl(0deg 0% 75.29%)", "hsl(0deg 0% 75.29%)"); // silver
		testDencoder("hsl(270deg 50% 40%)", "hsl(270deg 50% 40%)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "hsl(0deg 100% 50%)");
		testDencoder("rgb(255 0 0)", "hsl(0deg 100% 50%)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "hsl(0deg 100% 50% / 0.5)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}

	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<>(0));
		String encStr = ColorHslDencoder.encColorHsl(cond);
		assertEquals(exp, encStr);
	}
}
