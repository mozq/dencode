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

public class NumberJapaneseDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			NumberJapaneseDencoder::encNumJapanese,
			NumberJapaneseDencoder::decNumJapanese,
			"number.japanese.variant");

	@Test
	public void test() {
		tester.test("0", "〇");
		tester.test("1", "一");
		tester.test("10", "十");
		tester.test("101", "百一");
		tester.test("23456", "二万三千四百五十六");
		tester.test("1234.5", "千二百三十四・五");
		tester.test("-0.012", "−〇・〇一二");
		tester.test("1\n20", "一\n二十");

		tester.test("abc", null);
		tester.test("", null);
		tester.test("1\nabc", null);
	}

	@Test
	public void test_daiji() {
		tester.test("0", "零", tester.options("daiji"));
		tester.test("1", "壱", tester.options("daiji"));
		tester.test("10", "壱拾", tester.options("daiji"));
		tester.test("101", "壱陌壱", tester.options("daiji"));
		tester.test("23456", "弐萬参阡肆陌伍拾陸", tester.options("daiji"));
		tester.test("1234.5", "壱阡弐陌参拾肆・伍", tester.options("daiji"));
		tester.test("-0.012", "−零・零壱弐", tester.options("daiji"));
		tester.test("1\n20", "壱\n弐拾", tester.options("daiji"));
	}

	@Test
	public void test_decoder() {
		tester.testDecoder("〇", "0");
		tester.testDecoder("一", "1");
		tester.testDecoder("十", "10");
		tester.testDecoder("百一", "101");
		tester.testDecoder("二万三千四百五十六", "23456");
		tester.testDecoder("千二百三十四・五", "1234.5");
		tester.testDecoder("壱阡弐陌参拾肆・伍", "1234.5");
		tester.testDecoder("−〇・〇一二", "-0.012");
		tester.testDecoder("一\n二十", "1\n20");

		tester.testDecoder("", null);
		tester.testDecoder("あ", null);
		tester.testDecoder("一\nあ", null);
	}
}
