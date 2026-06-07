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

public class HashSHA1DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashSHA1Dencoder::encHashSHA1);

	@Test
	public void test() {
		tester.testEncoder("", "da39a3ee5e6b4b0d3255bfef95601890afd80709", tester.options());
		tester.testEncoder("Hello, world!", "943a702d06f34599aee1f8da8ef9f7296031d699", tester.options());
		tester.testEncoder("ア", "1b4c4cc65ff2ba9fbfb6b1d5049de29a5f577cfb", tester.options());
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "85e53271e14006f0265921d02d4d736cdc580b0b", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "fcd127ffa1016069006ad91f3f361248f9bdf272", tester.options(), "\n");
		tester.testEncoder("a\nb", "ec6cb5b8c69f8b476a380c9b6e38e18c2733ae7b", tester.options(), "\r\n");
	}
}
