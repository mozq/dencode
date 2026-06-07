package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorCmykDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorCmykDencoder::encColorCmyk,
			"color.cmyk.profile");

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "device-cmyk(0% 100% 100% 0%)");
		tester.testEncoder("green", "device-cmyk(100% 0% 100% 49.8%)");
		tester.testEncoder("lime", "device-cmyk(100% 0% 100% 0%)");
		tester.testEncoder("blue", "device-cmyk(100% 100% 0% 0%)");
		tester.testEncoder("yellow", "device-cmyk(0% 0% 100% 0%)");
		tester.testEncoder("cyan", "device-cmyk(100% 0% 0% 0%)");
		tester.testEncoder("magenta", "device-cmyk(0% 100% 0% 0%)");
		tester.testEncoder("gray", "device-cmyk(0% 0% 0% 49.8%)");
		tester.testEncoder("white", "device-cmyk(0% 0% 0% 0%)");
		tester.testEncoder("black", "device-cmyk(0% 0% 0% 100%)");
		tester.testEncoder("orange", "device-cmyk(0% 35.29% 100% 0%)");
		tester.testEncoder("purple", "device-cmyk(0% 100% 0% 49.8%)");
		tester.testEncoder("indigo", "device-cmyk(42.31% 100% 0% 49.02%)");
		tester.testEncoder("pink", "device-cmyk(0% 24.71% 20.39% 0%)");
		tester.testEncoder("brown", "device-cmyk(0% 74.55% 74.55% 35.29%)");
		tester.testEncoder("maroon", "device-cmyk(0% 100% 100% 49.8%)");
		tester.testEncoder("olive", "device-cmyk(0% 0% 100% 49.8%)");
		tester.testEncoder("teal", "device-cmyk(100% 0% 0% 49.8%)");
		tester.testEncoder("navy", "device-cmyk(100% 100% 0% 49.8%)");
		tester.testEncoder("silver", "device-cmyk(0% 0% 0% 24.71%)");
		tester.testEncoder("rebeccapurple", "device-cmyk(33.33% 66.67% 0% 40%)");
	}

	@Test
	public void test_identity() {
		tester.testEncoder("device-cmyk(0% 100% 100% 0%)", "device-cmyk(0% 100% 100% 0%)"); // red
		tester.testEncoder("device-cmyk(100% 0% 100% 49.8%)", "device-cmyk(100% 0% 100% 49.8%)"); // green
		tester.testEncoder("device-cmyk(100% 0% 100% 0%)", "device-cmyk(100% 0% 100% 0%)"); // lime
		tester.testEncoder("device-cmyk(100% 100% 0% 0%)", "device-cmyk(100% 100% 0% 0%)"); // blue
		tester.testEncoder("device-cmyk(0% 0% 100% 0%)", "device-cmyk(0% 0% 100% 0%)"); // yellow
		tester.testEncoder("device-cmyk(100% 0% 0% 0%)", "device-cmyk(100% 0% 0% 0%)"); // cyan
		tester.testEncoder("device-cmyk(0% 100% 0% 0%)", "device-cmyk(0% 100% 0% 0%)"); // magenta
		tester.testEncoder("device-cmyk(0% 0% 0% 49.8%)", "device-cmyk(0% 0% 0% 49.8%)"); // gray
		tester.testEncoder("device-cmyk(0% 0% 0% 0%)", "device-cmyk(0% 0% 0% 0%)"); // white
		tester.testEncoder("device-cmyk(0% 0% 0% 100%)", "device-cmyk(0% 0% 0% 100%)"); // black
		tester.testEncoder("device-cmyk(0% 35.29% 100% 0%)", "device-cmyk(0% 35.29% 100% 0%)"); // orange
		tester.testEncoder("device-cmyk(0% 100% 0% 49.8%)", "device-cmyk(0% 100% 0% 49.8%)"); // purple
		tester.testEncoder("device-cmyk(42.31% 100% 0% 49.02%)", "device-cmyk(42.31% 100% 0% 49.02%)"); // indigo
		tester.testEncoder("device-cmyk(0% 24.71% 20.39% 0%)", "device-cmyk(0% 24.71% 20.39% 0%)"); // pink
		tester.testEncoder("device-cmyk(0% 74.55% 74.55% 35.29%)", "device-cmyk(0% 74.55% 74.55% 35.29%)"); // brown
		tester.testEncoder("device-cmyk(0% 100% 100% 49.8%)", "device-cmyk(0% 100% 100% 49.8%)"); // maroon
		tester.testEncoder("device-cmyk(0% 0% 100% 49.8%)", "device-cmyk(0% 0% 100% 49.8%)"); // olive
		tester.testEncoder("device-cmyk(100% 0% 0% 49.8%)", "device-cmyk(100% 0% 0% 49.8%)"); // teal
		tester.testEncoder("device-cmyk(100% 100% 0% 49.8%)", "device-cmyk(100% 100% 0% 49.8%)"); // navy
		tester.testEncoder("device-cmyk(0% 0% 0% 24.71%)", "device-cmyk(0% 0% 0% 24.71%)"); // silver
		tester.testEncoder("device-cmyk(33.33% 66.67% 0% 40%)", "device-cmyk(33.33% 66.67% 0% 40%)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "device-cmyk(0% 100% 100% 0%)");
		tester.testEncoder("rgb(255 0 0)", "device-cmyk(0% 100% 100% 0%)");
	}

	@Test
	public void test_blackBranch() {
		tester.testEncoder("rgb(0 0 0)", "device-cmyk(0% 0% 0% 100%)");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "device-cmyk(0% 100% 100% 0% / 0.5)");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}

	@Test
	public void test_profile() {
		tester.testEncoder("red", "device-cmyk(0% 100% 100% 0%)", tester.options("naive"));
		tester.testEncoder("red", "color(--swop-v2 0% 98.28% 100% 0%)", tester.options("swop-v2"));
		tester.testEncoder("red", "color(--swop2013-c3 0% 94.7% 100% 0%)", tester.options("swop2013-c3"));
		tester.testEncoder("red", "color(--gracol2013 0% 93.17% 99.88% 0%)", tester.options("gracol2013"));
		tester.testEncoder("red", "color(--fogra39 0% 92.77% 99.95% 0%)", tester.options("fogra39"));
		tester.testEncoder("red", "color(--fogra51 0% 97.13% 100% 0%)", tester.options("fogra51"));
		tester.testEncoder("red", "color(--fogra52 0% 97.67% 100% 0%)", tester.options("fogra52"));
	}

	@Test
	public void test_unknownProfile_fallsBackToNaive() {
		tester.testEncoder("red", "device-cmyk(0% 100% 100% 0%)", tester.options("unknown"));
	}

}
