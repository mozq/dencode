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

public class StringBase32DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringBase32Dencoder::encStrBase32,
			StringBase32Dencoder::decStrBase32);

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// ASCII
		tester.test("A", "IE======");
		tester.test("AA", "IFAQ====");
		tester.test("AAA", "IFAUC===");
		tester.test("AAAA", "IFAUCQI=");
		tester.test("AAAAA", "IFAUCQKB");
		tester.test("AAAAAA", "IFAUCQKBIE======");
		tester.test("AAAAAAA", "IFAUCQKBIFAQ====");

		// non-ASCII (Latin-1)
		tester.test("ä", "YOSA====");
		tester.test("ää", "YOSMHJA=");
		tester.test("äää", "YOSMHJGDUQ======");
		tester.test("ääää", "YOSMHJGDUTB2I===");
		tester.test("\u00FF", "74======", tester.options(), StandardCharsets.ISO_8859_1);

		// non-ASCII (Japanese)
		tester.test("ア", "4OBKE===");
		tester.test("アア", "4OBKFY4CUI======");
		tester.test("アアア", "4OBKFY4CULRYFIQ=");

		// non-BMP
		tester.test("😀", "6CPZRAA=");
		tester.test("😀😀", "6CPZRAHQT6MIA===");
		tester.test("😀😀😀", "6CPZRAHQT6MIB4E7TCAA====");
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// Case
		tester.testDecoder("IFAUCQKBIFAQ====", "AAAAAAA");
		tester.testDecoder("ifaucqkbifaq====", "AAAAAAA");

		// Padding
		tester.testDecoder("IE======", "A");
		tester.testDecoder("IE=====", "A");
		tester.testDecoder("IE====", "A");
		tester.testDecoder("IE===", "A");
		tester.testDecoder("IE==", "A");
		tester.testDecoder("IE=", "A");
		tester.testDecoder("IE", "A");

		// Trailing white-spaces
		tester.testDecoder("IE ==\t====\r\n", "A");

		// White-space (Ignore SPACE, TAB, CR and LF)
		tester.testDecoder("IF AU\tCQK\r\nBIE======", "AAAAAA");
	}
}
