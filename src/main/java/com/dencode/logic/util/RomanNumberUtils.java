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

import java.math.BigDecimal;

public class RomanNumberUtils {
	
	private static record RomanSymbol(int value, String... symbols) {
		private String canonicalSymbol() {
			return symbols[0];
		}
	}
	
	private static final int MIN_ROMAN_NUMBER = 1;
	private static final int MAX_ROMAN_NUMBER = 3999;
	
	private static final int MAX_ROMAN_INPUT_LENGTH = 64; // Allows whitespace around the longest form.
	private static final int MAX_ROMAN_LENGTH = 15; // 3888 = MMMDCCCLXXXVIII.
	
	private static final RomanSymbol[] ROMAN_SYMBOLS = {
			new RomanSymbol(1000, "M", "m", "Ⅿ", "ⅿ"),
			new RomanSymbol(900, "CM", "cm", "ⅭⅯ", "ⅽⅿ"),
			new RomanSymbol(500, "D", "d", "Ⅾ", "ⅾ"),
			new RomanSymbol(400, "CD", "cd", "ⅭⅮ", "ⅽⅾ"),
			new RomanSymbol(100, "C", "c", "Ⅽ", "ⅽ"),
			new RomanSymbol(90, "XC", "xc", "ⅩⅭ", "ⅹⅽ"),
			new RomanSymbol(50, "L", "l", "Ⅼ", "ⅼ"),
			new RomanSymbol(40, "XL", "xl", "ⅩⅬ", "ⅹⅼ"),
			new RomanSymbol(10, "X", "x", "Ⅹ", "ⅹ"),
			new RomanSymbol(9, "IX", "ix", "ⅠⅩ", "ⅰⅹ"),
			new RomanSymbol(5, "V", "v", "Ⅴ", "ⅴ"),
			new RomanSymbol(4, "IV", "iv", "ⅠⅤ", "ⅰⅴ"),
			new RomanSymbol(1, "I", "i", "Ⅰ", "ⅰ")
			};
	
	private static final RomanSymbol[] ROMAN_COMPOSITE_SYMBOLS = {
			new RomanSymbol(12, "Ⅻ", "ⅻ"),
			new RomanSymbol(11, "Ⅺ", "ⅺ"),
			new RomanSymbol(9, "Ⅸ", "ⅸ"),
			new RomanSymbol(8, "Ⅷ", "ⅷ"),
			new RomanSymbol(7, "Ⅶ", "ⅶ"),
			new RomanSymbol(6, "Ⅵ", "ⅵ"),
			new RomanSymbol(4, "Ⅳ", "ⅳ"),
			new RomanSymbol(3, "Ⅲ", "ⅲ"),
			new RomanSymbol(2, "Ⅱ", "ⅱ")
			};
	
	private RomanNumberUtils() {
		// NOP
	}
	
	public static String toRomanNum(BigDecimal num) {
		if (num == null) {
			return null;
		}
		
		int val;
		try {
			val = num.intValueExact();
		} catch (ArithmeticException e) {
			throw new IllegalArgumentException("Roman numerals support only integers from 1 to 3999.", e);
		}
		
		return toRomanNum(val);
	}
	
	private static String toRomanNum(int val) {
		if (val < MIN_ROMAN_NUMBER || MAX_ROMAN_NUMBER < val) {
			throw new IllegalArgumentException("Roman numerals support only 1 to 3999.");
		}
		
		StringBuilder sb = new StringBuilder(MAX_ROMAN_LENGTH);
		
		for (RomanSymbol romanSymbol : ROMAN_SYMBOLS) {
			while (romanSymbol.value() <= val) {
				sb.append(romanSymbol.canonicalSymbol());
				val -= romanSymbol.value();
			}
		}
		
		return sb.toString();
	}
	
	public static BigDecimal parseRomanNum(String roman) {
		if (roman == null) {
			return null;
		}
		if (MAX_ROMAN_INPUT_LENGTH < roman.length()) {
			throw new IllegalArgumentException("Roman numeral is too long.");
		}
		
		int startIdx = 0;
		int endIdx = roman.length();
		while (startIdx < endIdx && Character.isWhitespace(roman.charAt(startIdx))) {
			startIdx++;
		}
		while (startIdx < endIdx && Character.isWhitespace(roman.charAt(endIdx - 1))) {
			endIdx--;
		}
		
		if (startIdx == endIdx) {
			throw new IllegalArgumentException("Empty roman numeral.");
		}
		if (MAX_ROMAN_LENGTH < endIdx - startIdx) {
			throw new IllegalArgumentException("Roman numeral is too long.");
		}
		
		if (endIdx - startIdx == 1) {
			// Find a single composite symbol
			RomanSymbol compositeSymbol = findSymbol(roman, startIdx, ROMAN_COMPOSITE_SYMBOLS);
			if (compositeSymbol != null) {
				return BigDecimal.valueOf(compositeSymbol.value());
			}
		}
		
		int val = 0;
		int idx = startIdx;
		StringBuilder canonicalRoman = new StringBuilder(MAX_ROMAN_LENGTH);
		while (idx < endIdx) {
			RomanSymbol symbol = findSymbol(roman, idx, ROMAN_SYMBOLS);
			
			if (symbol == null) {
				throw new IllegalArgumentException("Unsupported roman numeral: " + roman);
			}
			
			val += symbol.value();
			idx += symbol.canonicalSymbol().length();
			canonicalRoman.append(symbol.canonicalSymbol());
		}
		
		if (!canonicalRoman.toString().equals(toRomanNum(val))) {
			throw new IllegalArgumentException("Non-standard roman numeral: " + roman);
		}
		
		return BigDecimal.valueOf(val);
	}
	
	private static RomanSymbol findSymbol(String roman, int idx, RomanSymbol[] symbols) {
		for (RomanSymbol symbol : symbols) {
			for (String s : symbol.symbols()) {
				if (roman.startsWith(s, idx)) {
					return symbol;
				}
			}
		}
		
		return null;
	}
}
