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

public class StringLetterCaseDencoderTest {
	private final DencoderTester upperCaseTester = new DencoderTester(
			StringLetterCaseDencoder::encStrUpperCase);
	private final DencoderTester lowerCaseTester = new DencoderTester(
			StringLetterCaseDencoder::encStrLowerCase);
	private final DencoderTester swapCaseTester = new DencoderTester(
			StringLetterCaseDencoder::encStrSwapCase);
	private final DencoderTester capitalizeTester = new DencoderTester(
			StringLetterCaseDencoder::encStrCapitalize);
	private final DencoderTester alternatingCapsTester = new DencoderTester(
			StringLetterCaseDencoder::encStrAlternatingCaps,
			"string.letter-case.alt-variant");

	@Test
	public void test_upperCase() {
		// Blank
		upperCaseTester.testEncoder("", "");

		// Method description example
		upperCaseTester.testEncoder("Hello, world!", "HELLO, WORLD!");

		// Letters
		upperCaseTester.testEncoder("ABC xyz 123!?", "ABC XYZ 123!?");
		upperCaseTester.testEncoder("Ää Öö Üü", "ÄÄ ÖÖ ÜÜ");
		upperCaseTester.testEncoder("ＡＢＣａｂｃ", "ＡＢＣＡＢＣ");
		upperCaseTester.testEncoder("Привет, мир!", "ПРИВЕТ, МИР!");
	}

	@Test
	public void test_lowerCase() {
		// Blank
		lowerCaseTester.testEncoder("", "");

		// Method description example
		lowerCaseTester.testEncoder("Hello, world!", "hello, world!");

		// Letters
		lowerCaseTester.testEncoder("ABC xyz 123!?", "abc xyz 123!?");
		lowerCaseTester.testEncoder("Ää Öö Üü", "ää öö üü");
		lowerCaseTester.testEncoder("ＡＢＣａｂｃ", "ａｂｃａｂｃ");
		lowerCaseTester.testEncoder("Привет, мир!", "привет, мир!");
	}

	@Test
	public void test_swapCase() {
		// Blank
		swapCaseTester.testEncoder("", "");

		// Method description example
		swapCaseTester.testEncoder("Hello, world!", "hELLO, WORLD!");

		// Letters
		swapCaseTester.testEncoder("ABC xyz 123!?", "abc XYZ 123!?");
		swapCaseTester.testEncoder("Ää Öö Üü", "äÄ öÖ üÜ");
		swapCaseTester.testEncoder("ＡＢＣａｂｃ", "ａｂｃＡＢＣ");
		swapCaseTester.testEncoder("Привет, мир!", "пРИВЕТ, МИР!");
	}

	@Test
	public void test_capitalize() {
		// Blank
		capitalizeTester.testEncoder("", "");

		// Method description example
		capitalizeTester.testEncoder("hello, world!", "Hello, World!");

		// Whitespace-separated words
		capitalizeTester.testEncoder("abc def\tghi\njkl", "Abc Def\tGhi\nJkl");
		capitalizeTester.testEncoder("hELLO wORLD", "HELLO WORLD");
		capitalizeTester.testEncoder("äpfel öl", "Äpfel Öl");
		capitalizeTester.testEncoder("ａｂｃ ｄｅｆ", "Ａｂｃ Ｄｅｆ");
		capitalizeTester.testEncoder("привет, мир!", "Привет, Мир!");
	}

	@Test
	public void test_alternatingCaps() {
		// Blank
		alternatingCapsTester.testEncoder("", "");

		// Variants
		alternatingCapsTester.testEncoder("Hello, world!", "hElLo, wOrLd!");
		alternatingCapsTester.testEncoder("Hello, world!", "hElLo, wOrLd!", alternatingCapsTester.options("lower-upper"));
		alternatingCapsTester.testEncoder("Hello, world!", "HeLlO, WoRlD!", alternatingCapsTester.options("upper-lower"));
		alternatingCapsTester.testEncoder("Hello, world!", "HeLLo, WoRLD!", alternatingCapsTester.options("vowels-lower"));
		alternatingCapsTester.testEncoder("Hello, world!", "hEllO, wOrld!", alternatingCapsTester.options("vowels-upper"));
		alternatingCapsTester.testEncoder("Hello, world!", "hElLo, wOrLd!", alternatingCapsTester.options("unknown"));

		// Non-letters also advance the alternating position
		alternatingCapsTester.testEncoder("ab1c de-f", "aB1C dE-F", alternatingCapsTester.options("lower-upper"));

		// Vowels variants support full-width ASCII and Russian vowels
		alternatingCapsTester.testEncoder("ＡＢＣ ａｅｉｏｕ", "Ａｂｃ ＡＥＩＯＵ", alternatingCapsTester.options("vowels-upper"));
		alternatingCapsTester.testEncoder("Привет, мир!", "ПРиВеТ, МиР!", alternatingCapsTester.options("vowels-lower"));
	}
}
