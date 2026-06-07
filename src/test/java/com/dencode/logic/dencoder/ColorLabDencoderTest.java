package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorLabDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorLabDencoder::encColorLab);

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "lab(54.29% 80.8049 69.891)");
		tester.testEncoder("green", "lab(46.28% -47.5524 48.5863)");
		tester.testEncoder("lime", "lab(87.82% -79.2711 80.9946)");
		tester.testEncoder("blue", "lab(29.57% 68.2874 -112.0297)");
		tester.testEncoder("yellow", "lab(97.61% -15.7498 93.3936)");
		tester.testEncoder("cyan", "lab(90.67% -50.6565 -14.9617)");
		tester.testEncoder("magenta", "lab(60.17% 93.5396 -60.5008)");
		tester.testEncoder("gray", "lab(53.59% 0 0)");
		tester.testEncoder("white", "lab(100% 0 0)");
		tester.testEncoder("black", "lab(0% 0 0)");
		tester.testEncoder("orange", "lab(75.59% 27.5162 79.1208)");
		tester.testEncoder("purple", "lab(29.69% 56.1117 -36.2927)");
		tester.testEncoder("indigo", "lab(19.72% 47.029 -54.2775)");
		tester.testEncoder("pink", "lab(83.79% 24.4368 3.7594)");
		tester.testEncoder("brown", "lab(38.15% 50.3836 31.8348)");
		tester.testEncoder("maroon", "lab(26.17% 48.4725 39.4393)");
		tester.testEncoder("olive", "lab(52.15% -9.4479 56.0241)");
		tester.testEncoder("teal", "lab(47.99% -30.3874 -8.9751)");
		tester.testEncoder("navy", "lab(11.34% 40.9636 -67.2034)");
		tester.testEncoder("silver", "lab(77.7% 0 0)");
		tester.testEncoder("rebeccapurple", "lab(32.39% 38.423 -47.6911)");
	}

	@Test
	public void test_identity() {
		tester.testEncoder("lab(54.29% 80.8049 69.891)", "lab(54.29% 80.8049 69.891)"); // red
		tester.testEncoder("lab(46.28% -47.5524 48.5863)", "lab(46.28% -47.5524 48.5863)"); // green
		tester.testEncoder("lab(87.82% -79.2711 80.9946)", "lab(87.82% -79.2711 80.9946)"); // lime
		tester.testEncoder("lab(29.57% 68.2874 -112.0297)", "lab(29.57% 68.2874 -112.0297)"); // blue
		tester.testEncoder("lab(97.61% -15.7498 93.3936)", "lab(97.61% -15.7498 93.3936)"); // yellow
		tester.testEncoder("lab(90.67% -50.6565 -14.9617)", "lab(90.67% -50.6565 -14.9617)"); // cyan
		tester.testEncoder("lab(60.17% 93.5396 -60.5008)", "lab(60.17% 93.5396 -60.5008)"); // magenta
		tester.testEncoder("lab(53.59% 0 0)", "lab(53.59% 0 0)"); // gray
		tester.testEncoder("lab(100% 0 0)", "lab(100% 0 0)"); // white
		tester.testEncoder("lab(0% 0 0)", "lab(0% 0 0)"); // black
		tester.testEncoder("lab(75.59% 27.5162 79.1208)", "lab(75.59% 27.5162 79.1208)"); // orange
		tester.testEncoder("lab(29.69% 56.1117 -36.2927)", "lab(29.69% 56.1117 -36.2927)"); // purple
		tester.testEncoder("lab(19.72% 47.029 -54.2775)", "lab(19.72% 47.029 -54.2775)"); // indigo
		tester.testEncoder("lab(83.79% 24.4368 3.7594)", "lab(83.79% 24.4368 3.7594)"); // pink
		tester.testEncoder("lab(38.15% 50.3836 31.8348)", "lab(38.15% 50.3836 31.8348)"); // brown
		tester.testEncoder("lab(26.17% 48.4725 39.4393)", "lab(26.17% 48.4725 39.4393)"); // maroon
		tester.testEncoder("lab(52.15% -9.4479 56.0241)", "lab(52.15% -9.4479 56.0241)"); // olive
		tester.testEncoder("lab(47.99% -30.3874 -8.9751)", "lab(47.99% -30.3874 -8.9751)"); // teal
		tester.testEncoder("lab(11.34% 40.9636 -67.2034)", "lab(11.34% 40.9636 -67.2034)"); // navy
		tester.testEncoder("lab(77.7% 0 0)", "lab(77.7% 0 0)"); // silver
		tester.testEncoder("lab(32.39% 38.423 -47.6911)", "lab(32.39% 38.423 -47.6911)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "lab(54.29% 80.8049 69.891)");
		tester.testEncoder("rgb(255 0 0)", "lab(54.29% 80.8049 69.891)");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "lab(54.29% 80.8049 69.891 / 0.5)");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}

}
