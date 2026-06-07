package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorOklchDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorOklchDencoder::encColorOklch);

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "oklch(62.8% 0.2577 29.23deg)");
		tester.testEncoder("green", "oklch(51.98% 0.1769 142.5deg)");
		tester.testEncoder("lime", "oklch(86.64% 0.2948 142.5deg)");
		tester.testEncoder("blue", "oklch(45.2% 0.3132 264.05deg)");
		tester.testEncoder("yellow", "oklch(96.8% 0.211 109.77deg)");
		tester.testEncoder("cyan", "oklch(90.54% 0.1546 194.77deg)");
		tester.testEncoder("magenta", "oklch(70.17% 0.3225 328.36deg)");
		tester.testEncoder("gray", "oklch(59.99% 0 0deg)");
		tester.testEncoder("white", "oklch(100% 0 0deg)");
		tester.testEncoder("black", "oklch(0% 0 0deg)");
		tester.testEncoder("orange", "oklch(79.27% 0.171 70.67deg)");
		tester.testEncoder("purple", "oklch(42.09% 0.1935 328.36deg)");
		tester.testEncoder("indigo", "oklch(33.9% 0.1793 301.68deg)");
		tester.testEncoder("pink", "oklch(86.77% 0.0735 7.09deg)");
		tester.testEncoder("brown", "oklch(48.06% 0.1597 25.56deg)");
		tester.testEncoder("maroon", "oklch(37.67% 0.1546 29.23deg)");
		tester.testEncoder("olive", "oklch(58.07% 0.1266 109.77deg)");
		tester.testEncoder("teal", "oklch(54.31% 0.0927 194.77deg)");
		tester.testEncoder("navy", "oklch(27.11% 0.1879 264.05deg)");
		tester.testEncoder("silver", "oklch(80.78% 0 0deg)");
		tester.testEncoder("rebeccapurple", "oklch(44.03% 0.1603 303.37deg)");
	}

	@Test
	public void test_identity() {
		tester.testEncoder("oklch(62.8% 0.2576 29.23)", "oklch(62.8% 0.2576 29.23deg)"); // red
		tester.testEncoder("oklch(51.98% 0.1768 142.51)", "oklch(51.98% 0.1768 142.51deg)"); // green
		tester.testEncoder("oklch(86.64% 0.2948 142.51)", "oklch(86.64% 0.2948 142.51deg)"); // lime
		tester.testEncoder("oklch(45.2% 0.3133 264.06)", "oklch(45.2% 0.3133 264.06deg)"); // blue
		tester.testEncoder("oklch(96.8% 0.2109 109.79)", "oklch(96.8% 0.2109 109.79deg)"); // yellow
		tester.testEncoder("oklch(90.54% 0.1546 194.81)", "oklch(90.54% 0.1546 194.81deg)"); // cyan
		tester.testEncoder("oklch(70.17% 0.3225 328.35)", "oklch(70.17% 0.3225 328.35deg)"); // magenta
		tester.testEncoder("oklch(59.99% 0 0)", "oklch(59.99% 0 0deg)"); // gray
		tester.testEncoder("oklch(100% 0 0)", "oklch(100% 0 0deg)"); // white
		tester.testEncoder("oklch(0% 0 0)", "oklch(0% 0 0deg)"); // black
		tester.testEncoder("oklch(79.27% 0.1709 70.67)", "oklch(79.27% 0.1709 70.67deg)"); // orange
		tester.testEncoder("oklch(42.09% 0.1935 328.35)", "oklch(42.09% 0.1935 328.35deg)"); // purple
		tester.testEncoder("oklch(33.9% 0.1793 301.68)", "oklch(33.9% 0.1793 301.68deg)"); // indigo
		tester.testEncoder("oklch(86.77% 0.0735 7.01)", "oklch(86.77% 0.0735 7.01deg)"); // pink
		tester.testEncoder("oklch(48.06% 0.1596 25.55)", "oklch(48.06% 0.1596 25.55deg)"); // brown
		tester.testEncoder("oklch(37.67% 0.1545 29.23)", "oklch(37.67% 0.1545 29.23deg)"); // maroon
		tester.testEncoder("oklch(58.07% 0.1265 109.79)", "oklch(58.07% 0.1265 109.79deg)"); // olive
		tester.testEncoder("oklch(54.31% 0.0927 194.81)", "oklch(54.31% 0.0927 194.81deg)"); // teal
		tester.testEncoder("oklch(27.11% 0.188 264.06)", "oklch(27.11% 0.188 264.06deg)"); // navy
		tester.testEncoder("oklch(80.78% 0 0)", "oklch(80.78% 0 0deg)"); // silver
		tester.testEncoder("oklch(44.03% 0.1604 303.36)", "oklch(44.03% 0.1604 303.36deg)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "oklch(62.8% 0.2577 29.23deg)");
		tester.testEncoder("rgb(255 0 0)", "oklch(62.8% 0.2577 29.23deg)");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "oklch(62.8% 0.2577 29.23deg / 0.5)");
	}

	@Test
	public void test_powerlessHue() {
		tester.testEncoder("oklch(50% 0.000004 120)", "oklch(50% 0 0deg)");
		tester.testEncoder("oklch(50% 0.00006 120)", "oklch(50% 0.0001 120deg)");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}
}
