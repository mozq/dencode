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

public class HashCRC32DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashCRC32Dencoder::encHashCRC32);

	@Test
	public void test() {
		tester.testEncoder("", "0", tester.options());
		tester.testEncoder("Hello, world!", "ebe6c6e6", tester.options());
		tester.testEncoder("ア", "65888fe6", tester.options());
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "ff000000", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "ef0790fb", tester.options(), "\n");
		tester.testEncoder("a\nb", "f35534d7", tester.options(), "\r\n");
	}
}
