package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class ColorOklabDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorOklabDencoder::encColorOklab);

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "oklab(62.8% 0.2249 0.1258)");
		tester.testEncoder("green", "oklab(51.98% -0.1403 0.1077)");
		tester.testEncoder("lime", "oklab(86.64% -0.2339 0.1795)");
		tester.testEncoder("blue", "oklab(45.2% -0.0325 -0.3115)");
		tester.testEncoder("yellow", "oklab(96.8% -0.0714 0.1986)");
		tester.testEncoder("cyan", "oklab(90.54% -0.1494 -0.0394)");
		tester.testEncoder("magenta", "oklab(70.17% 0.2746 -0.1692)");
		tester.testEncoder("gray", "oklab(59.99% 0 0)");
		tester.testEncoder("white", "oklab(100% 0 0)");
		tester.testEncoder("black", "oklab(0% 0 0)");
		tester.testEncoder("orange", "oklab(79.27% 0.0566 0.1614)");
		tester.testEncoder("purple", "oklab(42.09% 0.1647 -0.1015)");
		tester.testEncoder("indigo", "oklab(33.9% 0.0942 -0.1526)");
		tester.testEncoder("pink", "oklab(86.77% 0.073 0.0091)");
		tester.testEncoder("brown", "oklab(48.06% 0.144 0.0689)");
		tester.testEncoder("maroon", "oklab(37.67% 0.1349 0.0755)");
		tester.testEncoder("olive", "oklab(58.07% -0.0428 0.1191)");
		tester.testEncoder("teal", "oklab(54.31% -0.0896 -0.0236)");
		tester.testEncoder("navy", "oklab(27.11% -0.0195 -0.1869)");
		tester.testEncoder("silver", "oklab(80.78% 0 0)");
		tester.testEncoder("rebeccapurple", "oklab(44.03% 0.0882 -0.1339)");
	}

	@Test
	public void test_identity() {
		tester.testEncoder("oklab(62.8% 0.2248 0.1258)", "oklab(62.8% 0.2248 0.1258)"); // red
		tester.testEncoder("oklab(51.98% -0.1403 0.1076)", "oklab(51.98% -0.1403 0.1076)"); // green
		tester.testEncoder("oklab(86.64% -0.2339 0.1794)", "oklab(86.64% -0.2339 0.1794)"); // lime
		tester.testEncoder("oklab(45.2% -0.0324 -0.3116)", "oklab(45.2% -0.0324 -0.3116)"); // blue
		tester.testEncoder("oklab(96.8% -0.0714 0.1985)", "oklab(96.8% -0.0714 0.1985)"); // yellow
		tester.testEncoder("oklab(90.54% -0.1495 -0.0395)", "oklab(90.54% -0.1495 -0.0395)"); // cyan
		tester.testEncoder("oklab(70.17% 0.2746 -0.1693)", "oklab(70.17% 0.2746 -0.1693)"); // magenta
		tester.testEncoder("oklab(59.99% 0 0)", "oklab(59.99% 0 0)"); // gray
		tester.testEncoder("oklab(100% 0 0)", "oklab(100% 0 0)"); // white
		tester.testEncoder("oklab(0% 0 0)", "oklab(0% 0 0)"); // black
		tester.testEncoder("oklab(79.27% 0.0566 0.1613)", "oklab(79.27% 0.0566 0.1613)"); // orange
		tester.testEncoder("oklab(42.09% 0.1647 -0.1015)", "oklab(42.09% 0.1647 -0.1015)"); // purple
		tester.testEncoder("oklab(33.9% 0.0942 -0.1526)", "oklab(33.9% 0.0942 -0.1526)"); // indigo
		tester.testEncoder("oklab(86.77% 0.073 0.009)", "oklab(86.77% 0.073 0.009)"); // pink
		tester.testEncoder("oklab(48.06% 0.144 0.0688)", "oklab(48.06% 0.144 0.0688)"); // brown
		tester.testEncoder("oklab(37.67% 0.1349 0.0755)", "oklab(37.67% 0.1349 0.0755)"); // maroon
		tester.testEncoder("oklab(58.07% -0.0428 0.1191)", "oklab(58.07% -0.0428 0.1191)"); // olive
		tester.testEncoder("oklab(54.31% -0.0897 -0.0237)", "oklab(54.31% -0.0897 -0.0237)"); // teal
		tester.testEncoder("oklab(27.11% -0.0195 -0.1869)", "oklab(27.11% -0.0195 -0.1869)"); // navy
		tester.testEncoder("oklab(80.78% 0 0)", "oklab(80.78% 0 0)"); // silver
		tester.testEncoder("oklab(44.03% 0.0882 -0.1339)", "oklab(44.03% 0.0882 -0.1339)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "oklab(62.8% 0.2249 0.1258)");
		tester.testEncoder("rgb(255 0 0)", "oklab(62.8% 0.2249 0.1258)");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "oklab(62.8% 0.2249 0.1258 / 0.5)");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}
}
