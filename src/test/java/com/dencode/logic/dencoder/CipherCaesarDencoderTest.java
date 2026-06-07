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

public class CipherCaesarDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherCaesarDencoder::encCipherCaesar,
			CipherCaesarDencoder::decCipherCaesar,
			"cipher.caesar.shift");

	@Test
	public void test_defaultShift() {
		// Blank
		tester.test("", "");

		// Method description example
		tester.test("Hello, world!", "Ebiil, tloia!");

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "XYZABCDEFGHIJKLMNOPQRSTUVW");
		tester.test("abcdefghijklmnopqrstuvwxyz", "xyzabcdefghijklmnopqrstuvw");

		// Unsupported characters are unchanged
		tester.test("123 !?", "123 !?");
		tester.test("!a!", "!x!");
	}

	@Test
	public void test_shift0() {
		// Blank
		tester.test("", "", tester.options(0));

		// Alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(0));
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(0));
		tester.test("ＡＢＣａｂｃ", "ＡＢＣａｂｃ", tester.options(0));
		tester.test("ぁあぃァアィ", "ぁあぃァアィ", tester.options(0));
		tester.test("АБВабв", "АБВабв", tester.options(0));

		// Unsupported characters are unchanged
		tester.test("123 !?", "123 !?", tester.options(0));
	}

	@Test
	public void test_shift3() {
		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "DEFGHIJKLMNOPQRSTUVWXYZABC", tester.options(3));
		tester.test("abcdefghijklmnopqrstuvwxyz", "defghijklmnopqrstuvwxyzabc", tester.options(3));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺＡＢＣ", tester.options(3));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚａｂｃ", tester.options(3));

		// Japanese
		tester.test("ぁあぃいぅうぇえぉお", "いぅうぇえぉおかがき", tester.options(3));
		tester.test("ァアィイゥウェエォオ", "イゥウェエォオカガキ", tester.options(3));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "ГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯАБВ", tester.options(3));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "гдежзийклмнопрстуфхцчшщъыьэюяабв", tester.options(3));

		// Unsupported characters are unchanged
		tester.test("!a!", "!d!", tester.options(3));
	}

	@Test
	public void test_shiftMinus3() {
		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "XYZABCDEFGHIJKLMNOPQRSTUVW", tester.options(-3));
		tester.test("abcdefghijklmnopqrstuvwxyz", "xyzabcdefghijklmnopqrstuvw", tester.options(-3));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＸＹＺＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷ", tester.options(-3));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｘｙｚａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗ", tester.options(-3));

		// Japanese
		tester.test("ぁあぃいぅうぇえぉお", "をんゔぁあぃいぅうぇ", tester.options(-3));
		tester.test("ァアィイゥウェエォオ", "ヲンヴァアィイゥウェ", tester.options(-3));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "ЭЮЯАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬ", tester.options(-3));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "эюяабвгдежзийклмнопрстуфхцчшщъыь", tester.options(-3));

		// Unsupported characters are unchanged
		tester.test("!a!", "!x!", tester.options(-3));
	}

	@Test
	public void test_shiftWrap() {
		// Latin uses modulo 26
		tester.test("ABC xyz", "ABC xyz", tester.options(26));
		tester.test("ABC xyz", "BCD yza", tester.options(27));
		tester.test("ABC xyz", "ZAB wxy", tester.options(-27));

		// Cyrillic uses modulo 32
		tester.test("АБВ абв", "АБВ абв", tester.options(32));
		tester.test("АБВ абв", "БВГ бвг", tester.options(33));

		// Japanese uses modulo 84
		tester.test("ぁあぃ ァアィ", "ぁあぃ ァアィ", tester.options(84));
		tester.test("ぁあぃ ァアィ", "あぃい アィイ", tester.options(85));
	}

	@Test
	public void test_diacritic() {
		// Latin diacritics are normalized while the base letter is shifted
		tester.test("Ää Éé", "B̈b̈ F́f́", tester.options(1));

		// Cyrillic Й/й keeps the breve as part of the alphabet
		tester.test("ИЙ ий", "ЙК йк", tester.options(1));
	}

	@Test
	public void test_decoder() {
		// Decoder applies the reverse shift
		tester.testDecoder("Ebiil, tloia!", "Hello, world!");
		tester.testDecoder("Khoor, zruog!", "Hello, world!", tester.options(3));
		tester.testDecoder("Ebiil, tloia!", "Hello, world!", tester.options(-3));
	}

	@Test
	public void test_option() {
		// Invalid shift values use the default shift (-3)
		tester.test("Hello, world!", "Ebiil, tloia!", tester.options("unknown"));
	}
}
