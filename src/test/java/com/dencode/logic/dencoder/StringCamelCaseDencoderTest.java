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

public class StringCamelCaseDencoderTest {
	private final DencoderTester upperCamelCaseTester = new DencoderTester(
			StringCamelCaseDencoder::encStrUpperCamelCase);
	private final DencoderTester lowerCamelCaseTester = new DencoderTester(
			StringCamelCaseDencoder::encStrLowerCamelCase);

	@Test
	public void test_upperCamelCase() {
		// Blank
		upperCamelCaseTester.testEncoder("", "");

		// Method description example
		upperCamelCaseTester.testEncoder("Hello, world!", "HelloWorld");

		// Separators
		upperCamelCaseTester.testEncoder("hello world", "HelloWorld");
		upperCamelCaseTester.testEncoder("hello_world-kebab.case", "HelloWorldKebabCase");
		upperCamelCaseTester.testEncoder("abc123 def45", "Abc123Def45");
		upperCamelCaseTester.testEncoder("alreadyCamelCase", "AlreadyCamelCase");

		// Non-ASCII words
		upperCamelCaseTester.testEncoder("こんにちは 世界", "こんにちは世界");
		upperCamelCaseTester.testEncoder("äpfel öl", "ÄpfelÖl");
	}

	@Test
	public void test_lowerCamelCase() {
		// Blank
		lowerCamelCaseTester.testEncoder("", "");

		// Method description example
		lowerCamelCaseTester.testEncoder("Hello, world!", "helloWorld");

		// Separators
		lowerCamelCaseTester.testEncoder("hello world", "helloWorld");
		lowerCamelCaseTester.testEncoder("hello_world-kebab.case", "helloWorldKebabCase");
		lowerCamelCaseTester.testEncoder("abc123 def45", "abc123Def45");
		lowerCamelCaseTester.testEncoder("AlreadyCamelCase", "alreadyCamelCase");

		// Non-ASCII words
		lowerCamelCaseTester.testEncoder("こんにちは 世界", "こんにちは世界");
		lowerCamelCaseTester.testEncoder("Äpfel Öl", "äpfelÖl");
	}

	@Test
	public void test_lines() {
		upperCamelCaseTester.testEncoder("hello world\nfoo bar", "HelloWorld\nFooBar");
		lowerCamelCaseTester.testEncoder("hello world\nfoo bar", "helloWorld\nfooBar");

		// CRLF input uses the default LF line break
		upperCamelCaseTester.testEncoder("hello world\r\nfoo bar", "HelloWorld\nFooBar");
	}
}
