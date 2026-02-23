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

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class StringHieroglyphsDencoderTest {
	
	@Test
	public void test() {
		testDencoder("", "");
		
		// Basic alphabet (Upper case)
		testDencoder("A", "𓄿");
		testDencoder("B", "𓃀");
		testDencoder("C", "𓎡", "K");
		testDencoder("D", "𓂧");
		testDencoder("E", "𓇋", "I");
		testDencoder("F", "𓆑");
		testDencoder("G", "𓎼");
		testDencoder("H", "𓉔");
		testDencoder("I", "𓇋");
		testDencoder("J", "𓆓");
		testDencoder("K", "𓎡");
		testDencoder("L", "𓃭");
		testDencoder("M", "𓅓");
		testDencoder("N", "𓈖");
		testDencoder("O", "𓍯");
		testDencoder("P", "𓊪");
		testDencoder("Q", "𓈎");
		testDencoder("R", "𓂋");
		testDencoder("S", "𓋴");
		testDencoder("T", "𓏏");
		testDencoder("U", "𓏲");
		testDencoder("V", "𓆑", "F");
		testDencoder("W", "𓅱");
		testDencoder("X", "𓎡𓋴");
		testDencoder("Y", "𓇌");
		testDencoder("Z", "𓊃");
		
		// Basic alphabet (Lower case)
		testDencoder("a", "𓄿", "A");
		testDencoder("b", "𓃀", "B");
		testDencoder("c", "𓎡", "K");
		testDencoder("d", "𓂧", "D");
		testDencoder("e", "𓇋", "I");
		testDencoder("f", "𓆑", "F");
		testDencoder("g", "𓎼", "G");
		testDencoder("h", "𓉔", "H");
		testDencoder("i", "𓇋", "I");
		testDencoder("j", "𓆓", "J");
		testDencoder("k", "𓎡", "K");
		testDencoder("l", "𓃭", "L");
		testDencoder("m", "𓅓", "M");
		testDencoder("n", "𓈖", "N");
		testDencoder("o", "𓍯", "O");
		testDencoder("p", "𓊪", "P");
		testDencoder("q", "𓈎", "Q");
		testDencoder("r", "𓂋", "R");
		testDencoder("s", "𓋴", "S");
		testDencoder("t", "𓏏", "T");
		testDencoder("u", "𓏲", "U");
		testDencoder("v", "𓆑", "F");
		testDencoder("w", "𓅱", "W");
		testDencoder("x", "𓎡𓋴", "X");
		testDencoder("y", "𓇌", "Y");
		testDencoder("z", "𓊃", "Z");
		
		// Basic alphabet (Full-width)
		testDencoder("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "𓄿𓃀𓎡𓂧𓇋𓆑𓎼𓉔𓇋𓆓𓎡𓃭𓅓𓈖𓍯𓊪𓈎𓂋𓋴𓏏𓏲𓆑𓅱𓎡𓋴𓇌𓊃", "ABKDIFGHIJKLMNOPQRSTUFWXYZ");
		testDencoder("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "𓄿𓃀𓎡𓂧𓇋𓆑𓎼𓉔𓇋𓆓𓎡𓃭𓅓𓈖𓍯𓊪𓈎𓂋𓋴𓏏𓏲𓆑𓅱𓎡𓋴𓇌𓊃", "ABKDIFGHIJKLMNOPQRSTUFWXYZ");
		
		// Variants
		testDecoder("𓂝", "A");
		testDecoder("𓂽", "D");
		testDecoder("𓎽", "G");
		testDecoder("𓅼", "G");
		testDecoder("𓎛", "H");
		testDecoder("𓐝", "M");
		testDecoder("𓋔", "N");
		testDecoder("𓈙", "S");
		testDecoder("𓍿", "T");
		testDecoder("𓎡𓊃", "X");
		testDecoder("𓈎𓊃", "X");
		testDecoder("𓐍", "X");
		testDecoder("𓄡", "X");
		testDecoder("𓏭", "Y");
		
		testDecoder("𓎢", "K");
		testDecoder("𓈚", "S");
		testDecoder("𓈛", "S");
		testDecoder("𓈜", "S");
		
		// Incorrect symbols support
		testDecoder("𓂾", "B");
		testDecoder("𓃬", "L");
		testDecoder("𓏤", "P");
		testDecoder("𓏘", "Q");
		testDecoder("𓍢", "U");
		testDecoder("𓌟", "X");
		
		// Unmapped
		testDencoder("1", "1");
		testDencoder("-", "-");
		testDencoder(" ", " ");
		
		// X (Multi-symbols mapping)
		testDencoder("XX", "𓎡𓋴𓎡𓋴", "XX");
		testDencoder("XXA", "𓎡𓋴𓎡𓋴𓄿", "XXA");
		testDencoder("AXX", "𓄿𓎡𓋴𓎡𓋴", "AXX");
		testDencoder("AXXA", "𓄿𓎡𓋴𓎡𓋴𓄿", "AXXA");
		
		// Mixed
		testDencoder("Abc1Ｄｅｆ", "𓄿𓃀𓎡1𓂧𓇋𓆑", "ABK1DIF");
		testDencoder(" #Abc1Ｄｅｆ! ", " #𓄿𓃀𓎡1𓂧𓇋𓆑! ", " #ABK1DIF! ");
	}
	
	
	private void testDencoder(String value, String expectedEncodedValue) {
		testDencoder(value, expectedEncodedValue, null);
	}
	
	private void testDencoder(String value, String expectedEncodedValue, String expectedDecodedValue) {
		String encodedValue = StringHieroglyphsDencoder.encStrHieroglyphs(condition(value));
		assertEquals(expectedEncodedValue, encodedValue);
		String decodedValue = StringHieroglyphsDencoder.decStrHieroglyphs(condition(encodedValue));
		if (expectedDecodedValue == null) {
			assertEquals(value, decodedValue);
		} else {
			assertEquals(expectedDecodedValue, decodedValue);
		}
	}

	private void testDecoder(String value, String expectedDecodedValue) {
		String decodedValue = StringHieroglyphsDencoder.decStrHieroglyphs(condition(value));
		assertEquals(expectedDecodedValue, decodedValue);
	}
	
	private DencodeCondition condition(String value) {
		return new DencodeCondition(value, StandardCharsets.UTF_8, "\r\n", null, new HashMap<>());
	}
}
