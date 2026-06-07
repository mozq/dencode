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

public class NumberEnglishDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			NumberEnglishDencoder::encNumEnglish,
			NumberEnglishDencoder::decNumEnglish,
			"number.english.system",
			"number.english.decimal-notation");

	@Test
	public void test() {
		tester.test("0", "Zero");
		tester.test("1", "One");
		tester.test("10", "Ten");
		tester.test("101", "One Hundred One");
		tester.test("23456", "Twenty-Three Thousand Four Hundred Fifty-Six");
		tester.test("1234.5", "One Thousand Two Hundred Thirty-Four point Five");
		tester.test("-0.012", "Negative Zero point Zero One Two");
		tester.test("1\n20", "One\nTwenty");

		tester.test("abc", null);
		tester.test("", null);
		tester.test("1\nabc", null);
	}

	@Test
	public void test_fraction() {
		tester.test("1.0", "One and 0/10", tester.options(null, "fraction"));
		tester.test("1.012", "One and 12/1000", tester.options(null, "fraction"));
		tester.test("-1.012", "Negative One and 12/1000", tester.options(null, "fraction"));
	}

	@Test
	public void test_system_cw() {
		tester.test("1000000000000000000000000000000000000000000000000000000000000000000000000", "One Tresvigintillion", tester.options("cw"));
	}

	@Test
	public void test_decoder() {
		tester.testDecoder("Zero", "0");
		tester.testDecoder("One", "1");
		tester.testDecoder("Ten", "10");
		tester.testDecoder("One Hundred One", "101");
		tester.testDecoder("Twenty-Three Thousand Four Hundred Fifty-Six", "23456");
		tester.testDecoder("One Thousand Two Hundred Thirty-Four point Five", "1234.5");
		tester.testDecoder("One and 12/1000", "1.012");
		tester.testDecoder("Negative Zero point Zero One Two", "-0.012");
		tester.testDecoder("One\nTwenty", "1\n20");

		tester.testDecoder("", null);
		tester.testDecoder("xxx", null);
		tester.testDecoder("One\nxxx", null);
	}
}
