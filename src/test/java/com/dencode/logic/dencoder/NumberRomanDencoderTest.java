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

public class NumberRomanDencoderTest {
	
	@Test
	public void test() {
		testDencoder("1", "I");
		testDencoder("2", "II");
		testDencoder("3", "III");
		testDencoder("4", "IV");
		testDencoder("5", "V");
		testDencoder("6", "VI");
		testDencoder("7", "VII");
		testDencoder("8", "VIII");
		testDencoder("9", "IX");
		testDencoder("10", "X");
		testDencoder("40", "XL");
		testDencoder("41", "XLI");
		testDencoder("44", "XLIV");
		testDencoder("45", "XLV");
		testDencoder("46", "XLVI");
		testDencoder("49", "XLIX");
		testDencoder("50", "L");
		testDencoder("60", "LX");
		testDencoder("90", "XC");
		testDencoder("100", "C");
		testDencoder("400", "CD");
		testDencoder("401", "CDI");
		testDencoder("440", "CDXL");
		testDencoder("500", "D");
		testDencoder("600", "DC");
		testDencoder("900", "CM");
		testDencoder("999", "CMXCIX");
		testDencoder("1000", "M");
		testDencoder("1999", "MCMXCIX");
		testDencoder("3000", "MMM");
		testDencoder("3009", "MMMIX");
		testDencoder("3090", "MMMXC");
		testDencoder("3333", "MMMCCCXXXIII");
		testDencoder("3900", "MMMCM");
		testDencoder("3999", "MMMCMXCIX");
		
		testDencoder("0", null);
		testDencoder("-1", null);
		testDencoder("1.5", null);
		testDencoder("4000", null);
		testDencoder("", null);
	}
	
	@Test
	public void test_decoder() {
		testDecoder("I", "1");
		testDecoder("II", "2");
		testDecoder("III", "3");
		testDecoder("IV", "4");
		testDecoder("V", "5");
		testDecoder("VI", "6");
		testDecoder("VII", "7");
		testDecoder("VIII", "8");
		testDecoder("IX", "9");
		testDecoder("X", "10");
		testDecoder("XL", "40");
		testDecoder("XLI", "41");
		testDecoder("XLIV", "44");
		testDecoder("XLV", "45");
		testDecoder("XLVI", "46");
		testDecoder("XLIX", "49");
		testDecoder("L", "50");
		testDecoder("LX", "60");
		testDecoder("XC", "90");
		testDecoder("C", "100");
		testDecoder("CD", "400");
		testDecoder("CDI", "401");
		testDecoder("CDXL", "440");
		testDecoder("D", "500");
		testDecoder("DC", "600");
		testDecoder("CM", "900");
		testDecoder("CMXCIX", "999");
		testDecoder("M", "1000");
		testDecoder("MCMXCIX", "1999");
		testDecoder("MMM", "3000");
		testDecoder("MMMIX", "3009");
		testDecoder("MMMXC", "3090");
		testDecoder("MMMCCCXXXIII", "3333");
		testDecoder("MMMCM", "3900");
		testDecoder("MMMCMXCIX", "3999");
		
		testDecoder("xiv", "14");
		testDecoder(" xii", "12");
		testDecoder("XII", "12");
		testDecoder("mcmxcix", "1999");
		testDecoder("Ⅰ", "1");
		testDecoder("Ⅱ", "2");
		testDecoder("Ⅳ", "4");
		testDecoder("Ⅸ", "9");
		testDecoder("Ⅹ", "10");
		testDecoder("Ⅺ", "11");
		testDecoder("Ⅻ", "12");
		testDecoder("Ⅼ", "50");
		testDecoder("Ⅽ", "100");
		testDecoder("Ⅾ", "500");
		testDecoder("Ⅿ", "1000");
		testDecoder("ⅿⅽⅿⅹⅽⅰⅹ", "1999");
		testDecoder("ⅩIV", "14");
		testDecoder("MⅭⅯXCⅠⅩ", "1999");
		testDecoder("mⅭⅯxcⅠⅩ", "1999");
		
		testDecoder("", null);
		testDecoder("IIII", null);
		testDecoder("VIIII", null);
		testDecoder("XXXX", null);
		testDecoder("LXXXX", null);
		testDecoder("CCCC", null);
		testDecoder("DCCCC", null);
		testDecoder("VV", null);
		testDecoder("IIV", null);
		testDecoder("IIX", null);
		testDecoder("IC", null);
		testDecoder("IL", null);
		testDecoder("VX", null);
		testDecoder("XM", null);
		testDecoder("MMMM", null);
		testDecoder("ABC", null);
		testDecoder("ⅫⅢ", null);
		testDecoder("ⅫI", null);
		testDecoder("MⅫ", null);
		testDecoder("ⅩⅫ", null);
		testDecoder("ⅩⅣ", null);
		testDecoder("MⅭⅯXCⅨ", null);
	}
	
	private void testDencoder(String value, String expectedEncodedValue) {
		String encodedValue = NumberRomanDencoder.encNumRoman(condition(value));
		assertEquals(expectedEncodedValue, encodedValue);
		
		if (expectedEncodedValue == null) {
			return;
		}
		
		String decodedValue = NumberRomanDencoder.decNumRoman(condition(encodedValue));
		assertEquals(value, decodedValue);
	}
	
	private void testDecoder(String value, String expectedDecodedValue) {
		String decodedValue = NumberRomanDencoder.decNumRoman(condition(value));
		assertEquals(expectedDecodedValue, decodedValue);
	}
	
	private DencodeCondition condition(String value) {
		return new DencodeCondition(value, StandardCharsets.UTF_8, "\r\n", null, new HashMap<>() {
			private static final long serialVersionUID = 1L;
			{
			}
		});
	}
}
