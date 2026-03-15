package com.dencode.logic.parser;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.Test;

public class ColorParserTest {
	
	private static final double DELTA = 0.03;
	
	// ========== Name ==========
	
	@Test
	public void testParseColor_Name() {
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("red"), DELTA);
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("blue"), DELTA);
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("green"), DELTA);
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("yellow"), DELTA);
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("purple"), DELTA);
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("cyan"), DELTA);
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("black"), DELTA);
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("white"), DELTA);
	}
	
	// ========== RGB Hex ==========
	
	@Test
	public void testParseColor_RgbHex() {
		// 6-digit hex
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#ff0000"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("#0000ff"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("#008000"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("#ffff00"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("#800080"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("#00ffff"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#000000"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("#ffffff"), DELTA); // white
		
		// 3-digit hex
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#f00"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("#00f"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("#000"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("#fff"), DELTA); // white
		
		// 8-digit hex (with alpha)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("#ff000080"), DELTA);
		
		// 4-digit hex (with alpha)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.53}, ColorParser.parseColor("#f008"), DELTA);
		
		// Without # prefix
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("ff0000"), DELTA);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("f00"), DELTA);
	}
	
	// ========== RGB ==========
	
	@Test
	public void testParseColor_Rgb() {
		// Comma-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(255, 0, 0)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("rgb(0, 0, 255)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("rgb(0, 128, 0)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("rgb(255, 255, 0)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("rgb(128, 0, 128)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("rgb(0, 255, 255)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(0, 0, 0)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("rgb(255, 255, 255)"), DELTA); // white
		
		// Space-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(255 0 0)"), DELTA);
		
		// Alpha (comma)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("rgba(255, 0, 0, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("rgb(255 0 0 / 0.5)"), DELTA);
		
		// Percentages
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(100%, 0%, 0%)"), DELTA);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("rgb(100% 0% 0% / 50%)"), DELTA);
		
		// Boundary
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("rgb(0 0 0)"), DELTA);
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("rgb(255 255 255)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("rgb()"));
		assertNull(ColorParser.parseColor("rgb(255, 0)"));
	}
	
	// ========== HSL ==========
	
	@Test
	public void testParseColor_Hsl() {
		// Comma-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(0, 100%, 50%)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("hsl(240, 100%, 50%)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("hsl(120, 100%, 25.1%)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("hsl(60, 100%, 50%)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("hsl(300, 100%, 25.1%)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsl(180, 100%, 50%)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(0, 0%, 0%)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsl(0, 0%, 100%)"), DELTA); // white
		
		// Space-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(0 100% 50%)"), DELTA);
		
		// Alpha (comma)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsla(0, 100%, 50%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsl(0 100% 50% / 50%)"), DELTA);
		
		// Boundary: hue=360 wraps to 0
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsl(360 100% 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("hsl()"));
		assertNull(ColorParser.parseColor("hsl(abc)"));
	}
	
	// ========== HSV ==========
	
	@Test
	public void testParseColor_Hsv() {
		// Comma-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsv(0, 100%, 100%)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("hsv(240, 100%, 100%)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("hsv(120, 100%, 50.2%)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("hsv(60, 100%, 100%)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("hsv(300, 100%, 50.2%)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsv(180, 100%, 100%)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsv(0, 0%, 0%)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hsv(0, 0%, 100%)"), DELTA); // white
		
		// Space-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hsv(0 100% 100%)"), DELTA);
		
		// Alpha (comma)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsv(0, 100%, 100%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hsv(0 100% 100% / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("hsv()"));
	}
	
	// ========== HWB ==========
	
	@Test
	public void testParseColor_Hwb() {
		// Space-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hwb(0 0% 0%)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("hwb(240 0% 0%)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("hwb(120 0% 49.8%)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("hwb(60 0% 0%)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("hwb(300 0% 49.8%)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hwb(180 0% 0%)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hwb(0 0% 100%)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("hwb(0 100% 0%)"), DELTA); // white
		
		// Comma-separated
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("hwb(0, 0%, 0%)"), DELTA);
		
		// Alpha (comma)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hwba(0, 0%, 0%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("hwb(0 0% 0% / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("hwb()"));
	}
	
	// ========== Lab ==========
	
	@Test
	public void testParseColor_Lab() {
		// Color variations
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lab(54.29% 80.8125 69.885)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("lab(29.57% 68.2987 -112.0294)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("lab(46.28% -47.5621 48.5837)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("lab(97.61% -15.7529 93.3885)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("lab(29.69% 56.1179 -36.2913)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lab(90.67% -50.6654 -14.962)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lab(0% 0 0)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lab(100% 0 0)"), DELTA); // white
		
		// Percentages for a/b (100% = 125)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lab(54.29% 64.65% 55.908%)"), DELTA);
		
		// Alpha
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lab(54.29% 80.8125 69.885 / 0.5)"), DELTA);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lab(54.29% 80.8125 69.885 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("lab()"));
		assertNull(ColorParser.parseColor("lab(50%)"));
	}
	
	// ========== LCH ==========
	
	@Test
	public void testParseColor_Lch() {
		// Color variations
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lch(54.29% 106.839 40.85)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("lch(29.57% 131.2071 301.37)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("lch(46.28% 67.9892 134.39)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("lch(97.61% 94.7078 99.57)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("lch(29.69% 66.8302 327.11)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lch(90.67% 52.8285 196.45)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lch(0% 0 0)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("lch(100% 0 0)"), DELTA); // white
		
		// Percentage for C (100% = 150)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("lch(54.29% 71.226% 40.85)"), DELTA);
		
		// Alpha
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lch(54.29% 106.839 40.85 / 0.5)"), DELTA);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("lch(54.29% 106.839 40.85 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("lch()"));
		assertNull(ColorParser.parseColor("lch(50%)"));
	}
	
	// ========== Oklab ==========
	
	@Test
	public void testParseColor_Oklab() {
		// Color variations
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(62.8% 0.2249 0.1258)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("oklab(45.2% -0.0325 -0.3115)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("oklab(51.98% -0.1403 0.1077)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("oklab(96.8% -0.0714 0.1986)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("oklab(42.09% 0.1647 -0.1015)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklab(90.54% -0.1494 -0.0394)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(0% 0 0)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklab(100% 0 0)"), DELTA); // white
		
		// Non-percentage L
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(0.628 0.2249 0.1258)"), DELTA);
		
		// Percentages for a/b (100% = 0.4)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklab(62.8% 56.225% 31.45%)"), DELTA);
		
		// Alpha
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklab(62.8% 0.2249 0.1258 / 0.5)"), DELTA);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklab(62.8% 0.2249 0.1258 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("oklab()"));
		assertNull(ColorParser.parseColor("oklab(62.8% 0.2249)"));
	}
	
	// ========== Oklch ==========
	
	@Test
	public void testParseColor_Oklch() {
		// Color variations
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(62.8% 0.2577 29.23)"), DELTA); // red
		assertArrayEquals(new double[]{0.0, 0.0, 1.0, 1.0}, ColorParser.parseColor("oklch(45.2% 0.3132 264.05)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.5, 0.0, 1.0}, ColorParser.parseColor("oklch(51.98% 0.1769 142.5)"), DELTA); // green
		assertArrayEquals(new double[]{1.0, 1.0, 0.0, 1.0}, ColorParser.parseColor("oklch(96.8% 0.211 109.77)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.5, 0.0, 0.5, 1.0}, ColorParser.parseColor("oklch(42.09% 0.1935 328.36)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklch(90.54% 0.1546 194.77)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(0% 0 0)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("oklch(100% 0 0)"), DELTA); // white
		
		// Non-percentage L
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(0.628 0.2577 29.23)"), DELTA);
		
		// Percentage for C (100% = 0.4)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(62.8% 64.425% 29.23)"), DELTA);
		
		// Hue unit (deg)
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 1.0}, ColorParser.parseColor("oklch(62.8% 0.2577 29.23deg)"), DELTA);
		
		// Alpha
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklch(62.8% 0.2577 29.23 / 0.5)"), DELTA);
		assertArrayEquals(new double[]{1.0, 0.0, 0.0, 0.5}, ColorParser.parseColor("oklch(62.8% 0.2577 29.23 / 50%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("oklch()"));
		assertNull(ColorParser.parseColor("oklch(62.8% 0.2577)"));
	}
	
	// ========== CMYK ==========
	
	@Test
	public void testParseColor_Cmyk() {
		// Color variations (comma-separated, device-cmyk)
		assertArrayEquals(new double[]{0.877, 0.118, 0.070, 1.0}, ColorParser.parseColor("device-cmyk(0%, 100%, 100%, 0%)"), DELTA); // red
		assertArrayEquals(new double[]{0.225, 0.136, 0.570, 1.0}, ColorParser.parseColor("device-cmyk(100%, 100%, 0%, 0%)"), DELTA); // blue
		assertArrayEquals(new double[]{0.0, 0.395, 0.199, 1.0}, ColorParser.parseColor("device-cmyk(100%, 0%, 100%, 50%)"), DELTA); // green
		assertArrayEquals(new double[]{0.994, 0.900, 0.0, 1.0}, ColorParser.parseColor("device-cmyk(0%, 0%, 100%, 0%)"), DELTA); // yellow
		assertArrayEquals(new double[]{0.610, 0.066, 0.744, 1.0}, ColorParser.parseColor("device-cmyk(50%, 100%, 0%, 0%)"), DELTA); // purple
		assertArrayEquals(new double[]{0.0, 0.598, 0.811, 1.0}, ColorParser.parseColor("device-cmyk(100%, 0%, 0%, 0%)"), DELTA); // cyan
		assertArrayEquals(new double[]{0.098, 0.101, 0.099, 1.0}, ColorParser.parseColor("device-cmyk(0%, 0%, 0%, 100%)"), DELTA); // black
		assertArrayEquals(new double[]{1.0, 1.0, 1.0, 1.0}, ColorParser.parseColor("device-cmyk(0%, 0%, 0%, 0%)"), DELTA); // white
		
		// Space-separated
		assertArrayEquals(new double[]{0.877, 0.118, 0.070, 1.0}, ColorParser.parseColor("device-cmyk(0 100% 100% 0)"), DELTA);
		
		// Alpha (comma)
		assertArrayEquals(new double[]{0.877, 0.118, 0.070, 0.5}, ColorParser.parseColor("device-cmyk(0%, 100%, 100%, 0%, 0.5)"), DELTA);
		
		// Alpha (slash)
		assertArrayEquals(new double[]{0.877, 0.118, 0.070, 0.5}, ColorParser.parseColor("device-cmyk(0 100% 100% 0 / 50%)"), DELTA);
		
		// cmyk alias
		assertArrayEquals(new double[]{0.877, 0.118, 0.070, 1.0}, ColorParser.parseColor("cmyk(0%, 100%, 100%, 0%)"), DELTA);
		
		// Invalid
		assertNull(ColorParser.parseColor("device-cmyk()"));
	}
	
	// ========== Common ==========
	
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
