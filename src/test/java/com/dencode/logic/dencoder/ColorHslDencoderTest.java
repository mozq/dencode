package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorHslDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorHslDencoder::encColorHsl);

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "hsl(0deg 100% 50%)");
		tester.testEncoder("green", "hsl(120deg 100% 25.1%)");
		tester.testEncoder("lime", "hsl(120deg 100% 50%)");
		tester.testEncoder("blue", "hsl(240deg 100% 50%)");
		tester.testEncoder("yellow", "hsl(60deg 100% 50%)");
		tester.testEncoder("cyan", "hsl(180deg 100% 50%)");
		tester.testEncoder("magenta", "hsl(300deg 100% 50%)");
		tester.testEncoder("gray", "hsl(0deg 0% 50.2%)");
		tester.testEncoder("white", "hsl(0deg 0% 100%)");
		tester.testEncoder("black", "hsl(0deg 0% 0%)");
		tester.testEncoder("orange", "hsl(38.82deg 100% 50%)");
		tester.testEncoder("purple", "hsl(300deg 100% 25.1%)");
		tester.testEncoder("indigo", "hsl(274.62deg 100% 25.49%)");
		tester.testEncoder("pink", "hsl(349.52deg 100% 87.65%)");
		tester.testEncoder("brown", "hsl(0deg 59.42% 40.59%)");
		tester.testEncoder("maroon", "hsl(0deg 100% 25.1%)");
		tester.testEncoder("olive", "hsl(60deg 100% 25.1%)");
		tester.testEncoder("teal", "hsl(180deg 100% 25.1%)");
		tester.testEncoder("navy", "hsl(240deg 100% 25.1%)");
		tester.testEncoder("silver", "hsl(0deg 0% 75.29%)");
		tester.testEncoder("rebeccapurple", "hsl(270deg 50% 40%)");
	}

	@Test
	public void test_identity() {
		tester.testEncoder("hsl(0deg 100% 50%)", "hsl(0deg 100% 50%)"); // red
		tester.testEncoder("hsl(120deg 100% 25.1%)", "hsl(120deg 100% 25.1%)"); // green
		tester.testEncoder("hsl(120deg 100% 50%)", "hsl(120deg 100% 50%)"); // lime
		tester.testEncoder("hsl(240deg 100% 50%)", "hsl(240deg 100% 50%)"); // blue
		tester.testEncoder("hsl(60deg 100% 50%)", "hsl(60deg 100% 50%)"); // yellow
		tester.testEncoder("hsl(180deg 100% 50%)", "hsl(180deg 100% 50%)"); // cyan
		tester.testEncoder("hsl(300deg 100% 50%)", "hsl(300deg 100% 50%)"); // magenta
		tester.testEncoder("hsl(0deg 0% 50.2%)", "hsl(0deg 0% 50.2%)"); // gray
		tester.testEncoder("hsl(0deg 0% 100%)", "hsl(0deg 0% 100%)"); // white
		tester.testEncoder("hsl(0deg 0% 0%)", "hsl(0deg 0% 0%)"); // black
		tester.testEncoder("hsl(38.82deg 100% 50%)", "hsl(38.82deg 100% 50%)"); // orange
		tester.testEncoder("hsl(300deg 100% 25.1%)", "hsl(300deg 100% 25.1%)"); // purple
		tester.testEncoder("hsl(274.62deg 100% 25.49%)", "hsl(274.62deg 100% 25.49%)"); // indigo
		tester.testEncoder("hsl(349.52deg 100% 87.65%)", "hsl(349.52deg 100% 87.65%)"); // pink
		tester.testEncoder("hsl(0deg 59.42% 40.59%)", "hsl(0deg 59.42% 40.59%)"); // brown
		tester.testEncoder("hsl(0deg 100% 25.1%)", "hsl(0deg 100% 25.1%)"); // maroon
		tester.testEncoder("hsl(60deg 100% 25.1%)", "hsl(60deg 100% 25.1%)"); // olive
		tester.testEncoder("hsl(180deg 100% 25.1%)", "hsl(180deg 100% 25.1%)"); // teal
		tester.testEncoder("hsl(240deg 100% 25.1%)", "hsl(240deg 100% 25.1%)"); // navy
		tester.testEncoder("hsl(0deg 0% 75.29%)", "hsl(0deg 0% 75.29%)"); // silver
		tester.testEncoder("hsl(270deg 50% 40%)", "hsl(270deg 50% 40%)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "hsl(0deg 100% 50%)");
		tester.testEncoder("rgb(255 0 0)", "hsl(0deg 100% 50%)");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "hsl(0deg 100% 50% / 0.5)");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}

}
