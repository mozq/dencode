package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorCMYKDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "device-cmyk(0% 100% 100% 0%)");
		testDencoder("green", "device-cmyk(100% 0% 100% 49.8%)");
		testDencoder("lime", "device-cmyk(100% 0% 100% 0%)");
		testDencoder("blue", "device-cmyk(100% 100% 0% 0%)");
		testDencoder("yellow", "device-cmyk(0% 0% 100% 0%)");
		testDencoder("cyan", "device-cmyk(100% 0% 0% 0%)");
		testDencoder("magenta", "device-cmyk(0% 100% 0% 0%)");
		testDencoder("gray", "device-cmyk(0% 0% 0% 49.8%)");
		testDencoder("white", "device-cmyk(0% 0% 0% 0%)");
		testDencoder("black", "device-cmyk(0% 0% 0% 100%)");
		testDencoder("orange", "device-cmyk(0% 35.29% 100% 0%)");
		testDencoder("purple", "device-cmyk(0% 100% 0% 49.8%)");
		testDencoder("indigo", "device-cmyk(42.31% 100% 0% 49.02%)");
		testDencoder("pink", "device-cmyk(0% 24.71% 20.39% 0%)");
		testDencoder("brown", "device-cmyk(0% 74.55% 74.55% 35.29%)");
		testDencoder("maroon", "device-cmyk(0% 100% 100% 49.8%)");
		testDencoder("olive", "device-cmyk(0% 0% 100% 49.8%)");
		testDencoder("teal", "device-cmyk(100% 0% 0% 49.8%)");
		testDencoder("navy", "device-cmyk(100% 100% 0% 49.8%)");
		testDencoder("silver", "device-cmyk(0% 0% 0% 24.71%)");
		testDencoder("rebeccapurple", "device-cmyk(33.33% 66.67% 0% 40%)");
	}

	@Test
	public void test_identity() {
		testDencoder("device-cmyk(0% 100% 100% 0%)", "device-cmyk(0% 100% 100% 0%)"); // red
		testDencoder("device-cmyk(100% 0% 100% 49.8%)", "device-cmyk(100% 0% 100% 49.8%)"); // green
		testDencoder("device-cmyk(100% 0% 100% 0%)", "device-cmyk(100% 0% 100% 0%)"); // lime
		testDencoder("device-cmyk(100% 100% 0% 0%)", "device-cmyk(100% 100% 0% 0%)"); // blue
		testDencoder("device-cmyk(0% 0% 100% 0%)", "device-cmyk(0% 0% 100% 0%)"); // yellow
		testDencoder("device-cmyk(100% 0% 0% 0%)", "device-cmyk(100% 0% 0% 0%)"); // cyan
		testDencoder("device-cmyk(0% 100% 0% 0%)", "device-cmyk(0% 100% 0% 0%)"); // magenta
		testDencoder("device-cmyk(0% 0% 0% 49.8%)", "device-cmyk(0% 0% 0% 49.8%)"); // gray
		testDencoder("device-cmyk(0% 0% 0% 0%)", "device-cmyk(0% 0% 0% 0%)"); // white
		testDencoder("device-cmyk(0% 0% 0% 100%)", "device-cmyk(0% 0% 0% 100%)"); // black
		testDencoder("device-cmyk(0% 35.29% 100% 0%)", "device-cmyk(0% 35.29% 100% 0%)"); // orange
		testDencoder("device-cmyk(0% 100% 0% 49.8%)", "device-cmyk(0% 100% 0% 49.8%)"); // purple
		testDencoder("device-cmyk(42.31% 100% 0% 49.02%)", "device-cmyk(42.31% 100% 0% 49.02%)"); // indigo
		testDencoder("device-cmyk(0% 24.71% 20.39% 0%)", "device-cmyk(0% 24.71% 20.39% 0%)"); // pink
		testDencoder("device-cmyk(0% 74.55% 74.55% 35.29%)", "device-cmyk(0% 74.55% 74.55% 35.29%)"); // brown
		testDencoder("device-cmyk(0% 100% 100% 49.8%)", "device-cmyk(0% 100% 100% 49.8%)"); // maroon
		testDencoder("device-cmyk(0% 0% 100% 49.8%)", "device-cmyk(0% 0% 100% 49.8%)"); // olive
		testDencoder("device-cmyk(100% 0% 0% 49.8%)", "device-cmyk(100% 0% 0% 49.8%)"); // teal
		testDencoder("device-cmyk(100% 100% 0% 49.8%)", "device-cmyk(100% 100% 0% 49.8%)"); // navy
		testDencoder("device-cmyk(0% 0% 0% 24.71%)", "device-cmyk(0% 0% 0% 24.71%)"); // silver
		testDencoder("device-cmyk(33.33% 66.67% 0% 40%)", "device-cmyk(33.33% 66.67% 0% 40%)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "device-cmyk(0% 100% 100% 0%)");
		testDencoder("rgb(255 0 0)", "device-cmyk(0% 100% 100% 0%)");
	}

	@Test
	public void test_blackBranch() {
		testDencoder("rgb(0 0 0)", "device-cmyk(0% 0% 0% 100%)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "device-cmyk(0% 100% 100% 0% / 0.5)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}

	@Test
	public void test_profile() {
		testDencoder("red", "naive", "device-cmyk(0% 100% 100% 0%)");
		testDencoder("red", "swop-v2", "color(--swop-v2 0% 98.28% 100% 0%)");
		testDencoder("red", "swop2013-c3", "color(--swop2013-c3 0% 94.7% 100% 0%)");
		testDencoder("red", "gracol2013", "color(--gracol2013 0% 93.17% 99.88% 0%)");
		testDencoder("red", "fogra39", "color(--fogra39 0% 92.77% 99.95% 0%)");
		testDencoder("red", "fogra51", "color(--fogra51 0% 97.13% 100% 0%)");
		testDencoder("red", "fogra52", "color(--fogra52 0% 97.67% 100% 0%)");
	}

	@Test
	public void test_unknownProfile_fallsBackToNaive() {
		testDencoder("red", "unknown", "device-cmyk(0% 100% 100% 0%)");
	}

	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<>(0));
		String encStr = ColorCMYKDencoder.encColorCMYKFn(cond);
		assertEquals(exp, encStr);
	}

	private void testDencoder(String val, String profile, String exp) {
		HashMap<String, String> options = new HashMap<>();
		options.put("color.cmyk.profile", profile);

		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, options);
		String encStr = ColorCMYKDencoder.encColorCMYKFn(cond);
		assertEquals(exp, encStr);
	}

}
