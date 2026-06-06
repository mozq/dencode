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
package com.dencode.logic.util;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import java.math.BigDecimal;

import org.junit.jupiter.api.Test;

public class RomanNumberUtilsTest {
	
	@Test
	public void test_toRomanNum() {
		assertEquals(null, RomanNumberUtils.toRomanNum(null));
		
		assertEquals("I", RomanNumberUtils.toRomanNum(new BigDecimal("1")));
		assertEquals("II", RomanNumberUtils.toRomanNum(new BigDecimal("2")));
		assertEquals("III", RomanNumberUtils.toRomanNum(new BigDecimal("3")));
		assertEquals("IV", RomanNumberUtils.toRomanNum(new BigDecimal("4")));
		assertEquals("V", RomanNumberUtils.toRomanNum(new BigDecimal("5")));
		assertEquals("VI", RomanNumberUtils.toRomanNum(new BigDecimal("6")));
		assertEquals("VII", RomanNumberUtils.toRomanNum(new BigDecimal("7")));
		assertEquals("VIII", RomanNumberUtils.toRomanNum(new BigDecimal("8")));
		assertEquals("IX", RomanNumberUtils.toRomanNum(new BigDecimal("9")));
		assertEquals("X", RomanNumberUtils.toRomanNum(new BigDecimal("10")));
		assertEquals("XL", RomanNumberUtils.toRomanNum(new BigDecimal("40")));
		assertEquals("XLI", RomanNumberUtils.toRomanNum(new BigDecimal("41")));
		assertEquals("XLIV", RomanNumberUtils.toRomanNum(new BigDecimal("44")));
		assertEquals("XLV", RomanNumberUtils.toRomanNum(new BigDecimal("45")));
		assertEquals("XLVI", RomanNumberUtils.toRomanNum(new BigDecimal("46")));
		assertEquals("XLIX", RomanNumberUtils.toRomanNum(new BigDecimal("49")));
		assertEquals("L", RomanNumberUtils.toRomanNum(new BigDecimal("50")));
		assertEquals("LX", RomanNumberUtils.toRomanNum(new BigDecimal("60")));
		assertEquals("XC", RomanNumberUtils.toRomanNum(new BigDecimal("90")));
		assertEquals("C", RomanNumberUtils.toRomanNum(new BigDecimal("100")));
		assertEquals("CD", RomanNumberUtils.toRomanNum(new BigDecimal("400")));
		assertEquals("CDI", RomanNumberUtils.toRomanNum(new BigDecimal("401")));
		assertEquals("CDXL", RomanNumberUtils.toRomanNum(new BigDecimal("440")));
		assertEquals("D", RomanNumberUtils.toRomanNum(new BigDecimal("500")));
		assertEquals("DC", RomanNumberUtils.toRomanNum(new BigDecimal("600")));
		assertEquals("CM", RomanNumberUtils.toRomanNum(new BigDecimal("900")));
		assertEquals("CMXCIX", RomanNumberUtils.toRomanNum(new BigDecimal("999")));
		assertEquals("M", RomanNumberUtils.toRomanNum(new BigDecimal("1000")));
		assertEquals("MCMXCIX", RomanNumberUtils.toRomanNum(new BigDecimal("1999")));
		assertEquals("MMM", RomanNumberUtils.toRomanNum(new BigDecimal("3000")));
		assertEquals("MMMIX", RomanNumberUtils.toRomanNum(new BigDecimal("3009")));
		assertEquals("MMMXC", RomanNumberUtils.toRomanNum(new BigDecimal("3090")));
		assertEquals("MMMCCCXXXIII", RomanNumberUtils.toRomanNum(new BigDecimal("3333")));
		assertEquals("MMMCM", RomanNumberUtils.toRomanNum(new BigDecimal("3900")));
		assertEquals("MMMCMXCIX", RomanNumberUtils.toRomanNum(new BigDecimal("3999")));
		
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.toRomanNum(new BigDecimal("0")));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.toRomanNum(new BigDecimal("-1")));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.toRomanNum(new BigDecimal("1.5")));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.toRomanNum(new BigDecimal("4000")));
	}
	
	@Test
	public void test_parseRomanNum() {
		assertEquals(null, RomanNumberUtils.parseRomanNum(null));
		
		assertEquals(new BigDecimal("1"), RomanNumberUtils.parseRomanNum("I"));
		assertEquals(new BigDecimal("2"), RomanNumberUtils.parseRomanNum("II"));
		assertEquals(new BigDecimal("3"), RomanNumberUtils.parseRomanNum("III"));
		assertEquals(new BigDecimal("4"), RomanNumberUtils.parseRomanNum("IV"));
		assertEquals(new BigDecimal("5"), RomanNumberUtils.parseRomanNum("V"));
		assertEquals(new BigDecimal("6"), RomanNumberUtils.parseRomanNum("VI"));
		assertEquals(new BigDecimal("7"), RomanNumberUtils.parseRomanNum("VII"));
		assertEquals(new BigDecimal("8"), RomanNumberUtils.parseRomanNum("VIII"));
		assertEquals(new BigDecimal("9"), RomanNumberUtils.parseRomanNum("IX"));
		assertEquals(new BigDecimal("10"), RomanNumberUtils.parseRomanNum("X"));
		assertEquals(new BigDecimal("40"), RomanNumberUtils.parseRomanNum("XL"));
		assertEquals(new BigDecimal("41"), RomanNumberUtils.parseRomanNum("XLI"));
		assertEquals(new BigDecimal("44"), RomanNumberUtils.parseRomanNum("XLIV"));
		assertEquals(new BigDecimal("45"), RomanNumberUtils.parseRomanNum("XLV"));
		assertEquals(new BigDecimal("46"), RomanNumberUtils.parseRomanNum("XLVI"));
		assertEquals(new BigDecimal("49"), RomanNumberUtils.parseRomanNum("XLIX"));
		assertEquals(new BigDecimal("50"), RomanNumberUtils.parseRomanNum("L"));
		assertEquals(new BigDecimal("60"), RomanNumberUtils.parseRomanNum("LX"));
		assertEquals(new BigDecimal("90"), RomanNumberUtils.parseRomanNum("XC"));
		assertEquals(new BigDecimal("100"), RomanNumberUtils.parseRomanNum("C"));
		assertEquals(new BigDecimal("400"), RomanNumberUtils.parseRomanNum("CD"));
		assertEquals(new BigDecimal("401"), RomanNumberUtils.parseRomanNum("CDI"));
		assertEquals(new BigDecimal("440"), RomanNumberUtils.parseRomanNum("CDXL"));
		assertEquals(new BigDecimal("500"), RomanNumberUtils.parseRomanNum("D"));
		assertEquals(new BigDecimal("600"), RomanNumberUtils.parseRomanNum("DC"));
		assertEquals(new BigDecimal("900"), RomanNumberUtils.parseRomanNum("CM"));
		assertEquals(new BigDecimal("999"), RomanNumberUtils.parseRomanNum("CMXCIX"));
		assertEquals(new BigDecimal("1000"), RomanNumberUtils.parseRomanNum("M"));
		assertEquals(new BigDecimal("1999"), RomanNumberUtils.parseRomanNum("MCMXCIX"));
		assertEquals(new BigDecimal("3000"), RomanNumberUtils.parseRomanNum("MMM"));
		assertEquals(new BigDecimal("3009"), RomanNumberUtils.parseRomanNum("MMMIX"));
		assertEquals(new BigDecimal("3090"), RomanNumberUtils.parseRomanNum("MMMXC"));
		assertEquals(new BigDecimal("3333"), RomanNumberUtils.parseRomanNum("MMMCCCXXXIII"));
		assertEquals(new BigDecimal("3900"), RomanNumberUtils.parseRomanNum("MMMCM"));
		assertEquals(new BigDecimal("3999"), RomanNumberUtils.parseRomanNum("MMMCMXCIX"));
		
		assertEquals(new BigDecimal("14"), RomanNumberUtils.parseRomanNum("xiv"));
		assertEquals(new BigDecimal("12"), RomanNumberUtils.parseRomanNum(" xii"));
		assertEquals(new BigDecimal("12"), RomanNumberUtils.parseRomanNum("XII"));
		assertEquals(new BigDecimal("1999"), RomanNumberUtils.parseRomanNum("mcmxcix"));
		assertEquals(new BigDecimal("1"), RomanNumberUtils.parseRomanNum("Ⅰ"));
		assertEquals(new BigDecimal("2"), RomanNumberUtils.parseRomanNum("Ⅱ"));
		assertEquals(new BigDecimal("4"), RomanNumberUtils.parseRomanNum("Ⅳ"));
		assertEquals(new BigDecimal("9"), RomanNumberUtils.parseRomanNum("Ⅸ"));
		assertEquals(new BigDecimal("10"), RomanNumberUtils.parseRomanNum("Ⅹ"));
		assertEquals(new BigDecimal("11"), RomanNumberUtils.parseRomanNum("Ⅺ"));
		assertEquals(new BigDecimal("12"), RomanNumberUtils.parseRomanNum("Ⅻ"));
		assertEquals(new BigDecimal("50"), RomanNumberUtils.parseRomanNum("Ⅼ"));
		assertEquals(new BigDecimal("100"), RomanNumberUtils.parseRomanNum("Ⅽ"));
		assertEquals(new BigDecimal("500"), RomanNumberUtils.parseRomanNum("Ⅾ"));
		assertEquals(new BigDecimal("1000"), RomanNumberUtils.parseRomanNum("Ⅿ"));
		assertEquals(new BigDecimal("1999"), RomanNumberUtils.parseRomanNum("ⅿⅽⅿⅹⅽⅰⅹ"));
		assertEquals(new BigDecimal("14"), RomanNumberUtils.parseRomanNum("ⅩIV"));
		assertEquals(new BigDecimal("1999"), RomanNumberUtils.parseRomanNum("MⅭⅯXCⅠⅩ"));
		assertEquals(new BigDecimal("1999"), RomanNumberUtils.parseRomanNum("mⅭⅯxcⅠⅩ"));
		
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum(""));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("IIII"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("VIIII"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("XXXX"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("LXXXX"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("CCCC"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("DCCCC"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("VV"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("IIV"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("IIX"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("IC"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("IL"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("VX"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("XM"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("MMMM"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("MMMMMMMMMMMMMMMM"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("                                                                 I"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("ABC"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("ⅫⅢ"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("ⅫI"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("MⅫ"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("ⅩⅫ"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("ⅩⅣ"));
		assertThrows(IllegalArgumentException.class, () -> RomanNumberUtils.parseRomanNum("MⅭⅯXCⅨ"));
	}
}
