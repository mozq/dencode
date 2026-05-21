package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorNameDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "red");
		testDencoder("green", "green");
		testDencoder("lime", "lime");
		testDencoder("blue", "blue");
		testDencoder("yellow", "yellow");
		testDencoder("cyan", "aqua");
		testDencoder("magenta", "fuchsia");
		testDencoder("gray", "gray");
		testDencoder("white", "white");
		testDencoder("black", "black");
		testDencoder("orange", "orange");
		testDencoder("purple", "purple");
		testDencoder("indigo", "indigo");
		testDencoder("pink", "pink");
		testDencoder("brown", "brown");
		testDencoder("maroon", "maroon");
		testDencoder("olive", "olive");
		testDencoder("teal", "teal");
		testDencoder("navy", "navy");
		testDencoder("silver", "silver");
		testDencoder("rebeccapurple", "rebeccapurple");
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "red");
		testDencoder("rgb(255 0 0)", "red");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "rgb(from red r g b / 0.5)");
	}

	@Test
	public void test_alphaClamp() {
		testDencoder("rgba(255 0 0 / 120%)", "red");
		testDencoder("rgba(255 0 0 / 0)", "rgb(from red r g b / 0)");
	}

	@Test
	public void test_transparent() {
		testDencoder("transparent", "transparent");
		testDencoder("rgba(0 0 0 / 0)", "transparent");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}

	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<>(0));
		String encStr = ColorNameDencoder.encColorName(cond);
		assertEquals(exp, encStr);
	}
}
