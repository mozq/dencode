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

public class StringPunycodeDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringPunycodeDencoder::encStrPunycode,
			StringPunycodeDencoder::decStrPunycode);

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// ASCII
		tester.test("example.com", "example.com");
		tester.test("www.example.com", "www.example.com");
		tester.test("example_domain.com", "example_domain.com");
		tester.test("example.com.", "example.com.");

		// Method description example
		tester.test("ドメイン.com", "xn--eckwd4c7c.com");

		// Internationalized domain names
		tester.test("例え.テスト", "xn--r8jz45g.xn--zckzah");
		tester.test("bücher.example", "xn--bcher-kva.example");
		tester.test("mañana.com", "xn--maana-pta.com");
		tester.test("한국.kr", "xn--3e0b707e.kr");
		tester.test("пример.рф", "xn--e1afmkfd.xn--p1ai");
	}

	@Test
	public void test_lines() {
		tester.test("ドメイン.com\n例え.テスト", "xn--eckwd4c7c.com\nxn--r8jz45g.xn--zckzah");
		tester.test("ドメイン.com\r\n例え.テスト", "xn--eckwd4c7c.com\nxn--r8jz45g.xn--zckzah", "ドメイン.com\n例え.テスト");
	}

	@Test
	public void test_decoder() {
		// ASCII
		tester.testDecoder("example.com", "example.com");

		// Punycode
		tester.testDecoder("xn--eckwd4c7c.com", "ドメイン.com");
		tester.testDecoder("xn--r8jz45g.xn--zckzah", "例え.テスト");
		tester.testDecoder("xn--bcher-kva.example", "bücher.example");
		tester.testDecoder("xn--3e0b707e.kr", "한국.kr");
		tester.testDecoder("xn--e1afmkfd.xn--p1ai", "пример.рф");

		// Lines
		tester.testDecoder("xn--eckwd4c7c.com\nxn--r8jz45g.xn--zckzah", "ドメイン.com\n例え.テスト");
	}

	@Test
	public void test_encoder_unsupported() {
		tester.testEncoder(".example.com", null);
		tester.testEncoder("example..com", null);
		tester.testEncoder("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.com", null);
	}
}
