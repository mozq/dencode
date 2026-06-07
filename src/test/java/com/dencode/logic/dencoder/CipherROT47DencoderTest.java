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

public class CipherROT47DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherROT47Dencoder::encCipherROT47,
			CipherROT47Dencoder::decCipherROT47);

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// Method description example
		tester.test("Hello, world 123!", "w6==@[ H@C=5 `abP");

		// Half-width characters
		tester.test("!\"#$%&'()*+,-./", "PQRSTUVWXYZ[\\]^");
		tester.test("0123456789", "_`abcdefgh");
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "pqrstuvwxyz{|}~!\"#$%&'()*+");
		tester.test("abcdefghijklmnopqrstuvwxyz", "23456789:;<=>?@ABCDEFGHIJK");

		// Full-width characters
		tester.test("！＂＃＄％＆＇（）＊＋，－．／", "ＰＱＲＳＴＵＶＷＸＹＺ［＼］＾");
		tester.test("０１２３４５６７８９", "＿｀ａｂｃｄｅｆｇｈ");
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ｐｑｒｓｔｕｖｗｘｙｚ｛｜｝～！＂＃＄％＆＇（）＊＋");
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫ");

		// Unsupported characters are unchanged
		tester.test(" \t\n漢字あア", " \t\n漢字あア");
	}

	@Test
	public void test_decoder() {
		tester.testDecoder("w6==@[ H@C=5 `abP", "Hello, world 123!");
	}
}
