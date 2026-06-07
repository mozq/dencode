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

public class CipherVigenereDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherVigenereDencoder::encCipherVigenere,
			CipherVigenereDencoder::decCipherVigenere,
			"cipher.vigenere.key");

	@Test
	public void test_blank() {
		// Blank
		tester.test("", "", tester.options(""));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(""));
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(""));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options(""));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options(""));

		// Unsupported characters
		tester.test(" ", " ", tester.options(""));
		tester.test("!", "!", tester.options(""));
		tester.test("!a!", "!a!", tester.options(""));
	}

	@Test
	public void test_A() {
		// Blank
		tester.test("", "", tester.options("A"));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options("A"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options("A"));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options("A"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options("A"));

		// Unsupported characters
		tester.test(" ", " ", tester.options("A"));
		tester.test("!", "!", tester.options("A"));
		tester.test("!a!", "!a!", tester.options("A"));
	}

	@Test
	public void test_AAA() {
		// Blank
		tester.test("", "", tester.options("AAA"));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options("AAA"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options("AAA"));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options("AAA"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options("AAA"));

		// Unsupported characters
		tester.test(" ", " ", tester.options("AAA"));
		tester.test("!", "!", tester.options("AAA"));
		tester.test("!a!", "!a!", tester.options("AAA"));
	}

	@Test
	public void test_SECRET() {
		// Blank
		tester.test("", "", tester.options("SECRET"));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "SFEUIYYLKAOEERQGUKKXWMAQQD", tester.options("SECRET"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "sfeuiyylkaoeerqgukkxwmaqqd", tester.options("SECRET"));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＳＦＥＵＩＹＹＬＫＡＯＥＥＲＱＧＵＫＫＸＷＭＡＱＱＤ", tester.options("SECRET"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｓｆｅｕｉｙｙｌｋａｏｅｅｒｑｇｕｋｋｘｗｍａｑｑｄ", tester.options("SECRET"));

		// Unsupported characters
		tester.test(" ", " ", tester.options("SECRET"));
		tester.test("!", "!", tester.options("SECRET"));
		tester.test("!a!", "!s!", tester.options("SECRET"));

		tester.test("!a!a!a!a!a!a!a!", "!s!e!c!r!e!t!s!", tester.options("SECRET"));
	}

	@Test
	public void test__Se_c_r_et_() {
		// Blank
		tester.test("", "", tester.options(" Se c!r/et "));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "SFEUIYYLKAOEERQGUKKXWMAQQD", tester.options(" Se c!r/et "));
		tester.test("abcdefghijklmnopqrstuvwxyz", "sfeuiyylkaoeerqgukkxwmaqqd", tester.options(" Se c!r/et "));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＳＦＥＵＩＹＹＬＫＡＯＥＥＲＱＧＵＫＫＸＷＭＡＱＱＤ", tester.options(" Se c!r/et "));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｓｆｅｕｉｙｙｌｋａｏｅｅｒｑｇｕｋｋｘｗｍａｑｑｄ", tester.options(" Se c!r/et "));

		// Unsupported characters
		tester.test(" ", " ", tester.options(" Se c!r/et "));
		tester.test("!", "!", tester.options(" Se c!r/et "));
		tester.test("!a!", "!s!", tester.options(" Se c!r/et "));

		tester.test("!a!a!a!a!a!a!a!", "!s!e!c!r!e!t!s!", tester.options(" Se c!r/et "));
	}

	@Test
	public void test_X() {
		// Blank
		tester.test("", "", tester.options("X"));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "XYZABCDEFGHIJKLMNOPQRSTUVW", tester.options("X"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "xyzabcdefghijklmnopqrstuvw", tester.options("X"));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＸＹＺＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷ", tester.options("X"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｘｙｚａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗ", tester.options("X"));

		// Unsupported characters
		tester.test(" ", " ", tester.options("X"));
		tester.test("!", "!", tester.options("X"));
		tester.test("!a!", "!x!", tester.options("X"));
	}

	@Test
	public void test_X_lower() {
		// Blank
		tester.test("", "", tester.options("x"));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "XYZABCDEFGHIJKLMNOPQRSTUVW", tester.options("x"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "xyzabcdefghijklmnopqrstuvw", tester.options("x"));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＸＹＺＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷ", tester.options("x"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｘｙｚａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗ", tester.options("x"));

		// Unsupported characters
		tester.test(" ", " ", tester.options("x"));
		tester.test("!", "!", tester.options("x"));
		tester.test("!a!", "!x!", tester.options("x"));
	}

	@Test
	public void test_X_fullWidth() {
		// Blank
		tester.test("", "", tester.options("Ｘ"));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "XYZABCDEFGHIJKLMNOPQRSTUVW", tester.options("Ｘ"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "xyzabcdefghijklmnopqrstuvw", tester.options("Ｘ"));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＸＹＺＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷ", tester.options("Ｘ"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｘｙｚａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗ", tester.options("Ｘ"));

		// Unsupported characters
		tester.test(" ", " ", tester.options("Ｘ"));
		tester.test("!", "!", tester.options("Ｘ"));
		tester.test("!a!", "!x!", tester.options("Ｘ"));
	}

	@Test
	public void test_D() {
		// Blank
		tester.test("", "", tester.options("D"));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "DEFGHIJKLMNOPQRSTUVWXYZABC", tester.options("D"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "defghijklmnopqrstuvwxyzabc", tester.options("D"));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺＡＢＣ", tester.options("D"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚａｂｃ", tester.options("D"));

		// Unsupported characters
		tester.test(" ", " ", tester.options("D"));
		tester.test("!", "!", tester.options("D"));
		tester.test("!a!", "!d!", tester.options("D"));
	}

	@Test
	public void test_keyLongerThanInput() {
		// Key "SECRETSECRET" is longer than input "AB"
		tester.test("AB", "SF", tester.options("SECRETSECRET"));
		tester.test("A", "S", tester.options("SECRETSECRET"));
	}

	@Test
	public void test_nonAlphaKey() {
		// Key with only non-alphabetic characters (treated as empty key)
		tester.test("ABC", "ABC", tester.options("123"));
		tester.test("ABC", "ABC", tester.options("!!!"));
	}
}
