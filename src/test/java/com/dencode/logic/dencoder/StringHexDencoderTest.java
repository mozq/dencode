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

public class StringHexDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringHexDencoder::encStrHex,
			StringHexDencoder::decStrHex,
			"string.hex.separator-each",
			"string.hex.case");

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// ASCII
		tester.test("A", "41");
		tester.test("AB", "4142");
		tester.test("ABC", "414243");

		// Control
		tester.test("\0\t\n", "00090a");

		// non-ASCII (Latin-1)
		tester.test("ä", "c3a4");
		tester.test("\u00FF", "ff", tester.options(null, "lower"), StandardCharsets.ISO_8859_1);

		// non-ASCII (Japanese)
		tester.test("ア", "e382a2");

		// non-BMP
		tester.test("😀", "f09f9880");
	}

	@Test
	public void test_separatorEach() {
		tester.test("ABCD", "41424344", tester.options("", "lower"));
		tester.test("ABCD", "41 42 43 44", tester.options("1B", "lower"));
		tester.test("ABCD", "4142 4344", tester.options("2B", "lower"));
		tester.test("ABCD", "414243 44", tester.options("3B", "lower"));
		tester.test("ABCD", "41424344", tester.options("unknown", "lower"));
	}

	@Test
	public void test_case() {
		tester.test("äア😀", "c3a4e382a2f09f9880", tester.options("", "lower"));
		tester.test("äア😀", "C3A4E382A2F09F9880", tester.options("", "upper"));
		tester.test("äア😀", "c3a4e382a2f09f9880", tester.options("", "unknown"));
	}

	@Test
	public void test_lineBreak() {
		tester.test("a\nb", "610d0a62", tester.options("", "lower"), "\r\n");
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// ASCII
		tester.testDecoder("41", "A");
		tester.testDecoder("4142", "AB");
		tester.testDecoder("414243", "ABC");

		// Case
		tester.testDecoder("e382a2", "ア");
		tester.testDecoder("E382A2", "ア");

		// White-space
		tester.testDecoder("41 42\t43\r\n", "ABC");

		// Partial byte
		tester.testDecoder("f", "\u00F0", tester.options(), StandardCharsets.ISO_8859_1);
		tester.testDecoder("41f", "A\u00F0", tester.options(), StandardCharsets.ISO_8859_1);

		// Unsupported value
		tester.testDecoder("g", null);
		tester.testDecoder("41x", null);
	}
}
