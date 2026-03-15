package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorOklabDencoderTest {

	@Test
	public void test() {
		// Blank
		testDencoder("", null);
		
		// Color variations
		testDencoder("red", "oklab(62.8% 0.2249 0.1258)");
		testDencoder("blue", "oklab(45.2% -0.0325 -0.3115)");
		testDencoder("green", "oklab(51.98% -0.1403 0.1077)");
		testDencoder("yellow", "oklab(96.8% -0.0714 0.1986)");
		testDencoder("purple", "oklab(42.09% 0.1647 -0.1015)");
		testDencoder("cyan", "oklab(90.54% -0.1494 -0.0394)");
		testDencoder("black", "oklab(0% 0 0)");
		testDencoder("white", "oklab(100% 0 0)");
		
		testDencoder("oklab(62.8% 0.2249 0.1258)", "oklab(62.8% 0.2249 0.1258)"); // red
		testDencoder("oklab(45.2% -0.0325 -0.3115)", "oklab(45.2% -0.0325 -0.3115)"); // blue
		testDencoder("oklab(51.98% -0.1403 0.1077)", "oklab(51.98% -0.1403 0.1077)"); // green
		testDencoder("oklab(96.8% -0.0714 0.1986)", "oklab(96.8% -0.0714 0.1986)"); // yellow
		testDencoder("oklab(42.09% 0.1647 -0.1015)", "oklab(42.09% 0.1647 -0.1015)"); // purple
		testDencoder("oklab(90.54% -0.1494 -0.0394)", "oklab(90.54% -0.1494 -0.0394)"); // cyan
		testDencoder("oklab(100% 0 0)", "oklab(100% 0 0)"); // white
		testDencoder("oklab(0% 0 0)", "oklab(0% 0 0)"); // black
		
		testDencoder("#ff0000", "oklab(62.8% 0.2249 0.1258)");
		testDencoder("rgb(255 0 0)", "oklab(62.8% 0.2249 0.1258)");
		
		testDencoder("rgba(255 0 0 / 0.5)", "oklab(62.8% 0.2249 0.1258 / 0.5)");
		
		testDencoder("x", null);
	}

	private void testDencoder(String value, String expectedEncodedValue) {
		String encodedValue = ColorOklabDencoder.encColorOklab(new DencodeCondition(value, StandardCharsets.UTF_8, "\r\n", null, new HashMap<>()));
		assertEquals(expectedEncodedValue, encodedValue);
	}
}
