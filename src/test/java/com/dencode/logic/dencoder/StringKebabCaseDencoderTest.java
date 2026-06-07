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

public class StringKebabCaseDencoderTest {
	private final DencoderTester upperKebabCaseTester = new DencoderTester(
			StringKebabCaseDencoder::encStrUpperKebabCase);
	private final DencoderTester lowerKebabCaseTester = new DencoderTester(
			StringKebabCaseDencoder::encStrLowerKebabCase);

	@Test
	public void test_upperKebabCase() {
		// Blank
		upperKebabCaseTester.testEncoder("", "");

		// Method description example
		upperKebabCaseTester.testEncoder("Hello, world!", "HELLO-WORLD");

		// Separators
		upperKebabCaseTester.testEncoder("hello world", "HELLO-WORLD");
		upperKebabCaseTester.testEncoder("hello_world-kebab.case", "HELLO-WORLD-KEBAB-CASE");
		upperKebabCaseTester.testEncoder("abc123 def45", "ABC123-DEF45");
		upperKebabCaseTester.testEncoder("alreadyCamelCase", "ALREADY-CAMEL-CASE");

		// Non-ASCII words
		upperKebabCaseTester.testEncoder("こんにちは 世界", "こんにちは-世界");
		upperKebabCaseTester.testEncoder("äpfel öl", "ÄPFEL-ÖL");
	}

	@Test
	public void test_lowerKebabCase() {
		// Blank
		lowerKebabCaseTester.testEncoder("", "");

		// Method description example
		lowerKebabCaseTester.testEncoder("Hello, world!", "hello-world");

		// Separators
		lowerKebabCaseTester.testEncoder("hello world", "hello-world");
		lowerKebabCaseTester.testEncoder("hello_world-kebab.case", "hello-world-kebab-case");
		lowerKebabCaseTester.testEncoder("abc123 def45", "abc123-def45");
		lowerKebabCaseTester.testEncoder("AlreadyCamelCase", "already-camel-case");

		// Non-ASCII words
		lowerKebabCaseTester.testEncoder("こんにちは 世界", "こんにちは-世界");
		lowerKebabCaseTester.testEncoder("Äpfel Öl", "äpfel-öl");
	}

	@Test
	public void test_lines() {
		upperKebabCaseTester.testEncoder("hello world\nfoo bar", "HELLO-WORLD\nFOO-BAR");
		lowerKebabCaseTester.testEncoder("hello world\nfoo bar", "hello-world\nfoo-bar");

		// CRLF input uses the default LF line break
		upperKebabCaseTester.testEncoder("hello world\r\nfoo bar", "HELLO-WORLD\nFOO-BAR");
	}
}
