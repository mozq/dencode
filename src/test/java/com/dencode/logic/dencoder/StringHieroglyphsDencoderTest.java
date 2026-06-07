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

public class StringHieroglyphsDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringHieroglyphsDencoder::encStrHieroglyphs,
			StringHieroglyphsDencoder::decStrHieroglyphs);

	@Test
	public void test() {
		tester.test("", "");

		// Basic alphabet (Upper case)
		tester.test("A", "𓄿");
		tester.test("B", "𓃀");
		tester.test("C", "𓎡", "K");
		tester.test("D", "𓂧");
		tester.test("E", "𓇋", "I");
		tester.test("F", "𓆑");
		tester.test("G", "𓎼");
		tester.test("H", "𓉔");
		tester.test("I", "𓇋");
		tester.test("J", "𓆓");
		tester.test("K", "𓎡");
		tester.test("L", "𓃭");
		tester.test("M", "𓅓");
		tester.test("N", "𓈖");
		tester.test("O", "𓍯");
		tester.test("P", "𓊪");
		tester.test("Q", "𓈎");
		tester.test("R", "𓂋");
		tester.test("S", "𓋴");
		tester.test("T", "𓏏");
		tester.test("U", "𓏲");
		tester.test("V", "𓆑", "F");
		tester.test("W", "𓅱");
		tester.test("X", "𓎡𓋴");
		tester.test("Y", "𓇌");
		tester.test("Z", "𓊃");

		// Basic alphabet (Lower case)
		tester.test("a", "𓄿", "A");
		tester.test("b", "𓃀", "B");
		tester.test("c", "𓎡", "K");
		tester.test("d", "𓂧", "D");
		tester.test("e", "𓇋", "I");
		tester.test("f", "𓆑", "F");
		tester.test("g", "𓎼", "G");
		tester.test("h", "𓉔", "H");
		tester.test("i", "𓇋", "I");
		tester.test("j", "𓆓", "J");
		tester.test("k", "𓎡", "K");
		tester.test("l", "𓃭", "L");
		tester.test("m", "𓅓", "M");
		tester.test("n", "𓈖", "N");
		tester.test("o", "𓍯", "O");
		tester.test("p", "𓊪", "P");
		tester.test("q", "𓈎", "Q");
		tester.test("r", "𓂋", "R");
		tester.test("s", "𓋴", "S");
		tester.test("t", "𓏏", "T");
		tester.test("u", "𓏲", "U");
		tester.test("v", "𓆑", "F");
		tester.test("w", "𓅱", "W");
		tester.test("x", "𓎡𓋴", "X");
		tester.test("y", "𓇌", "Y");
		tester.test("z", "𓊃", "Z");

		// Basic alphabet (Full-width)
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "𓄿𓃀𓎡𓂧𓇋𓆑𓎼𓉔𓇋𓆓𓎡𓃭𓅓𓈖𓍯𓊪𓈎𓂋𓋴𓏏𓏲𓆑𓅱𓎡𓋴𓇌𓊃", "ABKDIFGHIJKLMNOPQRSTUFWXYZ");
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "𓄿𓃀𓎡𓂧𓇋𓆑𓎼𓉔𓇋𓆓𓎡𓃭𓅓𓈖𓍯𓊪𓈎𓂋𓋴𓏏𓏲𓆑𓅱𓎡𓋴𓇌𓊃", "ABKDIFGHIJKLMNOPQRSTUFWXYZ");

		// Variants
		tester.testDecoder("𓂝", "A");
		tester.testDecoder("𓂽", "D");
		tester.testDecoder("𓎽", "G");
		tester.testDecoder("𓅼", "G");
		tester.testDecoder("𓎛", "H");
		tester.testDecoder("𓐝", "M");
		tester.testDecoder("𓋔", "N");
		tester.testDecoder("𓈙", "S");
		tester.testDecoder("𓍿", "T");
		tester.testDecoder("𓎡𓊃", "X");
		tester.testDecoder("𓈎𓊃", "X");
		tester.testDecoder("𓐍", "X");
		tester.testDecoder("𓄡", "X");
		tester.testDecoder("𓏭", "Y");

		tester.testDecoder("𓎢", "K");
		tester.testDecoder("𓈚", "S");
		tester.testDecoder("𓈛", "S");
		tester.testDecoder("𓈜", "S");

		// Incorrect symbols support
		tester.testDecoder("𓂾", "B");
		tester.testDecoder("𓃬", "L");
		tester.testDecoder("𓏤", "P");
		tester.testDecoder("𓏘", "Q");
		tester.testDecoder("𓍢", "U");
		tester.testDecoder("𓌟", "X");

		// Unmapped
		tester.test("1", "1");
		tester.test("-", "-");
		tester.test(" ", " ");

		// X (Multi-symbols mapping)
		tester.test("XX", "𓎡𓋴𓎡𓋴", "XX");
		tester.test("XXA", "𓎡𓋴𓎡𓋴𓄿", "XXA");
		tester.test("AXX", "𓄿𓎡𓋴𓎡𓋴", "AXX");
		tester.test("AXXA", "𓄿𓎡𓋴𓎡𓋴𓄿", "AXXA");

		// Mixed
		tester.test("Abc1Ｄｅｆ", "𓄿𓃀𓎡1𓂧𓇋𓆑", "ABK1DIF");
		tester.test(" #Abc1Ｄｅｆ! ", " #𓄿𓃀𓎡1𓂧𓇋𓆑! ", " #ABK1DIF! ");
	}
}
