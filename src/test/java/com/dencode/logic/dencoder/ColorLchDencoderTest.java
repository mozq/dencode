package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorLchDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "lch(54.29% 106.8372 40.86deg)");
		testDencoder("green", "lch(46.28% 67.9842 134.38deg)");
		testDencoder("lime", "lch(87.82% 113.3315 134.38deg)");
		testDencoder("blue", "lch(29.57% 131.2014 301.36deg)");
		testDencoder("yellow", "lch(97.61% 94.7123 99.57deg)");
		testDencoder("cyan", "lch(90.67% 52.8198 196.45deg)");
		testDencoder("magenta", "lch(60.17% 111.4002 327.11deg)");
		testDencoder("gray", "lch(53.59% 0 0deg)");
		testDencoder("white", "lch(100% 0 0deg)");
		testDencoder("black", "lch(0% 0 0deg)");
		testDencoder("orange", "lch(75.59% 83.769 70.82deg)");
		testDencoder("purple", "lch(29.69% 66.8257 327.11deg)");
		testDencoder("indigo", "lch(19.72% 71.8177 310.91deg)");
		testDencoder("pink", "lch(83.79% 24.7243 8.75deg)");
		testDencoder("brown", "lch(38.15% 59.5984 32.29deg)");
		testDencoder("maroon", "lch(26.17% 62.4903 39.13deg)");
		testDencoder("olive", "lch(52.15% 56.8151 99.57deg)");
		testDencoder("teal", "lch(47.99% 31.6851 196.45deg)");
		testDencoder("navy", "lch(11.34% 78.7039 301.36deg)");
		testDencoder("silver", "lch(77.7% 0 0deg)");
		testDencoder("rebeccapurple", "lch(32.39% 61.2435 308.86deg)");
	}

	@Test
	public void test_identity() {
		testDencoder("lch(54.29% 106.8372 40.86)", "lch(54.29% 106.8372 40.86deg)"); // red
		testDencoder("lch(46.28% 67.9842 134.38)", "lch(46.28% 67.9842 134.38deg)"); // green
		testDencoder("lch(87.82% 113.3315 134.38)", "lch(87.82% 113.3315 134.38deg)"); // lime
		testDencoder("lch(29.57% 131.2014 301.36)", "lch(29.57% 131.2014 301.36deg)"); // blue
		testDencoder("lch(97.61% 94.7123 99.57)", "lch(97.61% 94.7123 99.57deg)"); // yellow
		testDencoder("lch(90.67% 52.8198 196.45)", "lch(90.67% 52.8198 196.45deg)"); // cyan
		testDencoder("lch(60.17% 111.4002 327.11)", "lch(60.17% 111.4002 327.11deg)"); // magenta
		testDencoder("lch(53.59% 0 0)", "lch(53.59% 0 0deg)"); // gray
		testDencoder("lch(100% 0 0)", "lch(100% 0 0deg)"); // white
		testDencoder("lch(0% 0 0)", "lch(0% 0 0deg)"); // black
		testDencoder("lch(75.59% 83.769 70.82)", "lch(75.59% 83.769 70.82deg)"); // orange
		testDencoder("lch(29.69% 66.8257 327.11)", "lch(29.69% 66.8257 327.11deg)"); // purple
		testDencoder("lch(19.72% 71.8177 310.91)", "lch(19.72% 71.8177 310.91deg)"); // indigo
		testDencoder("lch(83.79% 24.7243 8.75)", "lch(83.79% 24.7243 8.75deg)"); // pink
		testDencoder("lch(38.15% 59.5984 32.29)", "lch(38.15% 59.5984 32.29deg)"); // brown
		testDencoder("lch(26.17% 62.4903 39.13)", "lch(26.17% 62.4903 39.13deg)"); // maroon
		testDencoder("lch(52.15% 56.8151 99.57)", "lch(52.15% 56.8151 99.57deg)"); // olive
		testDencoder("lch(47.99% 31.6851 196.45)", "lch(47.99% 31.6851 196.45deg)"); // teal
		testDencoder("lch(11.34% 78.7039 301.36)", "lch(11.34% 78.7039 301.36deg)"); // navy
		testDencoder("lch(77.7% 0 0)", "lch(77.7% 0 0deg)"); // silver
		testDencoder("lch(32.39% 61.2435 308.86)", "lch(32.39% 61.2435 308.86deg)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "lch(54.29% 106.8372 40.86deg)");
		testDencoder("rgb(255 0 0)", "lch(54.29% 106.8372 40.86deg)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "lch(54.29% 106.8372 40.86deg / 0.5)");
	}

	@Test
	public void test_powerlessHue() {
		testDencoder("lch(50% 0.0015 120)", "lch(50% 0 0deg)");
		testDencoder("lch(50% 0.0016 120)", "lch(50% 0.0016 120deg)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}
	
	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, java.nio.charset.StandardCharsets.UTF_8, "", null, new java.util.HashMap<>(0));
		String encStr = ColorLchDencoder.encColorLch(cond);
		assertEquals(exp, encStr);
	}

}
