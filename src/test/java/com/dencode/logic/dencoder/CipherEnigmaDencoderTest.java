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

import java.util.Map;

import org.junit.jupiter.api.Test;

public class CipherEnigmaDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherEnigmaDencoder::encCipherEnigma,
			CipherEnigmaDencoder::decCipherEnigma,
			"cipher.enigma.machine",
			"cipher.enigma.reflector",
			"cipher.enigma.reflector-ring",
			"cipher.enigma.reflector-position",
			"cipher.enigma.rotor4",
			"cipher.enigma.rotor4-ring",
			"cipher.enigma.rotor4-position",
			"cipher.enigma.rotor3",
			"cipher.enigma.rotor3-ring",
			"cipher.enigma.rotor3-position",
			"cipher.enigma.rotor2",
			"cipher.enigma.rotor2-ring",
			"cipher.enigma.rotor2-position",
			"cipher.enigma.rotor1",
			"cipher.enigma.rotor1-ring",
			"cipher.enigma.rotor1-position",
			"cipher.enigma.plugboard",
			"cipher.enigma.uhr",
			"cipher.enigma.ukwd");

	@Test
	public void test_default() {
		// Blank
		tester.test("", "");

		// Default options
		tester.test("Hello, world!", "Lzfbd, emzwy!");

		// Non-letters are unchanged
		tester.test("Hello, world! 123", "Lzfbd, emzwy! 123");
	}

	@Test
	public void test_machineM3() {
		tester.test("HELLOWORLD", "MFNCZBBFZM", options("M3", "UKW-B"));
	}

	@Test
	public void test_rotorSettings() {
		tester.test("HELLOWORLD", "COCMYOEFBB", options("M3", "UKW-B", null, null, null, null, null, "IV", 2, 3, "III", 4, 5, "II", 6, 7));
	}

	@Test
	public void test_plugboard() {
		tester.test("HELLOWORLD", "MDOJEOZIUP", options("M3", "UKW-B", null, null, null, null, null, "III", 1, 1, "II", 1, 1, "I", 1, 1, "AT BL DF GJ HM NW OP QY RZ VX"));
	}

	@Test
	public void test_uhr() {
		tester.test("HELLOWORLD", "NDJWEXWFTJ", options("I", "UKW-B", null, null, null, null, null, "III", 1, 1, "II", 1, 1, "I", 1, 1, "AT BL DF GJ HM NW OP QY RZ VX", 13));
	}

	@Test
	public void test_machineM4() {
		tester.test("HELLOWORLD", "MFNCZBBFZM", options("M4", "UKW-B", null, null, "Beta", 1, 1, "III", 1, 1, "II", 1, 1, "I", 1, 1));
		tester.test("HELLOWORLD", "OKQWBFSIHE", options("M4", "UKW-C", null, null, "Gamma", 2, 3, "VIII", 4, 5, "VII", 6, 7, "VI", 8, 9));
	}

	@Test
	public void test_settableReflector() {
		tester.test("HELLOWORLD", "IRYUVEHQFP", options("G", "UKW", 2, 3, null, null, null, "III", 4, 5, "II", 6, 7, "I", 8, 9));
	}

	@Test
	public void test_ukwd() {
		String ukwd = "AQ BG CK DI EL FX HZ MW NV OT PU RS";
		tester.test("HELLOWORLD", "BJWYHQHBSE", options("M4", "UKW-D", null, null, "Beta", 1, 1, "III", 1, 1, "II", 1, 1, "I", 1, 1, null, null, ukwd));
	}

	@Test
	public void test_decoder() {
		tester.testDecoder("Lzfbd, emzwy!", "Hello, world!");
		tester.testDecoder("MFNCZBBFZM", "HELLOWORLD", options("M3", "UKW-B"));
	}

	@Test
	public void test_unsupported() {
		tester.testEncoder("HELLOWORLD", "", options(""));
		tester.testEncoder("HELLOWORLD", "", options("unknown"));
		tester.testEncoder("HELLOWORLD", "", options("M3", "UKW-A"));
		tester.testEncoder("HELLOWORLD", "", options("M3", "UKW-B", null, null, null, null, null, "Beta"));
		tester.testEncoder("HELLOWORLD", "", options("I", "UKW-D", null, null, null, null, null, "III", 1, 1, "II", 1, 1, "I", 1, 1, null, null, "invalid"));
	}

	private Map<String, String> options(Object... optionValues) {
		return tester.options(optionValues);
	}
}
