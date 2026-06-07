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

import java.nio.charset.StandardCharsets;

import org.junit.jupiter.api.Test;

public class StringBinDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringBinDencoder::encStrBin,
			StringBinDencoder::decStrBin,
			"string.bin.separator-each");

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// ASCII
		tester.test("A", "01000001");
		tester.test("AB", "0100000101000010");
		tester.test("ABC", "010000010100001001000011");

		// Control
		tester.test("\0\t\n", "000000000000100100001010");

		// non-ASCII (Latin-1)
		tester.test("ä", "1100001110100100");
		tester.test("\u00FF", "11111111", tester.options(), StandardCharsets.ISO_8859_1);

		// non-ASCII (Japanese)
		tester.test("ア", "111000111000001010100010");

		// non-BMP
		tester.test("😀", "11110000100111111001100010000000");
	}

	@Test
	public void test_separatorEach() {
		tester.test("ABCD", "01000001010000100100001101000100", tester.options(""));
		tester.test("ABCD", "0100 0001 0100 0010 0100 0011 0100 0100", tester.options("4b"));
		tester.test("ABCD", "01000001 01000010 01000011 01000100", tester.options("8b"));
		tester.test("ABCD", "0100000101000010 0100001101000100", tester.options("16b"));
		tester.test("ABCD", "010000010100001001000011 01000100", tester.options("24b"));
		tester.test("ABCD", "01000001010000100100001101000100", tester.options("unknown"));
	}

	@Test
	public void test_lineBreak() {
		tester.test("a\nb", "01100001000011010000101001100010", tester.options(), "\r\n");
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// ASCII
		tester.testDecoder("01000001", "A");
		tester.testDecoder("0100000101000010", "AB");
		tester.testDecoder("010000010100001001000011", "ABC");

		// White-space
		tester.testDecoder("0100 0001\t01000010\r\n01000011", "ABC");

		// Partial byte
		tester.testDecoder("1", "\u0080", tester.options(), StandardCharsets.ISO_8859_1);
		tester.testDecoder("010000011", "A\u0080", tester.options(), StandardCharsets.ISO_8859_1);

		// Unsupported value
		tester.testDecoder("2", null);
		tester.testDecoder("0100000x", null);
	}
}
