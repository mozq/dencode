package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorOklchDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "oklch(62.8% 0.2577 29.23deg)");
		testDencoder("green", "oklch(51.98% 0.1769 142.5deg)");
		testDencoder("lime", "oklch(86.64% 0.2948 142.5deg)");
		testDencoder("blue", "oklch(45.2% 0.3132 264.05deg)");
		testDencoder("yellow", "oklch(96.8% 0.211 109.77deg)");
		testDencoder("cyan", "oklch(90.54% 0.1546 194.77deg)");
		testDencoder("magenta", "oklch(70.17% 0.3225 328.36deg)");
		testDencoder("gray", "oklch(59.99% 0 0deg)");
		testDencoder("white", "oklch(100% 0 0deg)");
		testDencoder("black", "oklch(0% 0 0deg)");
		testDencoder("orange", "oklch(79.27% 0.171 70.67deg)");
		testDencoder("purple", "oklch(42.09% 0.1935 328.36deg)");
		testDencoder("indigo", "oklch(33.9% 0.1793 301.68deg)");
		testDencoder("pink", "oklch(86.77% 0.0735 7.09deg)");
		testDencoder("brown", "oklch(48.06% 0.1597 25.56deg)");
		testDencoder("maroon", "oklch(37.67% 0.1546 29.23deg)");
		testDencoder("olive", "oklch(58.07% 0.1266 109.77deg)");
		testDencoder("teal", "oklch(54.31% 0.0927 194.77deg)");
		testDencoder("navy", "oklch(27.11% 0.1879 264.05deg)");
		testDencoder("silver", "oklch(80.78% 0 0deg)");
		testDencoder("rebeccapurple", "oklch(44.03% 0.1603 303.37deg)");
	}

	@Test
	public void test_identity() {
		testDencoder("oklch(62.8% 0.2576 29.23)", "oklch(62.8% 0.2576 29.23deg)"); // red
		testDencoder("oklch(51.98% 0.1768 142.51)", "oklch(51.98% 0.1768 142.51deg)"); // green
		testDencoder("oklch(86.64% 0.2948 142.51)", "oklch(86.64% 0.2948 142.51deg)"); // lime
		testDencoder("oklch(45.2% 0.3133 264.06)", "oklch(45.2% 0.3133 264.06deg)"); // blue
		testDencoder("oklch(96.8% 0.2109 109.79)", "oklch(96.8% 0.2109 109.79deg)"); // yellow
		testDencoder("oklch(90.54% 0.1546 194.81)", "oklch(90.54% 0.1546 194.81deg)"); // cyan
		testDencoder("oklch(70.17% 0.3225 328.35)", "oklch(70.17% 0.3225 328.35deg)"); // magenta
		testDencoder("oklch(59.99% 0 0)", "oklch(59.99% 0 0deg)"); // gray
		testDencoder("oklch(100% 0 0)", "oklch(100% 0 0deg)"); // white
		testDencoder("oklch(0% 0 0)", "oklch(0% 0 0deg)"); // black
		testDencoder("oklch(79.27% 0.1709 70.67)", "oklch(79.27% 0.1709 70.67deg)"); // orange
		testDencoder("oklch(42.09% 0.1935 328.35)", "oklch(42.09% 0.1935 328.35deg)"); // purple
		testDencoder("oklch(33.9% 0.1793 301.68)", "oklch(33.9% 0.1793 301.68deg)"); // indigo
		testDencoder("oklch(86.77% 0.0735 7.01)", "oklch(86.77% 0.0735 7.01deg)"); // pink
		testDencoder("oklch(48.06% 0.1596 25.55)", "oklch(48.06% 0.1596 25.55deg)"); // brown
		testDencoder("oklch(37.67% 0.1545 29.23)", "oklch(37.67% 0.1545 29.23deg)"); // maroon
		testDencoder("oklch(58.07% 0.1265 109.79)", "oklch(58.07% 0.1265 109.79deg)"); // olive
		testDencoder("oklch(54.31% 0.0927 194.81)", "oklch(54.31% 0.0927 194.81deg)"); // teal
		testDencoder("oklch(27.11% 0.188 264.06)", "oklch(27.11% 0.188 264.06deg)"); // navy
		testDencoder("oklch(80.78% 0 0)", "oklch(80.78% 0 0deg)"); // silver
		testDencoder("oklch(44.03% 0.1604 303.36)", "oklch(44.03% 0.1604 303.36deg)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "oklch(62.8% 0.2577 29.23deg)");
		testDencoder("rgb(255 0 0)", "oklch(62.8% 0.2577 29.23deg)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "oklch(62.8% 0.2577 29.23deg / 0.5)");
	}

	@Test
	public void test_powerlessHue() {
		testDencoder("oklch(50% 0.000004 120)", "oklch(50% 0 0deg)");
		testDencoder("oklch(50% 0.00006 120)", "oklch(50% 0.0001 120deg)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}

	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<>(0));
		String encStr = ColorOklchDencoder.encColorOklch(cond);
		assertEquals(exp, encStr);
	}
}
