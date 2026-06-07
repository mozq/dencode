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

public class NumberNAryDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			NumberNAryDencoder::encNumNAry,
			NumberNAryDencoder::decNumNAry,
			"number.n-ary.radix");

	@Test
	public void test() {
		// Blank
		tester.test("", null);

		// Default radix (32)
		tester.test("0", "0");
		tester.test("31", "v");
		tester.test("32", "10");
		tester.test("1234.5", "16i.g");
		tester.test("+1234.5", "16i.g", "1234.5");
		tester.test("-1234.5", "-16i.g");
		tester.test("001234.50", "16i.g", "1234.5");
	}

	@Test
	public void test_radix() {
		// Integer
		tester.test("255", "11111111", tester.options(2));
		tester.test("255", "377", tester.options(8));
		tester.test("255", "255", tester.options(10));
		tester.test("255", "ff", tester.options(16));
		tester.test("255", "73", tester.options(36));

		// Decimal
		tester.test("10.5", "1010.1", tester.options(2));
		tester.test("10.5", "12.4", tester.options(8));
		tester.test("10.5", "10.5", tester.options(10));
		tester.test("10.5", "a.8", tester.options(16));
		tester.test("10.5", "a.i", tester.options(36));
	}

	@Test
	public void test_lines() {
		tester.test("10\n31\n32", "a\nv\n10");
		tester.test("10\r\n31\r\n32", "a\nv\n10", "10\n31\n32");
		tester.test("10\n31\n32", "1010\n11111\n100000", tester.options(2));
	}

	@Test
	public void test_decoder() {
		// Default radix (32)
		tester.testDecoder("0", "0");
		tester.testDecoder("v", "31");
		tester.testDecoder("10", "32");
		tester.testDecoder("16i.g", "1234.5");
		tester.testDecoder("+16i.g", "1234.5");
		tester.testDecoder("-16i.g", "-1234.5");

		// Radix
		tester.testDecoder("11111111", "255", tester.options(2));
		tester.testDecoder("377", "255", tester.options(8));
		tester.testDecoder("ff", "255", tester.options(16));
		tester.testDecoder("73", "255", tester.options(36));
		tester.testDecoder("a.8", "10.5", tester.options(16));

		// Prefix
		tester.testDecoder("0b11111111", "255", tester.options(2));
		tester.testDecoder("0o377", "255", tester.options(8));
		tester.testDecoder("0xff", "255", tester.options(16));
	}

	@Test
	public void test_decoder_unsupported() {
		// Parsable-looking values return blank so the radix option can be changed
		tester.testDecoder("2", "", tester.options(2));
		tester.testDecoder("g", "", tester.options(16));
		tester.testDecoder("z", "", tester.options(32));

		// Unsupported values
		tester.testDecoder("", null);
		tester.testDecoder("x/x", null);
		tester.testDecoder(" ", null);
	}

	@Test
	public void test_option() {
		// Empty, invalid, and out-of-range radix values use the default radix (32)
		tester.test("1234.5", "16i.g", tester.options(""));
		tester.test("1234.5", "16i.g", tester.options("unknown"));
		tester.test("1234.5", "16i.g", tester.options(1));
		tester.test("1234.5", "16i.g", tester.options(37));
	}
}
