package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorLabDencoderTest {

	@Test
	public void test() {
		// Blank
		testDencoder("", null);
		
		// Color variations
		testDencoder("red", "lab(54.29% 80.8125 69.885)");
		testDencoder("blue", "lab(29.57% 68.2987 -112.0294)");
		testDencoder("green", "lab(46.28% -47.5621 48.5837)");
		testDencoder("yellow", "lab(97.61% -15.7529 93.3885)");
		testDencoder("purple", "lab(29.69% 56.1179 -36.2913)");
		testDencoder("cyan", "lab(90.67% -50.6654 -14.962)");
		testDencoder("white", "lab(100% 0 0)");
		testDencoder("black", "lab(0% 0 0)");
		
		testDencoder("lab(54.29% 80.8125 69.885)", "lab(54.29% 80.8111 69.8838)"); // red
		testDencoder("lab(29.57% 68.2987 -112.0294)", "lab(29.57% 68.2973 -112.027)"); // blue
		testDencoder("lab(46.28% -47.5621 48.5837)", "lab(46.28% -47.5621 48.5837)"); // green
		testDencoder("lab(97.61% -15.7529 93.3885)", "lab(97.61% -15.7527 93.3861)"); // yellow
		testDencoder("lab(29.69% 56.1179 -36.2913)", "lab(29.69% 56.1162 -36.2904)"); // purple
		testDencoder("lab(90.67% -50.6654 -14.962)", "lab(90.67% -50.6633 -14.9615)"); // cyan
		testDencoder("lab(100% 0 0)", "lab(100% 0 0)"); // white
		testDencoder("lab(0% 0 0)", "lab(0% 0 0)"); // black
		
		testDencoder("#ff0000", "lab(54.29% 80.8125 69.885)");
		testDencoder("rgb(255 0 0)", "lab(54.29% 80.8125 69.885)");
		
		testDencoder("rgba(255 0 0 / 0.5)", "lab(54.29% 80.8125 69.885 / 0.5)");
		
		testDencoder("x", null);
	}
	
	private void testDencoder(String val, String expected) {
		DencodeCondition cond = new DencodeCondition(val, java.nio.charset.StandardCharsets.UTF_8, "\r\n", null, new java.util.HashMap<>());
		String actual = ColorLabDencoder.encColorLab(cond);
		assertEquals(expected, actual);
	}

}
