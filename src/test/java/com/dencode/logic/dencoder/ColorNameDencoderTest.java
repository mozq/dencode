package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorNameDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorNameDencoder::encColorName);

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "red");
		tester.testEncoder("green", "green");
		tester.testEncoder("lime", "lime");
		tester.testEncoder("blue", "blue");
		tester.testEncoder("yellow", "yellow");
		tester.testEncoder("cyan", "aqua");
		tester.testEncoder("magenta", "fuchsia");
		tester.testEncoder("gray", "gray");
		tester.testEncoder("white", "white");
		tester.testEncoder("black", "black");
		tester.testEncoder("orange", "orange");
		tester.testEncoder("purple", "purple");
		tester.testEncoder("indigo", "indigo");
		tester.testEncoder("pink", "pink");
		tester.testEncoder("brown", "brown");
		tester.testEncoder("maroon", "maroon");
		tester.testEncoder("olive", "olive");
		tester.testEncoder("teal", "teal");
		tester.testEncoder("navy", "navy");
		tester.testEncoder("silver", "silver");
		tester.testEncoder("rebeccapurple", "rebeccapurple");
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "red");
		tester.testEncoder("rgb(255 0 0)", "red");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "rgb(from red r g b / 0.5)");
	}

	@Test
	public void test_alphaClamp() {
		tester.testEncoder("rgba(255 0 0 / 120%)", "red");
		tester.testEncoder("rgba(255 0 0 / 0)", "rgb(from red r g b / 0)");
	}

	@Test
	public void test_transparent() {
		tester.testEncoder("transparent", "transparent");
		tester.testEncoder("rgba(0 0 0 / 0)", "transparent");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}
}
