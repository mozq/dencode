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

public class CipherBaconianDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherBaconianDencoder::encCipherBaconian,
			CipherBaconianDencoder::decCipherBaconian,
			"cipher.baconian.variant",
			"cipher.baconian.notation",
			"cipher.baconian.grouping");

	@Test
	public void test_blank() {
		tester.test("", "");
	}

	@Test
	public void test_default() {
		tester.test("ABC", "AAAAA AAAAB AAABA");
		tester.test(
				"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
				"AAAAA AAAAB AAABA AAABB AABAA AABAB AABBA AABBB ABAAA ABAAB ABABA ABABB ABBAA ABBAB ABBBA ABBBB BAAAA BAAAB BAABA BAABB BABAA BABAB BABBA BABBB BBAAA BBAAB");
		tester.test(
				"Hello, world!",
				"AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !",
				"HELLO, WORLD!");
	}

	@Test
	public void test_variant24() {
		tester.test("ABC", "AAAAA AAAAB AAABA", tester.options("24"));
		tester.test("IJUVZ", "ABAAA ABAAA BAABB BAABB BABBB", "IIUUZ", tester.options("24"));
		tester.test(
				"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
				"AAAAA AAAAB AAABA AAABB AABAA AABAB AABBA AABBB ABAAA ABAAA ABAAB ABABA ABABB ABBAA ABBAB ABBBA ABBBB BAAAA BAAAB BAABA BAABB BAABB BABAA BABAB BABBA BABBB",
				"ABCDEFGHIIKLMNOPQRSTUUWXYZ",
				tester.options("24"));
		tester.test(
				"Hello, world!",
				"AABBB AABAA ABABA ABABA ABBAB ,  BABAA ABBAB BAAAA ABABA AAABB !",
				"HELLO, WORLD!",
				tester.options("24", "ab"));
	}

	@Test
	public void test_notation01() {
		tester.test("ABC", "00000 00001 00010", tester.options("26", "01"));
		tester.test(
				"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
				"00000 00001 00010 00011 00100 00101 00110 00111 01000 01001 01010 01011 01100 01101 01110 01111 10000 10001 10010 10011 10100 10101 10110 10111 11000 11001",
				tester.options("26", "01"));
		tester.test(
				"Hello, world!",
				"00111 00100 01011 01011 01110 ,  10110 01110 10001 01011 00011 !",
				"HELLO, WORLD!",
				tester.options("26", "01"));
	}

	@Test
	public void test_variant24Notation01() {
		tester.test("ABC", "00000 00001 00010", tester.options("24", "01"));
		tester.test(
				"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
				"00000 00001 00010 00011 00100 00101 00110 00111 01000 01000 01001 01010 01011 01100 01101 01110 01111 10000 10001 10010 10011 10011 10100 10101 10110 10111",
				"ABCDEFGHIIKLMNOPQRSTUUWXYZ",
				tester.options("24", "01"));
		tester.test(
				"Hello, world!",
				"00111 00100 01010 01010 01101 ,  10100 01101 10000 01010 00011 !",
				"HELLO, WORLD!",
				tester.options("24", "01"));
	}

	@Test
	public void test_unsupportedCharacters() {
		tester.test("abc", "AAAAA AAAAB AAABA", "ABC");
		tester.test("123 !?", "123 !?");
		tester.test("A@B", "AAAAA @ AAAAB");
		tester.test("A1B", "AAAAA 1 AAAAB");
		tester.test("A  B", "AAAAA    AAAAB");
		tester.test("A@B", "00000 @ 00001", tester.options("26", "01"));
		tester.test("A1B", "00000 1 00001", tester.options("26", "01"));
	}

	@Test
	public void test_groupingNone() {
		tester.test("ABC", "AAAAAAAAABAAABA", tester.options("26", "ab", "none"));
		tester.testDecoder("AAAAAAAAABAAABA", "ABC");
		tester.test("ABC", "000000000100010", tester.options("26", "01", "none"));
		tester.test(
				"Hello, world!",
				"0011100100010110101101110, 1011001110100010101100011!",
				"HELLO, WORLD!",
				tester.options("26", "01", "none"));
		tester.test(
				"Hello, world!",
				"0011100100010100101001101, 1010001101100000101000011!",
				"HELLO, WORLD!",
				tester.options("24", "01", "none"));

		// Spaces act as separators when grouping is omitted
		tester.test("A B", "AAAAA AAAAB", "AB", tester.options("26", "ab", "none"));
	}

	@Test
	public void test_decoderSpaces() {
		tester.testDecoder("AAAAA AAAAB", "AB");
		tester.testDecoder("AAAAA   AAAAB", "A B");
		tester.testDecoder("AAAAA     AAAAB", "A  B");
	}

	@Test
	public void test_decoderRemainders() {
		tester.testDecoder("AAAAA BA", "ABA");
		tester.testDecoder("00000 01", "A01");
		tester.testDecoder("AAAAA@AAAAB", "A@B");
		tester.testDecoder("BBAAA BBAAB", "BBAAA BBAAB", tester.options("24"));
		tester.testDecoder("00000100001", "00000100001");
		tester.testDecoder("000000000100010", "ABC");
		tester.testDecoder("11010", "11010");
		tester.testDecoder("000001101000001", "A11010B");
		tester.testDecoder("00000200001", "A2B");

		// Mixed AB and 01 notation
		tester.testDecoder("AAAAA@00001", "A@B");
		tester.testDecoder("00000@AAAAB", "A@B");
		tester.testDecoder("AAAAA 00001 AAABA", "ABC");
		tester.testDecoder("AAAAA00001AAABA", "ABC");
	}

	@Test
	public void test_option() {
		// Invalid options use defaults
		tester.test("ABC", "AAAAA AAAAB AAABA", tester.options("unknown", "unknown", "unknown"));
	}
}
