package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorOklchDencoderTest {

	@Test
	public void test() {
		// Blank
		testDencoder("", null);
		
		// Color variations
		testDencoder("red", "oklch(62.8% 0.2577 29.23)");
		testDencoder("blue", "oklch(45.2% 0.3132 264.05)");
		testDencoder("green", "oklch(51.98% 0.1769 142.5)");
		testDencoder("yellow", "oklch(96.8% 0.211 109.77)");
		testDencoder("purple", "oklch(42.09% 0.1935 328.36)");
		testDencoder("cyan", "oklch(90.54% 0.1546 194.77)");
		testDencoder("black", "oklch(0% 0 0)");
		testDencoder("white", "oklch(100% 0 89.88)");
		
		testDencoder("oklch(62.8% 0.2577 29.23)", "oklch(62.8% 0.2577 29.23)"); // red
		testDencoder("oklch(45.2% 0.3132 264.05)", "oklch(45.2% 0.3132 264.05)"); // blue
		testDencoder("oklch(51.98% 0.1769 142.5)", "oklch(51.98% 0.1769 142.5)"); // green
		testDencoder("oklch(96.8% 0.211 109.77)", "oklch(96.8% 0.211 109.77)"); // yellow
		testDencoder("oklch(42.09% 0.1935 328.36)", "oklch(42.09% 0.1935 328.36)"); // purple
		testDencoder("oklch(90.54% 0.1546 194.77)", "oklch(90.54% 0.1546 194.77)"); // cyan
		testDencoder("oklch(100% 0 89.88)", "oklch(100% 0 89.88)"); // white
		testDencoder("oklch(0% 0 0)", "oklch(0% 0 0)"); // black
		
		testDencoder("#ff0000", "oklch(62.8% 0.2577 29.23)");
		testDencoder("rgb(255 0 0)", "oklch(62.8% 0.2577 29.23)");
		
		testDencoder("rgba(255 0 0 / 0.5)", "oklch(62.8% 0.2577 29.23 / 0.5)");
		
		testDencoder("x", null);
	}

	private void testDencoder(String value, String expectedEncodedValue) {
		String encodedValue = ColorOklchDencoder.encColorOklch(new DencodeCondition(value, StandardCharsets.UTF_8, "\r\n", null, new HashMap<>()));
		assertEquals(expectedEncodedValue, encodedValue);
	}
}
