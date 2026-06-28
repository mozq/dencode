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

public class CipherPlayfairDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherPlayfairDencoder::encCipherPlayfair,
			CipherPlayfairDencoder::decCipherPlayfair,
			"cipher.playfair.key");

	@Test
	public void test_emptyKey() {
		// Blank
		tester.test("", "");

		// Half-width Latin alphabets
		tester.test("HI", "IK");
		tester.test("hi", "ik");
		tester.test("Hi", "Ik");
		tester.test("JIG", "HYKH", "IXIG");

		// Filler
		tester.test("A", "CV", "AX");
		tester.test("LL", "NVNV", "LXLX");

		// Unsupported characters
		tester.test("HI!", "IK!");
		tester.test("H I!", "I K!");
		tester.test("H!I", "I!K");
		tester.test("123", "123");
	}

	@Test
	public void test_playfairExample() {
		// Blank
		tester.test("", "", tester.options("PLAYFAIR EXAMPLE"));

		// Method description example
		tester.test("HELLO", "ISKYIQ", "HELXLO", tester.options("SECRET"));

		// Known example
		tester.test(
				"HIDETHEGOLDINTHETREESTUMP",
				"BMODZBXDNABEKUDMUIXMMOUVIF",
				"HIDETHEGOLDINTHETREXESTUMP",
				tester.options("PLAYFAIR EXAMPLE")
				);

		// Case is applied to each converted character
		tester.test(
				"HideTheGoldInTheTreeStump",
				"BmodZbxDnabEkUdmUixMmOuvif",
				"HideTheGoldInTheTreXeStump",
				tester.options("PLAYFAIR EXAMPLE")
				);

		// Unsupported characters are preserved
		tester.test(
				"Hide the gold!",
				"Bmod zbx dnagE!",
				"Hide the goldX!",
				tester.options("PLAYFAIR EXAMPLE")
				);
		tester.test(
				"Hello, world!",
				"IskYiq, ewfqkC!",
				"HelXlo, worldX!",
				tester.options("SECRET")
				);
	}

	@Test
	public void test_keyNormalization() {
		// Key duplicates and J are normalized
		tester.test("ABC", "BCAZ", "ABCX", tester.options("JIG"));
		tester.test("ABC", "BCAZ", "ABCX", tester.options("IIG"));

		// Unsupported key characters are ignored
		tester.test("ABC", "BCAZ", "ABCX", tester.options(" J!I/G "));
	}

	@Test
	public void test_decoder() {
		// Filler is not removed
		tester.testDecoder("BMODZBXDNABEKUDMUIXMMOUVIF", "HIDETHEGOLDINTHETREXESTUMP", tester.options("PLAYFAIR EXAMPLE"));

		// Unsupported characters are preserved
		tester.testDecoder("IK!", "HI!");
		tester.testDecoder("I K!", "H I!");

		// Odd trailing cipher characters are preserved
		tester.testDecoder("IKC", "HIC");
	}
}
