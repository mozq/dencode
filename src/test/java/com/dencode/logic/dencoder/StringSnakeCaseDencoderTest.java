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

public class StringSnakeCaseDencoderTest {
	private final DencoderTester upperSnakeCaseTester = new DencoderTester(
			StringSnakeCaseDencoder::encStrUpperSnakeCase);
	private final DencoderTester lowerSnakeCaseTester = new DencoderTester(
			StringSnakeCaseDencoder::encStrLowerSnakeCase);

	@Test
	public void test_upperSnakeCase() {
		// Blank
		upperSnakeCaseTester.testEncoder("", "");

		// Method description example
		upperSnakeCaseTester.testEncoder("Hello, world!", "HELLO_WORLD");

		// Separators
		upperSnakeCaseTester.testEncoder("hello world", "HELLO_WORLD");
		upperSnakeCaseTester.testEncoder("hello_world-kebab.case", "HELLO_WORLD_KEBAB_CASE");
		upperSnakeCaseTester.testEncoder("abc123 def45", "ABC123_DEF45");
		upperSnakeCaseTester.testEncoder("alreadyCamelCase", "ALREADY_CAMEL_CASE");

		// Non-ASCII words
		upperSnakeCaseTester.testEncoder("こんにちは 世界", "こんにちは_世界");
		upperSnakeCaseTester.testEncoder("äpfel öl", "ÄPFEL_ÖL");
	}

	@Test
	public void test_lowerSnakeCase() {
		// Blank
		lowerSnakeCaseTester.testEncoder("", "");

		// Method description example
		lowerSnakeCaseTester.testEncoder("Hello, world!", "hello_world");

		// Separators
		lowerSnakeCaseTester.testEncoder("hello world", "hello_world");
		lowerSnakeCaseTester.testEncoder("hello_world-kebab.case", "hello_world_kebab_case");
		lowerSnakeCaseTester.testEncoder("abc123 def45", "abc123_def45");
		lowerSnakeCaseTester.testEncoder("AlreadyCamelCase", "already_camel_case");

		// Non-ASCII words
		lowerSnakeCaseTester.testEncoder("こんにちは 世界", "こんにちは_世界");
		lowerSnakeCaseTester.testEncoder("Äpfel Öl", "äpfel_öl");
	}

	@Test
	public void test_lines() {
		upperSnakeCaseTester.testEncoder("hello world\nfoo bar", "HELLO_WORLD\nFOO_BAR");
		lowerSnakeCaseTester.testEncoder("hello world\nfoo bar", "hello_world\nfoo_bar");

		// CRLF input uses the default LF line break
		upperSnakeCaseTester.testEncoder("hello world\r\nfoo bar", "HELLO_WORLD\nFOO_BAR");
	}
}
