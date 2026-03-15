package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorLchDencoderTest {

	@Test
	public void test() {
		// Blank
		testDencoder("", null);
		
		// Color variations
		testDencoder("red", "lch(54.29% 106.839 40.85)");
		testDencoder("blue", "lch(29.57% 131.2071 301.37)");
		testDencoder("green", "lch(46.28% 67.9892 134.39)");
		testDencoder("yellow", "lch(97.61% 94.7078 99.57)");
		testDencoder("purple", "lch(29.69% 66.8302 327.11)");
		testDencoder("cyan", "lch(90.67% 52.8285 196.45)");
		testDencoder("white", "lch(100% 0 0)");
		testDencoder("black", "lch(0% 0 0)");
		
		testDencoder("lch(54.29% 106.839 40.85)", "lch(54.29% 106.8363 40.85)"); // red
		testDencoder("lch(29.57% 131.2071 301.37)", "lch(29.57% 131.2045 301.37)"); // blue
		testDencoder("lch(46.28% 67.9892 134.39)", "lch(46.28% 67.9892 134.39)"); // green
		testDencoder("lch(97.61% 94.7078 99.57)", "lch(97.61% 94.7061 99.57)"); // yellow
		testDencoder("lch(29.69% 66.8302 327.11)", "lch(29.69% 66.8279 327.11)"); // purple
		testDencoder("lch(90.67% 52.8285 196.45)", "lch(90.67% 52.826 196.45)"); // cyan
		testDencoder("lch(100% 0 0)", "lch(100% 0 199.7)"); // white
		testDencoder("lch(0% 0 0)", "lch(0% 0 0)"); // black
		
		testDencoder("#ff0000", "lch(54.29% 106.839 40.85)");
		testDencoder("rgb(255 0 0)", "lch(54.29% 106.839 40.85)");
		
		testDencoder("rgba(255 0 0 / 0.5)", "lch(54.29% 106.839 40.85 / 0.5)");
		
		testDencoder("x", null);
	}
	
	private void testDencoder(String val, String expected) {
		DencodeCondition cond = new DencodeCondition(val, java.nio.charset.StandardCharsets.UTF_8, "\r\n", null, new java.util.HashMap<>());
		String actual = ColorLchDencoder.encColorLch(cond);
		assertEquals(expected, actual);
	}

}
