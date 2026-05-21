package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorOklabDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "oklab(62.8% 0.2249 0.1258)");
		testDencoder("green", "oklab(51.98% -0.1403 0.1077)");
		testDencoder("lime", "oklab(86.64% -0.2339 0.1795)");
		testDencoder("blue", "oklab(45.2% -0.0325 -0.3115)");
		testDencoder("yellow", "oklab(96.8% -0.0714 0.1986)");
		testDencoder("cyan", "oklab(90.54% -0.1494 -0.0394)");
		testDencoder("magenta", "oklab(70.17% 0.2746 -0.1692)");
		testDencoder("gray", "oklab(59.99% 0 0)");
		testDencoder("white", "oklab(100% 0 0)");
		testDencoder("black", "oklab(0% 0 0)");
		testDencoder("orange", "oklab(79.27% 0.0566 0.1614)");
		testDencoder("purple", "oklab(42.09% 0.1647 -0.1015)");
		testDencoder("indigo", "oklab(33.9% 0.0942 -0.1526)");
		testDencoder("pink", "oklab(86.77% 0.073 0.0091)");
		testDencoder("brown", "oklab(48.06% 0.144 0.0689)");
		testDencoder("maroon", "oklab(37.67% 0.1349 0.0755)");
		testDencoder("olive", "oklab(58.07% -0.0428 0.1191)");
		testDencoder("teal", "oklab(54.31% -0.0896 -0.0236)");
		testDencoder("navy", "oklab(27.11% -0.0195 -0.1869)");
		testDencoder("silver", "oklab(80.78% 0 0)");
		testDencoder("rebeccapurple", "oklab(44.03% 0.0882 -0.1339)");
	}

	@Test
	public void test_identity() {
		testDencoder("oklab(62.8% 0.2248 0.1258)", "oklab(62.8% 0.2248 0.1258)"); // red
		testDencoder("oklab(51.98% -0.1403 0.1076)", "oklab(51.98% -0.1403 0.1076)"); // green
		testDencoder("oklab(86.64% -0.2339 0.1794)", "oklab(86.64% -0.2339 0.1794)"); // lime
		testDencoder("oklab(45.2% -0.0324 -0.3116)", "oklab(45.2% -0.0324 -0.3116)"); // blue
		testDencoder("oklab(96.8% -0.0714 0.1985)", "oklab(96.8% -0.0714 0.1985)"); // yellow
		testDencoder("oklab(90.54% -0.1495 -0.0395)", "oklab(90.54% -0.1495 -0.0395)"); // cyan
		testDencoder("oklab(70.17% 0.2746 -0.1693)", "oklab(70.17% 0.2746 -0.1693)"); // magenta
		testDencoder("oklab(59.99% 0 0)", "oklab(59.99% 0 0)"); // gray
		testDencoder("oklab(100% 0 0)", "oklab(100% 0 0)"); // white
		testDencoder("oklab(0% 0 0)", "oklab(0% 0 0)"); // black
		testDencoder("oklab(79.27% 0.0566 0.1613)", "oklab(79.27% 0.0566 0.1613)"); // orange
		testDencoder("oklab(42.09% 0.1647 -0.1015)", "oklab(42.09% 0.1647 -0.1015)"); // purple
		testDencoder("oklab(33.9% 0.0942 -0.1526)", "oklab(33.9% 0.0942 -0.1526)"); // indigo
		testDencoder("oklab(86.77% 0.073 0.009)", "oklab(86.77% 0.073 0.009)"); // pink
		testDencoder("oklab(48.06% 0.144 0.0688)", "oklab(48.06% 0.144 0.0688)"); // brown
		testDencoder("oklab(37.67% 0.1349 0.0755)", "oklab(37.67% 0.1349 0.0755)"); // maroon
		testDencoder("oklab(58.07% -0.0428 0.1191)", "oklab(58.07% -0.0428 0.1191)"); // olive
		testDencoder("oklab(54.31% -0.0897 -0.0237)", "oklab(54.31% -0.0897 -0.0237)"); // teal
		testDencoder("oklab(27.11% -0.0195 -0.1869)", "oklab(27.11% -0.0195 -0.1869)"); // navy
		testDencoder("oklab(80.78% 0 0)", "oklab(80.78% 0 0)"); // silver
		testDencoder("oklab(44.03% 0.0882 -0.1339)", "oklab(44.03% 0.0882 -0.1339)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "oklab(62.8% 0.2249 0.1258)");
		testDencoder("rgb(255 0 0)", "oklab(62.8% 0.2249 0.1258)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "oklab(62.8% 0.2249 0.1258 / 0.5)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}

	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<>(0));
		String encStr = ColorOklabDencoder.encColorOklab(cond);
		assertEquals(exp, encStr);
	}
}
