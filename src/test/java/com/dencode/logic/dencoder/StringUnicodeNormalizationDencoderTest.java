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

public class StringUnicodeNormalizationDencoderTest {
	private final DencoderTester nfcTester = new DencoderTester(
			StringUnicodeNormalizationDencoder::encStrUnicodeNFC,
			StringUnicodeNormalizationDencoder::decStrUnicodeNFC);
	private final DencoderTester nfkcTester = new DencoderTester(
			StringUnicodeNormalizationDencoder::encStrUnicodeNFKC,
			StringUnicodeNormalizationDencoder::decStrUnicodeNFKC);

	@Test
	public void test_nfc() {
		// Blank
		nfcTester.test("", "");

		// ASCII
		nfcTester.test("ABC", "ABC");

		// Canonical composition
		nfcTester.test("a\u0308", "\u00E4", "a\u0308"); // U+0308 ̈, U+00E4 ä
		nfcTester.test("e\u0301", "\u00E9", "e\u0301"); // U+0301 ́, U+00E9 é
		nfcTester.test("a\u0302", "\u00E2", "a\u0302"); // U+0302 ̂, U+00E2 â
		nfcTester.test("\u212B", "\u00C5", "A\u030A"); // U+212B Å, U+00C5 Å, U+030A ̊

		// Compatibility characters are unchanged by NFC/NFD
		nfcTester.test("\u2460", "\u2460"); // U+2460 ①
		nfcTester.test("\uFB01", "\uFB01"); // U+FB01 ﬁ
		nfcTester.test("\uFB03", "\uFB03"); // U+FB03 ﬃ
	}

	@Test
	public void test_nfkc() {
		// Blank
		nfkcTester.test("", "");

		// ASCII
		nfkcTester.test("ABC", "ABC");

		// Canonical composition
		nfkcTester.test("a\u0308", "\u00E4", "a\u0308"); // U+0308 ̈, U+00E4 ä
		nfkcTester.test("e\u0301", "\u00E9", "e\u0301"); // U+0301 ́, U+00E9 é
		nfkcTester.test("a\u0302", "\u00E2", "a\u0302"); // U+0302 ̂, U+00E2 â

		// Compatibility composition
		nfkcTester.test("\uFF21\uFF22\uFF23", "ABC", "ABC"); // U+FF21 Ａ, U+FF22 Ｂ, U+FF23 Ｃ
		nfkcTester.test("\u2460", "1", "1"); // U+2460 ①
		nfkcTester.test("\uFB01", "fi", "fi"); // U+FB01 ﬁ
		nfkcTester.test("\uFB03", "ffi", "ffi"); // U+FB03 ﬃ
		nfkcTester.test("\u00B2", "2", "2"); // U+00B2 ²
	}

	@Test
	public void test_decoder_nfd() {
		// Canonical decomposition
		nfcTester.testDecoder("\u00E4", "a\u0308"); // U+00E4 ä, U+0308 ̈
		nfcTester.testDecoder("\u00E9", "e\u0301"); // U+00E9 é, U+0301 ́
		nfcTester.testDecoder("\u00E2", "a\u0302"); // U+00E2 â, U+0302 ̂
		nfcTester.testDecoder("\u00C5", "A\u030A"); // U+00C5 Å, U+030A ̊

		// Compatibility characters are unchanged by NFD
		nfcTester.testDecoder("\u2460", "\u2460"); // U+2460 ①
		nfcTester.testDecoder("\uFB01", "\uFB01"); // U+FB01 ﬁ
		nfcTester.testDecoder("\uFB03", "\uFB03"); // U+FB03 ﬃ
	}

	@Test
	public void test_decoder_nfkd() {
		// Canonical decomposition
		nfkcTester.testDecoder("\u00E4", "a\u0308"); // U+00E4 ä, U+0308 ̈
		nfkcTester.testDecoder("\u00E9", "e\u0301"); // U+00E9 é, U+0301 ́
		nfkcTester.testDecoder("\u00E2", "a\u0302"); // U+00E2 â, U+0302 ̂
		nfkcTester.testDecoder("\u00C5", "A\u030A"); // U+00C5 Å, U+030A ̊

		// Compatibility decomposition
		nfkcTester.testDecoder("\uFF21\uFF22\uFF23", "ABC"); // U+FF21 Ａ, U+FF22 Ｂ, U+FF23 Ｃ
		nfkcTester.testDecoder("\u2460", "1"); // U+2460 ①
		nfkcTester.testDecoder("\uFB01", "fi"); // U+FB01 ﬁ
		nfkcTester.testDecoder("\uFB03", "ffi"); // U+FB03 ﬃ
		nfkcTester.testDecoder("\u00B2", "2"); // U+00B2 ²
	}
}
