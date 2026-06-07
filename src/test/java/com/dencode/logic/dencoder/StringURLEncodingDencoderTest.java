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

public class StringURLEncodingDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringURLEncodingDencoder::encStrURLEncoding,
			StringURLEncodingDencoder::decStrURLEncoding,
			"string.url-encoding.space");

	@Test
	public void test_default() {
		// Blank
		tester.test("", "", tester.options(""));

		// A-Z 0-9
		tester.test("AZaz09", "AZaz09", tester.options(""));

		// Symbol (Space)
		tester.test(" ", "%20", tester.options(""));

		// Symbol (Reserved)
		tester.test("%:/?=*()", "%25%3A%2F%3F%3D%2A%28%29", tester.options(""));

		// Symbol (Unreserved)
		tester.test("-._~", "-._~", tester.options(""));

		// Control
		tester.test("\0\t\n", "%00%09%0A", tester.options(""));

		// non-ASCII (Latin-1)
		tester.test("ä", "%C3%A4", tester.options(""));
		tester.test("\u00FF", "%FF", tester.options(""), StandardCharsets.ISO_8859_1);

		// non-ASCII (Japanese)
		tester.test("ア", "%E3%82%A2", tester.options(""));

		// non-BMP
		tester.test("😀", "%F0%9F%98%80", tester.options(""));
	}

	@Test
	public void test_form() {
		// Blank
		tester.test("", "", tester.options("form"));

		// A-Z 0-9
		tester.test("AZaz09", "AZaz09", tester.options("form"));

		// Symbol (Space)
		tester.test(" ", "+", tester.options("form"));

		// Symbol (Reserved)
		tester.test("%:/?=*()", "%25%3A%2F%3F%3D%2A%28%29", tester.options("form"));

		// Symbol (Unreserved)
		tester.test("-._~", "-._~", tester.options("form"));

		// Control
		tester.test("\0\t\n", "%00%09%0A", tester.options("form"));

		// non-ASCII (Latin-1)
		tester.test("ä", "%C3%A4", tester.options("form"));

		// non-ASCII (Japanese)
		tester.test("ア", "%E3%82%A2", tester.options("form"));

		// non-BMP
		tester.test("😀", "%F0%9F%98%80", tester.options("form"));
	}

	@Test
	public void test_lineBreak() {
		tester.test("a\nb", "a%0Ab", tester.options(""), "\n");
		tester.test("a\nb", "a%0D%0Ab", "a\r\nb", tester.options(""), "\r\n");
		tester.test("a\nb", "a%0D%0Ab", "a\r\nb", tester.options("form"), "\r\n");
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// Supported character
		tester.testDecoder("AZaz09", "AZaz09");

		// Symbol (Unreserved)
		tester.testDecoder("-._~", "-._~");

		// Unsupported character
		tester.testDecoder("ア", null);
		tester.testDecoder("😀", null);

		// Illegal format
		tester.testDecoder("%", null);
		tester.testDecoder("%x", null);
		tester.testDecoder("%%", null);
		tester.testDecoder("%2", null);
		tester.testDecoder("%2x", null);

		// Lower case
		tester.testDecoder("%3a", ":");

		// Mixed
		tester.testDecoder("A%20Z+0%F0%9f%98%809", "A Z 0😀9");
	}
}
