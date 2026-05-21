/*!
 * DenCode
 * Copyright 2016 Mozq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.dencode.logic.dencoder;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class ColorHwbDencoderTest {

	@Test
	public void test_blank() {
		testDencoder("", null);
	}

	@Test
	public void test_colorVariations() {
		testDencoder("red", "hwb(0deg 0% 0%)");
		testDencoder("green", "hwb(120deg 0% 49.8%)");
		testDencoder("lime", "hwb(120deg 0% 0%)");
		testDencoder("blue", "hwb(240deg 0% 0%)");
		testDencoder("yellow", "hwb(60deg 0% 0%)");
		testDencoder("cyan", "hwb(180deg 0% 0%)");
		testDencoder("magenta", "hwb(300deg 0% 0%)");
		testDencoder("gray", "hwb(0deg 50.2% 49.8%)");
		testDencoder("white", "hwb(0deg 100% 0%)");
		testDencoder("black", "hwb(0deg 0% 100%)");
		testDencoder("orange", "hwb(38.82deg 0% 0%)");
		testDencoder("purple", "hwb(300deg 0% 49.8%)");
		testDencoder("indigo", "hwb(274.62deg 0% 49.02%)");
		testDencoder("pink", "hwb(349.52deg 75.29% 0%)");
		testDencoder("brown", "hwb(0deg 16.47% 35.29%)");
		testDencoder("maroon", "hwb(0deg 0% 49.8%)");
		testDencoder("olive", "hwb(60deg 0% 49.8%)");
		testDencoder("teal", "hwb(180deg 0% 49.8%)");
		testDencoder("navy", "hwb(240deg 0% 49.8%)");
		testDencoder("silver", "hwb(0deg 75.29% 24.71%)");
		testDencoder("rebeccapurple", "hwb(270deg 20% 40%)");
	}

	@Test
	public void test_identity() {
		testDencoder("hwb(0 0% 0%)", "hwb(0deg 0% 0%)"); // red
		testDencoder("hwb(120 0% 49.8%)", "hwb(120deg 0% 49.8%)"); // green
		testDencoder("hwb(120 0% 0%)", "hwb(120deg 0% 0%)"); // lime
		testDencoder("hwb(240 0% 0%)", "hwb(240deg 0% 0%)"); // blue
		testDencoder("hwb(60 0% 0%)", "hwb(60deg 0% 0%)"); // yellow
		testDencoder("hwb(180 0% 0%)", "hwb(180deg 0% 0%)"); // cyan
		testDencoder("hwb(300 0% 0%)", "hwb(300deg 0% 0%)"); // magenta
		testDencoder("hwb(0 50.2% 49.8%)", "hwb(0deg 50.2% 49.8%)"); // gray
		testDencoder("hwb(0 100% 0%)", "hwb(0deg 100% 0%)"); // white
		testDencoder("hwb(0 0% 100%)", "hwb(0deg 0% 100%)"); // black
		testDencoder("hwb(38.8 0% 0%)", "hwb(38.8deg 0% 0%)"); // orange
		testDencoder("hwb(300 0% 49.8%)", "hwb(300deg 0% 49.8%)"); // purple
		testDencoder("hwb(274.6 0% 49%)", "hwb(274.6deg 0% 49%)"); // indigo
		testDencoder("hwb(349.5 75.3% 0%)", "hwb(349.5deg 75.3% 0%)"); // pink
		testDencoder("hwb(0 16.5% 35.3%)", "hwb(0deg 16.5% 35.3%)"); // brown
		testDencoder("hwb(0 0% 49.8%)", "hwb(0deg 0% 49.8%)"); // maroon
		testDencoder("hwb(60 0% 49.8%)", "hwb(60deg 0% 49.8%)"); // olive
		testDencoder("hwb(180 0% 49.8%)", "hwb(180deg 0% 49.8%)"); // teal
		testDencoder("hwb(240 0% 49.8%)", "hwb(240deg 0% 49.8%)"); // navy
		testDencoder("hwb(0 75.3% 24.7%)", "hwb(0deg 75.3% 24.7%)"); // silver
		testDencoder("hwb(270 20% 40%)", "hwb(270deg 20% 40%)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		testDencoder("#ff0000", "hwb(0deg 0% 0%)");
		testDencoder("rgb(255 0 0)", "hwb(0deg 0% 0%)");
	}

	@Test
	public void test_alpha() {
		testDencoder("rgba(255 0 0 / 0.5)", "hwb(0deg 0% 0% / 0.5)");
	}

	@Test
	public void test_invalid() {
		testDencoder("x", null);
	}
	
	private void testDencoder(String val, String exp) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<>(0));
		String encStr = ColorHwbDencoder.encColorHwb(cond);
		assertEquals(exp, encStr);
	}
}
