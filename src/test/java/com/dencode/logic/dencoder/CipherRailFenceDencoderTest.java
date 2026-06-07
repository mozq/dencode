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

public class CipherRailFenceDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherRailFenceDencoder::encCipherRailFence,
			CipherRailFenceDencoder::decCipherRailFence,
			"cipher.rail-fence.key");

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// Method description example
		tester.test("Hello, world!", "Hlo ol!el,wrd");

		// Default key (2)
		tester.test("ABCDEFGHIJ", "ACEGIBDFHJ");
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TI_SASCE_ESGHSI__ERTMSAE");
	}

	@Test
	public void test_key() {
		// Key 2
		tester.test("WEAREDISCOVEREDFLEEATONCE", "WAEICVRDLETNEERDSOEEFEAOC", tester.options(2));

		// Key 3
		tester.test("WEAREDISCOVEREDFLEEATONCE", "WECRLTEERDSOEEFEAOCAIVDEN", tester.options(3));

		// Key 4
		tester.test("WEAREDISCOVEREDFLEEATONCE", "WIREEEDSEEEACAECVDLTNROFO", tester.options(4));

		// Key greater than the text length leaves the text unchanged
		tester.test("HELLO", "HELLO", tester.options(20));
	}

	@Test
	public void test_codePoints() {
		tester.test("A😀B😃C", "ABC😀😃", tester.options(2));
		tester.test("こんにちは世界", "こはんち世に界", tester.options(3));
	}

	@Test
	public void test_lines() {
		tester.test("AB\nCD", "A\nDBC");
		tester.test("AB\r\nCD", "A\nDBC", "AB\nCD");
	}

	@Test
	public void test_decoder() {
		tester.testDecoder("Hlo ol!el,wrd", "Hello, world!");
		tester.testDecoder("WECRLTEERDSOEEFEAOCAIVDEN", "WEAREDISCOVEREDFLEEATONCE", tester.options(3));
	}

	@Test
	public void test_invalid_keys() {
		// Key less than 2 leaves text unchanged and does not cause infinite loop
		tester.test("HELLO", "HELLO", tester.options(1));
		tester.test("HELLO", "HELLO", tester.options(0));
		tester.test("HELLO", "HELLO", tester.options(-1));
	}
}
