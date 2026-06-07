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

public class StringTextReverseDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringTextReverseDencoder::encStrReverse);

	@Test
	public void test() {
		// Blank
		tester.testEncoder("", "");

		// One character
		tester.testEncoder("A", "A");

		// Method description example
		tester.testEncoder("Hello, world!", "!dlrow ,olleH");

		// Text
		tester.testEncoder("ABC 123!?", "?!321 CBA");
		tester.testEncoder("こんにちは", "はちにんこ");
		tester.testEncoder("Привет, мир!", "!рим ,тевирП");
	}

	@Test
	public void test_surrogatePairs() {
		tester.testEncoder("A😀B", "B😀A");
		tester.testEncoder("😀😃😄", "😄😃😀");
	}

	@Test
	public void test_lines() {
		tester.testEncoder("abc\n123", "321\ncba");

		// CRLF input uses the default LF line break before reversing
		tester.testEncoder("abc\r\n123", "321\ncba");
	}
}
