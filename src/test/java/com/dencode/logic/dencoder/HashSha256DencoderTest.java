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

public class HashSha256DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashSha256Dencoder::encHashSha256);

	@Test
	public void test() {
		tester.testEncoder("", "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855", tester.options());
		tester.testEncoder("Hello, world!", "315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3", tester.options());
		tester.testEncoder("ア", "f49423c7fc7144a91dbf2657894a522c6cdf678cb728bd57ffce04be3d414b40", tester.options());
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "a8100ae6aa1940d0b663bb31cd466142ebbdbd5187131b92d93818987832eb89", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "7e18f737311b2dc3b2f269dd78396b0351f14fb66efa879f768cb23181883c78", tester.options(), "\n");
		tester.testEncoder("a\nb", "18745f36a05e29072709042d6062ce54f1b08ff36c27ba80c39f81fb010c8ce2", tester.options(), "\r\n");
	}
}
