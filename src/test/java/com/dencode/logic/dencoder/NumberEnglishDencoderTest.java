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

public class NumberEnglishDencoderTest {
	
	@Test
	public void test() {
		testDencoder("0", "Zero");
		testDencoder("1", "One");
		testDencoder("10", "Ten");
		testDencoder("101", "One Hundred One");
		testDencoder("23456", "Twenty-Three Thousand Four Hundred Fifty-Six");
		testDencoder("1234.5", "One Thousand Two Hundred Thirty-Four point Five");
		testDencoder("-0.012", "Negative Zero point Zero One Two");
		testDencoder("1\n20", "One\nTwenty");
		
		testDencoder("abc", null);
		testDencoder("", null);
		testDencoder("1\nabc", null);
	}
	
	@Test
	public void test_fraction() {
		testDencoder("1.0", "One and 0/10", Map.of("number.english.decimal-notation", "fraction"));
		testDencoder("1.012", "One and 12/1000", Map.of("number.english.decimal-notation", "fraction"));
		testDencoder("-1.012", "Negative One and 12/1000", Map.of("number.english.decimal-notation", "fraction"));
	}
	
	@Test
	public void test_system_cw() {
		testDencoder("1000000000000000000000000000000000000000000000000000000000000000000000000", "One Tresvigintillion", Map.of("number.english.system", "cw"));
	}
	
	@Test
	public void test_decoder() {
		testDecoder("Zero", "0");
		testDecoder("One", "1");
		testDecoder("Ten", "10");
		testDecoder("One Hundred One", "101");
		testDecoder("Twenty-Three Thousand Four Hundred Fifty-Six", "23456");
		testDecoder("One Thousand Two Hundred Thirty-Four point Five", "1234.5");
		testDecoder("One and 12/1000", "1.012");
		testDecoder("Negative Zero point Zero One Two", "-0.012");
		testDecoder("One\nTwenty", "1\n20");
		
		testDecoder("", null);
		testDecoder("xxx", null);
		testDecoder("One\nxxx", null);
	}
	
	private void testDencoder(String value, String expectedEncodedValue) {
		testDencoder(value, expectedEncodedValue, Map.of());
	}
	
	private void testDencoder(String value, String expectedEncodedValue, Map<String, String> options) {
		String encodedValue = NumberEnglishDencoder.encNumEnglish(condition(value, options));
		assertEquals(expectedEncodedValue, encodedValue);
		
		if (expectedEncodedValue == null) {
			return;
		}
		
		String decodedValue = NumberEnglishDencoder.decNumEnglish(condition(encodedValue));
		assertEquals(value, decodedValue);
	}
	
	private void testDecoder(String value, String expectedDecodedValue) {
		String decodedValue = NumberEnglishDencoder.decNumEnglish(condition(value));
		assertEquals(expectedDecodedValue, decodedValue);
	}
	
	private DencodeCondition condition(String value) {
		return condition(value, Map.of());
	}
	
	private DencodeCondition condition(String value, Map<String, String> options) {
		return new DencodeCondition(value, StandardCharsets.UTF_8, "\r\n", null, new HashMap<>(options));
	}
}
