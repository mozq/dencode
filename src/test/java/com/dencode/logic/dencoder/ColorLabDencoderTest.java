package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorLabDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "lab(54.29% 80.8049 69.891)");
		testDencoder("green", "lab(46.28% -47.5524 48.5863)");
		testDencoder("lime", "lab(87.82% -79.2711 80.9946)");
		testDencoder("blue", "lab(29.57% 68.2874 -112.0297)");
		testDencoder("yellow", "lab(97.61% -15.7498 93.3936)");
		testDencoder("cyan", "lab(90.67% -50.6565 -14.9617)");
		testDencoder("magenta", "lab(60.17% 93.5396 -60.5008)");
		testDencoder("gray", "lab(53.59% 0 0)");
		testDencoder("white", "lab(100% 0 0)");
		testDencoder("black", "lab(0% 0 0)");
		testDencoder("orange", "lab(75.59% 27.5162 79.1208)");
		testDencoder("purple", "lab(29.69% 56.1117 -36.2927)");
		testDencoder("indigo", "lab(19.72% 47.029 -54.2775)");
		testDencoder("pink", "lab(83.79% 24.4368 3.7594)");
		testDencoder("brown", "lab(38.15% 50.3836 31.8348)");
		testDencoder("maroon", "lab(26.17% 48.4725 39.4393)");
		testDencoder("olive", "lab(52.15% -9.4479 56.0241)");
		testDencoder("teal", "lab(47.99% -30.3874 -8.9751)");
		testDencoder("navy", "lab(11.34% 40.9636 -67.2034)");
		testDencoder("silver", "lab(77.7% 0 0)");
		testDencoder("rebeccapurple", "lab(32.39% 38.423 -47.6911)");
	}

	@Test
	public void test_identity() {
		testDencoder("lab(54.29% 80.8049 69.891)", "lab(54.29% 80.8049 69.891)"); // red
		testDencoder("lab(46.28% -47.5524 48.5863)", "lab(46.28% -47.5524 48.5863)"); // green
		testDencoder("lab(87.82% -79.2711 80.9946)", "lab(87.82% -79.2711 80.9946)"); // lime
		testDencoder("lab(29.57% 68.2874 -112.0297)", "lab(29.57% 68.2874 -112.0297)"); // blue
		testDencoder("lab(97.61% -15.7498 93.3936)", "lab(97.61% -15.7498 93.3936)"); // yellow
		testDencoder("lab(90.67% -50.6565 -14.9617)", "lab(90.67% -50.6565 -14.9617)"); // cyan
		testDencoder("lab(60.17% 93.5396 -60.5008)", "lab(60.17% 93.5396 -60.5008)"); // magenta
		testDencoder("lab(53.59% 0 0)", "lab(53.59% 0 0)"); // gray
		testDencoder("lab(100% 0 0)", "lab(100% 0 0)"); // white
		testDencoder("lab(0% 0 0)", "lab(0% 0 0)"); // black
		testDencoder("lab(75.59% 27.5162 79.1208)", "lab(75.59% 27.5162 79.1208)"); // orange
		testDencoder("lab(29.69% 56.1117 -36.2927)", "lab(29.69% 56.1117 -36.2927)"); // purple
		testDencoder("lab(19.72% 47.029 -54.2775)", "lab(19.72% 47.029 -54.2775)"); // indigo
		testDencoder("lab(83.79% 24.4368 3.7594)", "lab(83.79% 24.4368 3.7594)"); // pink
		testDencoder("lab(38.15% 50.3836 31.8348)", "lab(38.15% 50.3836 31.8348)"); // brown
		testDencoder("lab(26.17% 48.4725 39.4393)", "lab(26.17% 48.4725 39.4393)"); // maroon
		testDencoder("lab(52.15% -9.4479 56.0241)", "lab(52.15% -9.4479 56.0241)"); // olive
		testDencoder("lab(47.99% -30.3874 -8.9751)", "lab(47.99% -30.3874 -8.9751)"); // teal
		testDencoder("lab(11.34% 40.9636 -67.2034)", "lab(11.34% 40.9636 -67.2034)"); // navy
		testDencoder("lab(77.7% 0 0)", "lab(77.7% 0 0)"); // silver
		testDencoder("lab(32.39% 38.423 -47.6911)", "lab(32.39% 38.423 -47.6911)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "lab(54.29% 80.8049 69.891)");
		testDencoder("rgb(255 0 0)", "lab(54.29% 80.8049 69.891)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "lab(54.29% 80.8049 69.891 / 0.5)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}
	
	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, java.nio.charset.StandardCharsets.UTF_8, "", null, new java.util.HashMap<>(0));
		String encStr = ColorLabDencoder.encColorLab(cond);
		assertEquals(exp, encStr);
	}

}
