package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorLchDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorLchDencoder::encColorLch);

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "lch(54.29% 106.8372 40.86deg)");
		tester.testEncoder("green", "lch(46.28% 67.9842 134.38deg)");
		tester.testEncoder("lime", "lch(87.82% 113.3315 134.38deg)");
		tester.testEncoder("blue", "lch(29.57% 131.2014 301.36deg)");
		tester.testEncoder("yellow", "lch(97.61% 94.7123 99.57deg)");
		tester.testEncoder("cyan", "lch(90.67% 52.8198 196.45deg)");
		tester.testEncoder("magenta", "lch(60.17% 111.4002 327.11deg)");
		tester.testEncoder("gray", "lch(53.59% 0 0deg)");
		tester.testEncoder("white", "lch(100% 0 0deg)");
		tester.testEncoder("black", "lch(0% 0 0deg)");
		tester.testEncoder("orange", "lch(75.59% 83.769 70.82deg)");
		tester.testEncoder("purple", "lch(29.69% 66.8257 327.11deg)");
		tester.testEncoder("indigo", "lch(19.72% 71.8177 310.91deg)");
		tester.testEncoder("pink", "lch(83.79% 24.7243 8.75deg)");
		tester.testEncoder("brown", "lch(38.15% 59.5984 32.29deg)");
		tester.testEncoder("maroon", "lch(26.17% 62.4903 39.13deg)");
		tester.testEncoder("olive", "lch(52.15% 56.8151 99.57deg)");
		tester.testEncoder("teal", "lch(47.99% 31.6851 196.45deg)");
		tester.testEncoder("navy", "lch(11.34% 78.7039 301.36deg)");
		tester.testEncoder("silver", "lch(77.7% 0 0deg)");
		tester.testEncoder("rebeccapurple", "lch(32.39% 61.2435 308.86deg)");
	}

	@Test
	public void test_identity() {
		tester.testEncoder("lch(54.29% 106.8372 40.86)", "lch(54.29% 106.8372 40.86deg)"); // red
		tester.testEncoder("lch(46.28% 67.9842 134.38)", "lch(46.28% 67.9842 134.38deg)"); // green
		tester.testEncoder("lch(87.82% 113.3315 134.38)", "lch(87.82% 113.3315 134.38deg)"); // lime
		tester.testEncoder("lch(29.57% 131.2014 301.36)", "lch(29.57% 131.2014 301.36deg)"); // blue
		tester.testEncoder("lch(97.61% 94.7123 99.57)", "lch(97.61% 94.7123 99.57deg)"); // yellow
		tester.testEncoder("lch(90.67% 52.8198 196.45)", "lch(90.67% 52.8198 196.45deg)"); // cyan
		tester.testEncoder("lch(60.17% 111.4002 327.11)", "lch(60.17% 111.4002 327.11deg)"); // magenta
		tester.testEncoder("lch(53.59% 0 0)", "lch(53.59% 0 0deg)"); // gray
		tester.testEncoder("lch(100% 0 0)", "lch(100% 0 0deg)"); // white
		tester.testEncoder("lch(0% 0 0)", "lch(0% 0 0deg)"); // black
		tester.testEncoder("lch(75.59% 83.769 70.82)", "lch(75.59% 83.769 70.82deg)"); // orange
		tester.testEncoder("lch(29.69% 66.8257 327.11)", "lch(29.69% 66.8257 327.11deg)"); // purple
		tester.testEncoder("lch(19.72% 71.8177 310.91)", "lch(19.72% 71.8177 310.91deg)"); // indigo
		tester.testEncoder("lch(83.79% 24.7243 8.75)", "lch(83.79% 24.7243 8.75deg)"); // pink
		tester.testEncoder("lch(38.15% 59.5984 32.29)", "lch(38.15% 59.5984 32.29deg)"); // brown
		tester.testEncoder("lch(26.17% 62.4903 39.13)", "lch(26.17% 62.4903 39.13deg)"); // maroon
		tester.testEncoder("lch(52.15% 56.8151 99.57)", "lch(52.15% 56.8151 99.57deg)"); // olive
		tester.testEncoder("lch(47.99% 31.6851 196.45)", "lch(47.99% 31.6851 196.45deg)"); // teal
		tester.testEncoder("lch(11.34% 78.7039 301.36)", "lch(11.34% 78.7039 301.36deg)"); // navy
		tester.testEncoder("lch(77.7% 0 0)", "lch(77.7% 0 0deg)"); // silver
		tester.testEncoder("lch(32.39% 61.2435 308.86)", "lch(32.39% 61.2435 308.86deg)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "lch(54.29% 106.8372 40.86deg)");
		tester.testEncoder("rgb(255 0 0)", "lch(54.29% 106.8372 40.86deg)");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "lch(54.29% 106.8372 40.86deg / 0.5)");
	}

	@Test
	public void test_powerlessHue() {
		tester.testEncoder("lch(50% 0.0015 120)", "lch(50% 0 0deg)");
		tester.testEncoder("lch(50% 0.0016 120)", "lch(50% 0.0016 120deg)");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}

}
