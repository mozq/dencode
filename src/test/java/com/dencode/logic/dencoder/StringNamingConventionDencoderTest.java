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

public class StringNamingConventionDencoderTest {
	private final DencoderTester upperCamelCaseTester = new DencoderTester(
			StringNamingConventionDencoder::encStrUpperCamelCase);
	private final DencoderTester lowerCamelCaseTester = new DencoderTester(
			StringNamingConventionDencoder::encStrLowerCamelCase);
	private final DencoderTester upperSnakeCaseTester = new DencoderTester(
			StringNamingConventionDencoder::encStrUpperSnakeCase);
	private final DencoderTester lowerSnakeCaseTester = new DencoderTester(
			StringNamingConventionDencoder::encStrLowerSnakeCase);
	private final DencoderTester upperKebabCaseTester = new DencoderTester(
			StringNamingConventionDencoder::encStrUpperKebabCase);
	private final DencoderTester lowerKebabCaseTester = new DencoderTester(
			StringNamingConventionDencoder::encStrLowerKebabCase);

	@Test
	public void test() {
		// Blank
		upperCamelCaseTester.testEncoder("", "");
		lowerCamelCaseTester.testEncoder("", "");
		upperSnakeCaseTester.testEncoder("", "");
		lowerSnakeCaseTester.testEncoder("", "");
		upperKebabCaseTester.testEncoder("", "");
		lowerKebabCaseTester.testEncoder("", "");

		// Method description example
		upperCamelCaseTester.testEncoder("Hello, world!", "HelloWorld");
		lowerCamelCaseTester.testEncoder("Hello, world!", "helloWorld");
		upperSnakeCaseTester.testEncoder("Hello, world!", "HELLO_WORLD");
		lowerSnakeCaseTester.testEncoder("Hello, world!", "hello_world");
		upperKebabCaseTester.testEncoder("Hello, world!", "HELLO-WORLD");
		lowerKebabCaseTester.testEncoder("Hello, world!", "hello-world");
	}

	@Test
	public void test_lines() {
		upperCamelCaseTester.testEncoder("hello world\nfoo bar", "HelloWorld\nFooBar");
		lowerCamelCaseTester.testEncoder("hello world\nfoo bar", "helloWorld\nfooBar");
		upperSnakeCaseTester.testEncoder("hello world\nfoo bar", "HELLO_WORLD\nFOO_BAR");
		lowerSnakeCaseTester.testEncoder("hello world\nfoo bar", "hello_world\nfoo_bar");
		upperKebabCaseTester.testEncoder("hello world\nfoo bar", "HELLO-WORLD\nFOO-BAR");
		lowerKebabCaseTester.testEncoder("hello world\nfoo bar", "hello-world\nfoo-bar");

		// CRLF input uses the default LF line break
		upperSnakeCaseTester.testEncoder("hello world\r\nfoo bar", "HELLO_WORLD\nFOO_BAR");
	}
}
