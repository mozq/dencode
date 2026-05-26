package com.dencode.logic.parser;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.color.Color;

public class ColorParserTest {
	
	private static final double DELTA = 0.03;
	
	private static void assertColorRgb(double[] expected, Color actual, double delta) {
		if (expected == null) {
			assertNull(actual);
			return;
		}
		
		assertArrayEquals(expected, new double[] {actual.rgb()[0], actual.rgb()[1], actual.rgb()[2], actual.alpha()}, delta);
	}
	
	@Test
	public void testParseColor_Name() {
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("red"), DELTA);
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("blue"), DELTA);
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("green"), DELTA);
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("yellow"), DELTA);
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("purple"), DELTA);
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("cyan"), DELTA);
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("black"), DELTA);
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("white"), DELTA);
	}
	
	@Test
	public void testParseColor_RgbHex() {
		// 6-digit hex
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#ff0000"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("#0000ff"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("#008000"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("#ffff00"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("#800080"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("#00ffff"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#000000"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("#ffffff"), DELTA); // white
		
		// 3-digit hex
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#f00"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("#00f"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#000"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("#fff"), DELTA); // white
		
		// 8-digit hex (with alpha)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("#ff000080"), DELTA);
		
		// 4-digit hex (with alpha)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.53}, ColorParser.parseColor("#f008"), DELTA);
		
		// 0x-prefixed hex (ARGB)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("0xff0000"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("0x80ff0000"), DELTA);

		// Without # prefix
		assertNull(ColorParser.parseColor("ff0000"));
		assertNull(ColorParser.parseColor("f00"));
	}
	
	@Test
	public void testParseColor_Rgb() {
		// Comma-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(255, 0, 0)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("rgb(0, 0, 255)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("rgb(0, 128, 0)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("rgb(255, 255, 0)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("rgb(128, 0, 128)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("rgb(0, 255, 255)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(0, 0, 0)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("rgb(255, 255, 255)"), DELTA); // white
		
		// Space-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(255 0 0)"), DELTA);
		
		// Alpha (comma)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("rgba(255, 0, 0, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("rgb(255 0 0 / 0.5)"), DELTA);
		
		// Percentages
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(100%, 0%, 0%)"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("rgb(100% 0% 0% / 50%)"), DELTA);
		
		// Boundary
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(0 0 0)"), DELTA);
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("rgb(255 255 255)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("rgb()"));
		assertNull(ColorParser.parseColor("rgb(255, 0)"));
	}

	@Test
	public void testParseColor_SrgbLinear() {
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("color(srgb-linear 1 0 0)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("color(srgb-linear 0 1 0)"), DELTA); // green
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("color(srgb-linear 0 0 1)"), DELTA); // blue
		assertColorRgb(new double[]{0.735, 0.537, 0.881, 1.0}, ColorParser.parseColor("color(srgb-linear 0.5 0.25 0.75)"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("color(srgb-linear 100% 0% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(srgb-linear)"));
	}

	@Test
	public void testParseColor_A98Rgb() {
		assertColorRgb(new double[]{1.158, 0.0, 0.0, 1.0}, ColorParser.parseColor("color(a98-rgb 1 0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.664, 1.0, -0.229, 1.0}, ColorParser.parseColor("color(a98-rgb 0 1 0)"), DELTA); // green
		assertColorRgb(new double[]{0.0, 0.0, 1.019, 1.0}, ColorParser.parseColor("color(a98-rgb 0 0 1)"), DELTA); // blue
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("color(a98-rgb 1 1 1)"), DELTA); // white
		assertColorRgb(new double[]{1.158, 0.0, 0.0, 0.5}, ColorParser.parseColor("color(a98-rgb 100% 0% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(a98-rgb)"));
	}

	@Test
	public void testParseColor_DisplayP3() {
		assertColorRgb(new double[]{1.093, -0.227, -0.150, 1.0}, ColorParser.parseColor("color(display-p3 1 0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.512, 1.018, -0.311, 1.0}, ColorParser.parseColor("color(display-p3 0 1 0)"), DELTA); // green
		assertColorRgb(new double[]{0.0, 0.0, 1.042, 1.0}, ColorParser.parseColor("color(display-p3 0 0 1)"), DELTA); // blue
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("color(display-p3 1 1 1)"), DELTA); // white
		assertColorRgb(new double[]{1.093, -0.227, -0.150, 0.5}, ColorParser.parseColor("color(display-p3 100% 0% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(display-p3)"));
	}

	@Test
	public void testParseColor_ProphotoRgb() {
		assertColorRgb(new double[]{1.363, -0.516, -0.090, 1.0}, ColorParser.parseColor("color(prophoto-rgb 1 0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.869, 1.096, -0.428, 1.0}, ColorParser.parseColor("color(prophoto-rgb 0 1 0)"), DELTA); // green
		assertColorRgb(new double[]{-0.590, -0.038, 1.068, 1.0}, ColorParser.parseColor("color(prophoto-rgb 0 0 1)"), DELTA); // blue
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("color(prophoto-rgb 1 1 1)"), DELTA); // white
		assertColorRgb(new double[]{1.363, -0.516, -0.090, 0.5}, ColorParser.parseColor("color(prophoto-rgb 100% 0% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(prophoto-rgb)"));
	}

	@Test
	public void testParseColor_Rec2020() {
		assertColorRgb(new double[]{1.248, -0.388, -0.144, 1.0}, ColorParser.parseColor("color(rec2020 1 0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.790, 1.056, -0.350, 1.0}, ColorParser.parseColor("color(rec2020 0 1 0)"), DELTA); // green
		assertColorRgb(new double[]{-0.299, -0.089, 1.050, 1.0}, ColorParser.parseColor("color(rec2020 0 0 1)"), DELTA); // blue
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("color(rec2020 1 1 1)"), DELTA); // white
		assertColorRgb(new double[]{1.248, -0.388, -0.144, 0.5}, ColorParser.parseColor("color(rec2020 100% 0% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(rec2020)"));
	}
	
	@Test
	public void testParseColor_Hsl() {
		// Comma-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(0, 100%, 50%)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("hsl(240, 100%, 50%)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("hsl(120, 100%, 25.1%)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("hsl(60, 100%, 50%)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("hsl(300, 100%, 25.1%)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsl(180, 100%, 50%)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(0, 0%, 0%)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsl(0, 0%, 100%)"), DELTA); // white
		
		// Space-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(0 100% 50%)"), DELTA);
		
		// Alpha (comma)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsla(0, 100%, 50%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsl(0 100% 50% / 50%)"), DELTA);
		
		// Boundary: hue=360 wraps to 0
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(360 100% 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("hsl()"));
		assertNull(ColorParser.parseColor("hsl(abc)"));
	}
	
	@Test
	public void testParseColor_Hsv() {
		// Comma-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsv(0, 100%, 100%)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("hsv(240, 100%, 100%)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("hsv(120, 100%, 50.2%)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("hsv(60, 100%, 100%)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("hsv(300, 100%, 50.2%)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsv(180, 100%, 100%)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsv(0, 0%, 0%)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsv(0, 0%, 100%)"), DELTA); // white
		
		// Space-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsv(0 100% 100%)"), DELTA);
		
		// Alpha (comma)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsv(0, 100%, 100%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsv(0 100% 100% / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("hsv()"));
	}
	
	@Test
	public void testParseColor_Hwb() {
		// Space-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hwb(0 0% 0%)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("hwb(240 0% 0%)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("hwb(120 0% 49.8%)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("hwb(60 0% 0%)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("hwb(300 0% 49.8%)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hwb(180 0% 0%)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hwb(0 0% 100%)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hwb(0 100% 0%)"), DELTA); // white
		
		// Comma-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hwb(0, 0%, 0%)"), DELTA);
		
		// Alpha (comma)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hwba(0, 0%, 0%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hwb(0 0% 0% / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("hwb()"));
	}
	
	@Test
	public void testParseColor_Lab() {
		// Color variations
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lab(54.29% 80.8049 69.891)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("lab(29.57% 68.2874 -112.0297)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("lab(46.28% -47.5524 48.5863)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("lab(97.61% -15.7498 93.3936)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("lab(29.69% 56.1117 -36.2927)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lab(90.67% -50.6565 -14.9617)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lab(0% 0 0)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lab(100% 0 0)"), DELTA); // white
		
		// Percentages for a/b (100% = 125)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lab(54.29% 64.644% 55.913%)"), DELTA);
		
		// Alpha
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lab(54.29% 80.8049 69.891 / 0.5)"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lab(54.29% 80.8049 69.891 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("lab()"));
		assertNull(ColorParser.parseColor("lab(50%)"));
	}
	
	@Test
	public void testParseColor_Lch() {
		// Color variations
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lch(54.29% 106.8372 40.86)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("lch(29.57% 131.2014 301.36)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("lch(46.28% 67.9842 134.38)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("lch(97.61% 94.7123 99.57)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("lch(29.69% 66.8257 327.11)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lch(90.67% 52.8198 196.45)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lch(0% 0 0)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lch(100% 0 0)"), DELTA); // white
		
		// Percentage for C (100% = 150)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lch(54.29% 71.2248% 40.86)"), DELTA);
		
		// Alpha
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lch(54.29% 106.8372 40.86 / 0.5)"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lch(54.29% 106.8372 40.86 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("lch()"));
		assertNull(ColorParser.parseColor("lch(50%)"));
	}
	
	@Test
	public void testParseColor_Oklab() {
		// Color variations
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(62.8% 0.2248 0.1258)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("oklab(45.2% -0.0324 -0.3116)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("oklab(51.98% -0.1403 0.1076)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("oklab(96.8% -0.0714 0.1985)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("oklab(42.09% 0.1647 -0.1015)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklab(90.54% -0.1495 -0.0395)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(0% 0 0)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklab(100% 0 0)"), DELTA); // white
		
		// Non-percentage L
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(0.628 0.2248 0.1258)"), DELTA);
		
		// Percentages for a/b (100% = 0.4)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(62.8% 56.2% 31.45%)"), DELTA);
		
		// Alpha
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklab(62.8% 0.2248 0.1258 / 0.5)"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklab(62.8% 0.2248 0.1258 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("oklab()"));
		assertNull(ColorParser.parseColor("oklab(62.8% 0.2248)"));
	}
	
	@Test
	public void testParseColor_Oklch() {
		// Color variations
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(62.8% 0.2576 29.23)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("oklch(45.2% 0.3133 264.06)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("oklch(51.98% 0.1768 142.51)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("oklch(96.8% 0.2109 109.79)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("oklch(42.09% 0.1935 328.35)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklch(90.54% 0.1546 194.81)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(0% 0 0)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklch(100% 0 0)"), DELTA); // white
		
		// Non-percentage L
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(0.628 0.2576 29.23)"), DELTA);
		
		// Percentage for C (100% = 0.4)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(62.8% 64.4% 29.23)"), DELTA);
		
		// Hue unit (deg)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(62.8% 0.2576 29.23deg)"), DELTA);
		
		// Alpha
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklch(62.8% 0.2576 29.23 / 0.5)"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklch(62.8% 0.2576 29.23 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("oklch()"));
		assertNull(ColorParser.parseColor("oklch(62.8% 0.2576)"));
	}
	
	@Test
	public void testParseColor_Cmyk() {
		// Color variations (comma-separated, device-cmyk)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("device-cmyk(0%, 100%, 100%, 0%)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("device-cmyk(100%, 100%, 0%, 0%)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("device-cmyk(100%, 0%, 100%, 50%)"), DELTA); // green
		assertColorRgb(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("device-cmyk(0%, 0%, 100%, 0%)"), DELTA); // yellow
		assertColorRgb(new double[]{0.5, 0.0, 1.0, 1.0}, ColorParser.parseColor("device-cmyk(50%, 100%, 0%, 0%)"), DELTA); // purple
		assertColorRgb(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("device-cmyk(100%, 0%, 0%, 0%)"), DELTA); // cyan
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("device-cmyk(0%, 0%, 0%, 100%)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("device-cmyk(0%, 0%, 0%, 0%)"), DELTA); // white
		
		// Space-separated
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("device-cmyk(0 100% 100% 0)"), DELTA);
		
		// Alpha (comma)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("device-cmyk(0%, 100%, 100%, 0%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("device-cmyk(0 100% 100% 0 / 50%)"), DELTA);
		
		// cmyk alias
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("cmyk(0%, 100%, 100%, 0%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("device-cmyk()"));
	}
	
	@Test
	public void testParseColor_CmykFogra39() {
		assertColorRgb(new double[]{0.892, 0.122, 0.145, 1.0}, ColorParser.parseColor("color(--fogra39 0 1.0 1.0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.452, 0.628, 0.892, 1.0}, ColorParser.parseColor("color(--fogra39 1.0 0 0 0)"), DELTA); // cyan
		assertColorRgb(new double[]{0.169, 0.168, 0.164, 1.0}, ColorParser.parseColor("color(--fogra39 0 0 0 1.0)"), DELTA); // black
		assertColorRgb(new double[]{0.892, 0.122, 0.145, 0.5}, ColorParser.parseColor("color(--fogra39 0% 100% 100% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(--fogra39)"));
	}

	@Test
	public void testParseColor_CmykApproxFogra51() {
		assertColorRgb(new double[]{0.906, 0.138, 0.161, 1.0}, ColorParser.parseColor("color(--fogra51 0 1.0 1.0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.437, 0.639, 0.899, 1.0}, ColorParser.parseColor("color(--fogra51 1.0 0 0 0)"), DELTA); // cyan
		assertColorRgb(new double[]{0.168, 0.168, 0.160, 1.0}, ColorParser.parseColor("color(--fogra51 0 0 0 1.0)"), DELTA); // black
		assertColorRgb(new double[]{0.906, 0.138, 0.161, 0.5}, ColorParser.parseColor("color(--fogra51 0% 100% 100% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(--fogra51)"));
	}

	@Test
	public void testParseColor_CmykApproxFogra52() {
		assertColorRgb(new double[]{0.902, 0.331, 0.331, 1.0}, ColorParser.parseColor("color(--fogra52 0 1.0 1.0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.214, 0.658, 0.887, 1.0}, ColorParser.parseColor("color(--fogra52 1.0 0 0 0)"), DELTA); // cyan
		assertColorRgb(new double[]{0.338, 0.327, 0.299, 1.0}, ColorParser.parseColor("color(--fogra52 0 0 0 1.0)"), DELTA); // black
		assertColorRgb(new double[]{0.902, 0.331, 0.331, 0.5}, ColorParser.parseColor("color(--fogra52 0% 100% 100% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(--fogra52)"));
	}

	@Test
	public void testParseColor_CmykGracol2013() {
		assertColorRgb(new double[]{0.889, 0.133, 0.140, 1.0}, ColorParser.parseColor("color(--gracol2013 0 1.0 1.0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.446, 0.640, 0.892, 1.0}, ColorParser.parseColor("color(--gracol2013 1.0 0 0 0)"), DELTA); // cyan
		assertColorRgb(new double[]{0.168, 0.168, 0.161, 1.0}, ColorParser.parseColor("color(--gracol2013 0 0 0 1.0)"), DELTA); // black
		assertColorRgb(new double[]{0.889, 0.133, 0.140, 0.5}, ColorParser.parseColor("color(--gracol2013 0% 100% 100% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(--gracol2013)"));
	}

	@Test
	public void testParseColor_CmykSwopV2() {
		assertColorRgb(new double[]{0.932, 0.194, 0.219, 1.0}, ColorParser.parseColor("color(--swop-v2 0 1.0 1.0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.467, 0.688, 0.939, 1.0}, ColorParser.parseColor("color(--swop-v2 1.0 0 0 0)"), DELTA); // cyan
		assertColorRgb(new double[]{0.212, 0.208, 0.211, 1.0}, ColorParser.parseColor("color(--swop-v2 0 0 0 1.0)"), DELTA); // black
		assertColorRgb(new double[]{0.932, 0.194, 0.219, 0.5}, ColorParser.parseColor("color(--swop-v2 0% 100% 100% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(--swop-v2)"));
	}

	@Test
	public void testParseColor_CmykSwop2013C3() {
		assertColorRgb(new double[]{0.922, 0.188, 0.189, 1.0}, ColorParser.parseColor("color(--swop2013-c3 0 1.0 1.0 0)"), DELTA); // red
		assertColorRgb(new double[]{-0.443, 0.674, 0.918, 1.0}, ColorParser.parseColor("color(--swop2013-c3 1.0 0 0 0)"), DELTA); // cyan
		assertColorRgb(new double[]{0.205, 0.203, 0.197, 1.0}, ColorParser.parseColor("color(--swop2013-c3 0 0 0 1.0)"), DELTA); // black
		assertColorRgb(new double[]{0.922, 0.188, 0.189, 0.5}, ColorParser.parseColor("color(--swop2013-c3 0% 100% 100% 0% / 50%)"), DELTA);

		assertNull(ColorParser.parseColor("color(--swop2013-c3)"));
	}

	@Test
	public void testParseColor_Xyz() {
		// Color variations (space-separated, color(xyz))
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("color(xyz 0.4124 0.2126 0.0193)"), DELTA); // red
		assertColorRgb(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("color(xyz 0.1805 0.0722 0.9505)"), DELTA); // blue
		assertColorRgb(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("color(xyz 0 0 0)"), DELTA); // black
		assertColorRgb(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("color(xyz 0.9505 1.0 1.0889)"), DELTA); // white
		
		// xyz-d65 alias
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("color(xyz-d65 0.4124 0.2126 0.0193)"), DELTA); // red
		
		// xyz-d50 alias (D50 white point)
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("color(xyz-d50 0.4360 0.2225 0.0139)"), DELTA); // red
		
		// Percentages
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("color(xyz 41.24% 21.26% 1.93%)"), DELTA);
		
		// Alpha
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("color(xyz 0.4124 0.2126 0.0193 / 0.5)"), DELTA);
		assertColorRgb(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("color(xyz 0.4124 0.2126 0.0193 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("color(xyz)"));
	}
	
	@Test
	public void testParseColor_Null() {
		assertNull(ColorParser.parseColor(null));
	}
	
	@Test
	public void testParseColor_Empty() {
		assertNull(ColorParser.parseColor(""));
	}
	
	@Test
	public void testParseColor_Invalid() {
		assertNull(ColorParser.parseColor("x"));
		assertNull(ColorParser.parseColor("invalidcolor"));
	}
}
