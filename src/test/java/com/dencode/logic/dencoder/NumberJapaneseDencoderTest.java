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
import java.util.Map;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class NumberJapaneseDencoderTest {
	
	@Test
	public void test() {
		testDencoder("0", "〇");
		testDencoder("1", "一");
		testDencoder("10", "十");
		testDencoder("101", "百一");
		testDencoder("23456", "二万三千四百五十六");
		testDencoder("1234.5", "千二百三十四・五");
		testDencoder("-0.012", "−〇・〇一二");
		testDencoder("1\n20", "一\n二十");
		
		testDencoder("abc", null);
		testDencoder("", null);
		testDencoder("1\nabc", null);
	}
	
	@Test
	public void test_daiji() {
		testDencoder("0", "零", Map.of("number.japanese.variant", "daiji"));
		testDencoder("1", "壱", Map.of("number.japanese.variant", "daiji"));
		testDencoder("10", "壱拾", Map.of("number.japanese.variant", "daiji"));
		testDencoder("101", "壱陌壱", Map.of("number.japanese.variant", "daiji"));
		testDencoder("23456", "弐萬参阡肆陌伍拾陸", Map.of("number.japanese.variant", "daiji"));
		testDencoder("1234.5", "壱阡弐陌参拾肆・伍", Map.of("number.japanese.variant", "daiji"));
		testDencoder("-0.012", "−零・零壱弐", Map.of("number.japanese.variant", "daiji"));
		testDencoder("1\n20", "壱\n弐拾", Map.of("number.japanese.variant", "daiji"));
	}
	
	@Test
	public void test_decoder() {
		testDecoder("〇", "0");
		testDecoder("一", "1");
		testDecoder("十", "10");
		testDecoder("百一", "101");
		testDecoder("二万三千四百五十六", "23456");
		testDecoder("千二百三十四・五", "1234.5");
		testDecoder("壱阡弐陌参拾肆・伍", "1234.5");
		testDecoder("−〇・〇一二", "-0.012");
		testDecoder("一\n二十", "1\n20");
		
		testDecoder("", null);
		testDecoder("あ", null);
		testDecoder("一\nあ", null);
	}
	
	private void testDencoder(String value, String expectedEncodedValue) {
		testDencoder(value, expectedEncodedValue, Map.of());
	}
	
	private void testDencoder(String value, String expectedEncodedValue, Map<String, String> options) {
		String encodedValue = NumberJapaneseDencoder.encNumJapanese(condition(value, options));
		assertEquals(expectedEncodedValue, encodedValue);
		
		if (expectedEncodedValue == null) {
			return;
		}
		
		String decodedValue = NumberJapaneseDencoder.decNumJapanese(condition(encodedValue));
		assertEquals(value, decodedValue);
	}
	
	private void testDecoder(String value, String expectedDecodedValue) {
		String decodedValue = NumberJapaneseDencoder.decNumJapanese(condition(value));
		assertEquals(expectedDecodedValue, decodedValue);
	}
	
	private DencodeCondition condition(String value) {
		return condition(value, Map.of());
	}
	
	private DencodeCondition condition(String value, Map<String, String> options) {
		return new DencodeCondition(value, StandardCharsets.UTF_8, "\r\n", null, new HashMap<>(options));
	}
}
