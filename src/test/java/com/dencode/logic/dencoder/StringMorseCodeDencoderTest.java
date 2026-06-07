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

public class StringMorseCodeDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringMorseCodeDencoder::encStrMorseCode,
			StringMorseCodeDencoder::decStrMorseCode,
			"string.morse-code.variant",
			"string.morse-code.notation");

	@Test
	public void testInternational_Code() {
		String variant = "international";
		String notation = "code";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("A", ".-", "A", tester.options(variant, notation));
		tester.test("a", ".-", "A", tester.options(variant, notation));

		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(variant, notation));
		tester.test("abcdefghijklmnopqrstuvwxyz", ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(variant, notation));

		tester.test("1234567890", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "1234567890", tester.options(variant, notation));

		tester.test(".,:?'-/()\"=+@", ".-.-.- --..-- ---... ..--.. .----. -....- -..-. -.--. -.--.- .-..-. -...- .-.-. .--.-.", ".,:?'-/()\"=+@", tester.options(variant, notation));
		tester.test("×", "-..-", "X", tester.options(variant, notation));


		tester.test(" ", "/", " ", tester.options(variant, notation));
		tester.test("A Z", ".- / --..", "A Z", tester.options(variant, notation));
		tester.test("A  Z", ".- / / --..", "A  Z", tester.options(variant, notation));
		tester.test(" Z", "/ --..", " Z", tester.options(variant, notation));
		tester.test("  Z", "/ / --..", "  Z", tester.options(variant, notation));
		tester.test("A ", ".- /", "A ", tester.options(variant, notation));
		tester.test("A  ", ".- / /", "A  ", tester.options(variant, notation));

		// New line
		tester.test("A\nZ", ".-\n--..", "A\nZ", tester.options(variant, notation));
		tester.test("\nZ", "\n--..", "\nZ", tester.options(variant, notation));
		tester.test("A\n", ".-\n", "A\n", tester.options(variant, notation));

		// Undefined code
		tester.testDecoder("......... / .........\n.........", "......... .........\n.........", tester.options(variant, notation));
		tester.testDecoder("\n.........\n", "\n.........\n", tester.options(variant, notation));
		tester.testDecoder(" ......... \n ", ".........\n", tester.options(variant, notation));

		// Unsupported letter
		tester.test("*** ***\n***", "* * * / * * *\n* * *", "*** ***\n***", tester.options(variant, notation));

		// Alternative code symbols
		tester.testDecoder("・－／", "A ", tester.options(variant, notation));
	}

	@Test
	public void testInternational_CodeFullwidth() {
		String variant = "international";
		String notation = "code-fullwidth";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("A", "・－", "A", tester.options(variant, notation));
		tester.test("a", "・－", "A", tester.options(variant, notation));

		tester.test("ABC", "・－　－・・・　－・－・", "ABC", tester.options(variant, notation));

		tester.test("1234567890", "・－－－－　・・－－－　・・・－－　・・・・－　・・・・・　－・・・・　－－・・・　－－－・・　－－－－・　－－－－－", "1234567890", tester.options(variant, notation));

		// Word space
		tester.test(" ", "／", " ", tester.options(variant, notation));
		tester.test("A Z", "・－　／　－－・・", "A Z", tester.options(variant, notation));
		tester.test("A  Z", "・－　／　／　－－・・", "A  Z", tester.options(variant, notation));

		// New line
		tester.test("A\nZ", "・－\n－－・・", "A\nZ", tester.options(variant, notation));

		// Unsupported letter
		tester.test("*** ***\n***", "*　*　*　／　*　*　*\n*　*　*", "*** ***\n***", tester.options(variant, notation));
	}

	@Test
	public void testInternational_Signals() {
		String variant = "international";
		String notation = "signals";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("A", "▄ ▄▄▄", "A", tester.options(variant, notation));
		tester.test("a", "▄ ▄▄▄", "A", tester.options(variant, notation));

		tester.test("ABC", "▄ ▄▄▄   ▄▄▄ ▄ ▄ ▄   ▄▄▄ ▄ ▄▄▄ ▄", "ABC", tester.options(variant, notation));

		tester.test("1", "▄ ▄▄▄ ▄▄▄ ▄▄▄ ▄▄▄", "1", tester.options(variant, notation));

		// Word space
		tester.test(" ", "       ", " ", tester.options(variant, notation));
		tester.test("A Z", "▄ ▄▄▄       ▄▄▄ ▄▄▄ ▄ ▄", "A Z", tester.options(variant, notation));

		// New line
		tester.test("A\nZ", "▄ ▄▄▄\n▄▄▄ ▄▄▄ ▄ ▄", "A\nZ", tester.options(variant, notation));

		// Unsupported letter
		tester.test("*", "*", "*", tester.options(variant, notation));
	}

	@Test
	public void testInternational_Signals01() {
		String variant = "international";
		String notation = "signals-01";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("A", "10111", "A", tester.options(variant, notation));
		tester.test("a", "10111", "A", tester.options(variant, notation));

		tester.test("ABC", "1011100011101010100011101011101", "ABC", tester.options(variant, notation));

		tester.test("1", "10111011101110111", "1", tester.options(variant, notation));

		// Word space
		tester.test(" ", "0000000", " ", tester.options(variant, notation));
		tester.test("A Z", "10111000000011101110101", "A Z", tester.options(variant, notation));

		// New line
		tester.test("A\nZ", "10111\n11101110101", "A\nZ", tester.options(variant, notation));

		// Unsupported letter
		tester.test("*", "*", "*", tester.options(variant, notation));
	}

	@Test
	public void testJapanese_Code() {
		String variant = "japanese";
		String notation = "code";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("イ", ".-", "イ", tester.options(variant, notation));
		tester.test("ィ", ".-", "イ", tester.options(variant, notation));

		tester.test("イロハニホヘトチリヌルヲワカヨタレソツネナラムウヰノオクヤマケフコエテアサキユメミシヱヒモセスン", ".- .-.- -... -.-. -.. . ..-.. ..-. --. .... -.--. .--- -.- .-.. -- -. --- ---. .--. --.- .-. ... - ..- .-..- ..-- .-... ...- .-- -..- -.-- --.. ---- -.--- .-.-- --.-- -.-.- -.-.. -..-- -...- ..-.- --.-. .--.. --..- -..-. .---. ---.- .-.-.", "イロハニホヘトチリヌルヲワカヨタレソツネナラムウヰノオクヤマケフコエテアサキユメミシヱヒモセスン", tester.options(variant, notation));
		tester.test("いろはにほへとちりぬるをわかよたれそつねならむうゐのおくやまけふこえてあさきゆめみしゑひもせすん", ".- .-.- -... -.-. -.. . ..-.. ..-. --. .... -.--. .--- -.- .-.. -- -. --- ---. .--. --.- .-. ... - ..- .-..- ..-- .-... ...- .-- -..- -.-- --.. ---- -.--- .-.-- --.-- -.-.- -.-.. -..-- -...- ..-.- --.-. .--.. --..- -..-. .---. ---.- .-.-.", "イロハニホヘトチリヌルヲワカヨタレソツネナラムウヰノオクヤマケフコエテアサキユメミシヱヒモセスン", tester.options(variant, notation));

		tester.test("ぁぃぅぇぉっゃゅょ", "--.-- .- ..- -.--- .-... .--. .-- -..-- --", "アイウエオツヤユヨ", tester.options(variant, notation));
		tester.test("ァィゥェォッャュョ", "--.-- .- ..- -.--- .-... .--. .-- -..-- --", "アイウエオツヤユヨ", tester.options(variant, notation));

		tester.test("ガギグゲゴザジズゼゾダヂヅデドバビブベボヴ", ".-.. .. -.-.. .. ...- .. -.-- .. ---- .. -.-.- .. --.-. .. ---.- .. .---. .. ---. .. -. .. ..-. .. .--. .. .-.-- .. ..-.. .. -... .. --..- .. --.. .. . .. -.. .. ..- ..", "ガギグゲゴザジズゼゾダヂヅデドバビブベボヴ", tester.options(variant, notation));
		tester.test("がぎぐげござじずぜぞだぢづでどばびぶべぼゔ", ".-.. .. -.-.. .. ...- .. -.-- .. ---- .. -.-.- .. --.-. .. ---.- .. .---. .. ---. .. -. .. ..-. .. .--. .. .-.-- .. ..-.. .. -... .. --..- .. --.. .. . .. -.. .. ..- ..", "ガギグゲゴザジズゼゾダヂヅデドバビブベボヴ", tester.options(variant, notation));

		tester.test("パピプペポ", "-... ..--. --..- ..--. --.. ..--. . ..--. -.. ..--.", "パピプペポ", tester.options(variant, notation));
		tester.test("ぱぴぷぺぽ", "-... ..--. --..- ..--. --.. ..--. . ..--. -.. ..--.", "パピプペポ", tester.options(variant, notation));

		tester.test("１２３４５６７８９０", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "１２３４５６７８９０", tester.options(variant, notation));
		tester.test("1234567890", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "１２３４５６７８９０", tester.options(variant, notation));

		tester.test("ー、。（）", ".--.- .-.-.- .-.-.. -.--.- .-..-.", "ー、。（）", tester.options(variant, notation));
		tester.test("，.", ".-.-.- .-.-..", "、。", tester.options(variant, notation));
		tester.test("()", "-.--.- .-..-.", "（）", tester.options(variant, notation));

		// Word space
		tester.test(" ", "/", " ", tester.options(variant, notation));
		tester.test("イ ン", ".- / .-.-.", "イ ン", tester.options(variant, notation));
		tester.test("イ  ン", ".- / / .-.-.", "イ  ン", tester.options(variant, notation));
		tester.test(" ン", "/ .-.-.", " ン", tester.options(variant, notation));
		tester.test("  ン", "/ / .-.-.", "  ン", tester.options(variant, notation));
		tester.test("イ ", ".- /", "イ ", tester.options(variant, notation));
		tester.test("イ  ", ".- / /", "イ  ", tester.options(variant, notation));

		// New line
		tester.test("イ\nン", ".-\n.-.-.", "イ\nン", tester.options(variant, notation));
		tester.test("\nン", "\n.-.-.", "\nン", tester.options(variant, notation));
		tester.test("イ\n", ".-\n", "イ\n", tester.options(variant, notation));

		// Undefined code
		tester.testDecoder("......... / .........\n.........", "......... .........\n.........", tester.options(variant, notation));
		tester.testDecoder("\n.........\n", "\n.........\n", tester.options(variant, notation));
		tester.testDecoder(" ......... \n ", ".........\n", tester.options(variant, notation));

		// Unsupported letter
		tester.test("*** ***\n***", "* * * / * * *\n* * *", "*** ***\n***", tester.options(variant, notation));

		// Alternative code symbols
		tester.testDecoder("・－／", "イ ", tester.options(variant, notation));
	}

	@Test
	public void testJapanese_CodeFullwidth() {
		String variant = "japanese";
		String notation = "code-fullwidth";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("イ", "・－", "イ", tester.options(variant, notation));
		tester.test("イロハ", "・－　・－・－　－・・・", "イロハ", tester.options(variant, notation));
		tester.test("ガ", "・－・・　・・", "ガ", tester.options(variant, notation));
		tester.test("パ", "－・・・　・・－－・", "パ", tester.options(variant, notation));

		// Word space
		tester.test(" ", "／", " ", tester.options(variant, notation));
		tester.test("イ ン", "・－　／　・－・－・", "イ ン", tester.options(variant, notation));

		// New line
		tester.test("イ\nン", "・－\n・－・－・", "イ\nン", tester.options(variant, notation));
	}

	@Test
	public void testJapanese_Signals() {
		String variant = "japanese";
		String notation = "signals";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("イ", "▄ ▄▄▄", "イ", tester.options(variant, notation));
		tester.test("イロハ", "▄ ▄▄▄   ▄ ▄▄▄ ▄ ▄▄▄   ▄▄▄ ▄ ▄ ▄", "イロハ", tester.options(variant, notation));
		tester.test("ガ", "▄ ▄▄▄ ▄ ▄   ▄ ▄", "ガ", tester.options(variant, notation));
		tester.test("パ", "▄▄▄ ▄ ▄ ▄   ▄ ▄ ▄▄▄ ▄▄▄ ▄", "パ", tester.options(variant, notation));

		// Word space
		tester.test(" ", "       ", " ", tester.options(variant, notation));
		tester.test("イ ン", "▄ ▄▄▄       ▄ ▄▄▄ ▄ ▄▄▄ ▄", "イ ン", tester.options(variant, notation));
	}

	@Test
	public void testJapanese_Signals01() {
		String variant = "japanese";
		String notation = "signals-01";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("イ", "10111", "イ", tester.options(variant, notation));
		tester.test("イロハ", "1011100010111010111000111010101", "イロハ", tester.options(variant, notation));
		tester.test("ガ", "101110101000101", "ガ", tester.options(variant, notation));
		tester.test("パ", "1110101010001010111011101", "パ", tester.options(variant, notation));

		// Word space
		tester.test(" ", "0000000", " ", tester.options(variant, notation));
		tester.test("イ ン", "1011100000001011101011101", "イ ン", tester.options(variant, notation));
	}

	@Test
	public void testRussian_Code() {
		String variant = "russian";
		String notation = "code";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("А", ".-", "А", tester.options(variant, notation));
		tester.test("а", ".-", "А", tester.options(variant, notation));

		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", ".- -... .-- --. -.. . ...- --.. .. .--- -.- .-.. -- -. --- .--. .-. ... - ..- ..-. .... -.-. ---. ---- --.- --.-- -.-- -..- ..-.. ..-- .-.-", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", tester.options(variant, notation));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", ".- -... .-- --. -.. . ...- --.. .. .--- -.- .-.. -- -. --- .--. .-. ... - ..- ..-. .... -.-. ---. ---- --.- --.-- -.-- -..- ..-.. ..-- .-.-", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", tester.options(variant, notation));
		tester.test("ЁѢ", ". ..-..", "ЕЭ", tester.options(variant, notation));
		tester.test("ёѣ", ". ..-..", "ЕЭ", tester.options(variant, notation));

		tester.test("1234567890", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "1234567890", tester.options(variant, notation));

		tester.test(".,:;()'\"-/?!=@", "...... .-.-.- ---... -.-.- -.--.- -.--.- .----. .-..-. -....- -..-. ..--.. --..-- -...- .--.-.", ".,:;(('\"-/?!=@", tester.options(variant, notation));

		// Word space
		tester.test(" ", "/", " ", tester.options(variant, notation));
		tester.test("А Я", ".- / .-.-", "А Я", tester.options(variant, notation));
		tester.test("А  Я", ".- / / .-.-", "А  Я", tester.options(variant, notation));
		tester.test(" Я", "/ .-.-", " Я", tester.options(variant, notation));
		tester.test("  Я", "/ / .-.-", "  Я", tester.options(variant, notation));
		tester.test("А ", ".- /", "А ", tester.options(variant, notation));
		tester.test("А  ", ".- / /", "А  ", tester.options(variant, notation));

		// New line
		tester.test("А\nЯ", ".-\n.-.-", "А\nЯ", tester.options(variant, notation));
		tester.test("\nЯ", "\n.-.-", "\nЯ", tester.options(variant, notation));
		tester.test("А\n", ".-\n", "А\n", tester.options(variant, notation));

		// Undefined code
		tester.testDecoder("......... / .........\n.........", "......... .........\n.........", tester.options(variant, notation));
		tester.testDecoder("\n.........\n", "\n.........\n", tester.options(variant, notation));
		tester.testDecoder(" ......... \n ", ".........\n", tester.options(variant, notation));

		// Unsupported letter
		tester.test("*** ***\n***", "* * * / * * *\n* * *", "*** ***\n***", tester.options(variant, notation));

		// Alternative code symbols
		tester.testDecoder("・－／", "А ", tester.options(variant, notation));
	}

	@Test
	public void testRussian_CodeFullwidth() {
		String variant = "russian";
		String notation = "code-fullwidth";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("А", "・－", "А", tester.options(variant, notation));
		tester.test("АБВ", "・－　－・・・　・－－", "АБВ", tester.options(variant, notation));

		// Word space
		tester.test(" ", "／", " ", tester.options(variant, notation));
		tester.test("А Я", "・－　／　・－・－", "А Я", tester.options(variant, notation));

		// New line
		tester.test("А\nЯ", "・－\n・－・－", "А\nЯ", tester.options(variant, notation));
	}

	@Test
	public void testRussian_Signals() {
		String variant = "russian";
		String notation = "signals";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("А", "▄ ▄▄▄", "А", tester.options(variant, notation));
		tester.test("АБВ", "▄ ▄▄▄   ▄▄▄ ▄ ▄ ▄   ▄ ▄▄▄ ▄▄▄", "АБВ", tester.options(variant, notation));

		// Word space
		tester.test(" ", "       ", " ", tester.options(variant, notation));
		tester.test("А Я", "▄ ▄▄▄       ▄ ▄▄▄ ▄ ▄▄▄", "А Я", tester.options(variant, notation));
	}

	@Test
	public void testRussian_Signals01() {
		String variant = "russian";
		String notation = "signals-01";

		tester.test("", "", "", tester.options(variant, notation));

		tester.test("А", "10111", "А", tester.options(variant, notation));
		tester.test("АБВ", "10111000111010101000101110111", "АБВ", tester.options(variant, notation));

		// Word space
		tester.test(" ", "0000000", " ", tester.options(variant, notation));
		tester.test("А Я", "10111000000010111010111", "А Я", tester.options(variant, notation));
	}

	@Test
	public void testNotationUnknown() {
		String variant = "international";
		String notation = "unknown";

		// Unknown notation falls back to "code"
		tester.test("A", ".-", "A", tester.options(variant, notation));
		tester.test("ABC", ".- -... -.-.", "ABC", tester.options(variant, notation));
	}
}
