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

public class HashMd2DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashMd2Dencoder::encHashMd2);

	@Test
	public void test() {
		tester.testEncoder("", "8350e5a3e24c153df2275c9f80692773", tester.options());
		tester.testEncoder("Hello, world!", "8cca0e965edd0e223b744f9cedf8e141", tester.options());
		tester.testEncoder("ア", "39eb0dec41bdca20425eaefbe0055cee", tester.options());
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "0797438d0baf3d71b7194ab3c71746b6", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "78881ab1ca3d3c009c64159092a5531f", tester.options(), "\n");
		tester.testEncoder("a\nb", "ede8fc3d085ca1acf0c92bf32cc1610d", tester.options(), "\r\n");
	}
}
