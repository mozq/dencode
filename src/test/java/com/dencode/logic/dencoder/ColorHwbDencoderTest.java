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

import org.junit.jupiter.api.Test;

public class ColorHwbDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorHwbDencoder::encColorHwb);

	@Test
	public void test_blank() {
		tester.testEncoder("", null);
	}

	@Test
	public void test_colorVariations() {
		tester.testEncoder("red", "hwb(0deg 0% 0%)");
		tester.testEncoder("green", "hwb(120deg 0% 49.8%)");
		tester.testEncoder("lime", "hwb(120deg 0% 0%)");
		tester.testEncoder("blue", "hwb(240deg 0% 0%)");
		tester.testEncoder("yellow", "hwb(60deg 0% 0%)");
		tester.testEncoder("cyan", "hwb(180deg 0% 0%)");
		tester.testEncoder("magenta", "hwb(300deg 0% 0%)");
		tester.testEncoder("gray", "hwb(0deg 50.2% 49.8%)");
		tester.testEncoder("white", "hwb(0deg 100% 0%)");
		tester.testEncoder("black", "hwb(0deg 0% 100%)");
		tester.testEncoder("orange", "hwb(38.82deg 0% 0%)");
		tester.testEncoder("purple", "hwb(300deg 0% 49.8%)");
		tester.testEncoder("indigo", "hwb(274.62deg 0% 49.02%)");
		tester.testEncoder("pink", "hwb(349.52deg 75.29% 0%)");
		tester.testEncoder("brown", "hwb(0deg 16.47% 35.29%)");
		tester.testEncoder("maroon", "hwb(0deg 0% 49.8%)");
		tester.testEncoder("olive", "hwb(60deg 0% 49.8%)");
		tester.testEncoder("teal", "hwb(180deg 0% 49.8%)");
		tester.testEncoder("navy", "hwb(240deg 0% 49.8%)");
		tester.testEncoder("silver", "hwb(0deg 75.29% 24.71%)");
		tester.testEncoder("rebeccapurple", "hwb(270deg 20% 40%)");
	}

	@Test
	public void test_identity() {
		tester.testEncoder("hwb(0 0% 0%)", "hwb(0deg 0% 0%)"); // red
		tester.testEncoder("hwb(120 0% 49.8%)", "hwb(120deg 0% 49.8%)"); // green
		tester.testEncoder("hwb(120 0% 0%)", "hwb(120deg 0% 0%)"); // lime
		tester.testEncoder("hwb(240 0% 0%)", "hwb(240deg 0% 0%)"); // blue
		tester.testEncoder("hwb(60 0% 0%)", "hwb(60deg 0% 0%)"); // yellow
		tester.testEncoder("hwb(180 0% 0%)", "hwb(180deg 0% 0%)"); // cyan
		tester.testEncoder("hwb(300 0% 0%)", "hwb(300deg 0% 0%)"); // magenta
		tester.testEncoder("hwb(0 50.2% 49.8%)", "hwb(0deg 50.2% 49.8%)"); // gray
		tester.testEncoder("hwb(0 100% 0%)", "hwb(0deg 100% 0%)"); // white
		tester.testEncoder("hwb(0 0% 100%)", "hwb(0deg 0% 100%)"); // black
		tester.testEncoder("hwb(38.8 0% 0%)", "hwb(38.8deg 0% 0%)"); // orange
		tester.testEncoder("hwb(300 0% 49.8%)", "hwb(300deg 0% 49.8%)"); // purple
		tester.testEncoder("hwb(274.6 0% 49%)", "hwb(274.6deg 0% 49%)"); // indigo
		tester.testEncoder("hwb(349.5 75.3% 0%)", "hwb(349.5deg 75.3% 0%)"); // pink
		tester.testEncoder("hwb(0 16.5% 35.3%)", "hwb(0deg 16.5% 35.3%)"); // brown
		tester.testEncoder("hwb(0 0% 49.8%)", "hwb(0deg 0% 49.8%)"); // maroon
		tester.testEncoder("hwb(60 0% 49.8%)", "hwb(60deg 0% 49.8%)"); // olive
		tester.testEncoder("hwb(180 0% 49.8%)", "hwb(180deg 0% 49.8%)"); // teal
		tester.testEncoder("hwb(240 0% 49.8%)", "hwb(240deg 0% 49.8%)"); // navy
		tester.testEncoder("hwb(0 75.3% 24.7%)", "hwb(0deg 75.3% 24.7%)"); // silver
		tester.testEncoder("hwb(270 20% 40%)", "hwb(270deg 20% 40%)"); // rebeccapurple
	}

	@Test
	public void test_hexAndRgb() {
		tester.testEncoder("#ff0000", "hwb(0deg 0% 0%)");
		tester.testEncoder("rgb(255 0 0)", "hwb(0deg 0% 0%)");
	}

	@Test
	public void test_alpha() {
		tester.testEncoder("rgba(255 0 0 / 0.5)", "hwb(0deg 0% 0% / 0.5)");
	}

	@Test
	public void test_invalid() {
		tester.testEncoder("x", null);
	}
}
