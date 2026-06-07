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

public class NumberRomanDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			NumberRomanDencoder::encNumRoman,
			NumberRomanDencoder::decNumRoman);

	@Test
	public void test() {
		tester.test("1", "I");
		tester.test("2", "II");
		tester.test("3", "III");
		tester.test("4", "IV");
		tester.test("5", "V");
		tester.test("6", "VI");
		tester.test("7", "VII");
		tester.test("8", "VIII");
		tester.test("9", "IX");
		tester.test("10", "X");
		tester.test("40", "XL");
		tester.test("41", "XLI");
		tester.test("44", "XLIV");
		tester.test("45", "XLV");
		tester.test("46", "XLVI");
		tester.test("49", "XLIX");
		tester.test("50", "L");
		tester.test("60", "LX");
		tester.test("90", "XC");
		tester.test("100", "C");
		tester.test("400", "CD");
		tester.test("401", "CDI");
		tester.test("440", "CDXL");
		tester.test("500", "D");
		tester.test("600", "DC");
		tester.test("900", "CM");
		tester.test("999", "CMXCIX");
		tester.test("1000", "M");
		tester.test("1999", "MCMXCIX");
		tester.test("3000", "MMM");
		tester.test("3009", "MMMIX");
		tester.test("3090", "MMMXC");
		tester.test("3333", "MMMCCCXXXIII");
		tester.test("3900", "MMMCM");
		tester.test("3999", "MMMCMXCIX");

		tester.test("0", null);
		tester.test("-1", null);
		tester.test("1.5", null);
		tester.test("4000", null);
		tester.test("", null);
	}

	@Test
	public void test_decoder() {
		tester.testDecoder("I", "1");
		tester.testDecoder("II", "2");
		tester.testDecoder("III", "3");
		tester.testDecoder("IV", "4");
		tester.testDecoder("V", "5");
		tester.testDecoder("VI", "6");
		tester.testDecoder("VII", "7");
		tester.testDecoder("VIII", "8");
		tester.testDecoder("IX", "9");
		tester.testDecoder("X", "10");
		tester.testDecoder("XL", "40");
		tester.testDecoder("XLI", "41");
		tester.testDecoder("XLIV", "44");
		tester.testDecoder("XLV", "45");
		tester.testDecoder("XLVI", "46");
		tester.testDecoder("XLIX", "49");
		tester.testDecoder("L", "50");
		tester.testDecoder("LX", "60");
		tester.testDecoder("XC", "90");
		tester.testDecoder("C", "100");
		tester.testDecoder("CD", "400");
		tester.testDecoder("CDI", "401");
		tester.testDecoder("CDXL", "440");
		tester.testDecoder("D", "500");
		tester.testDecoder("DC", "600");
		tester.testDecoder("CM", "900");
		tester.testDecoder("CMXCIX", "999");
		tester.testDecoder("M", "1000");
		tester.testDecoder("MCMXCIX", "1999");
		tester.testDecoder("MMM", "3000");
		tester.testDecoder("MMMIX", "3009");
		tester.testDecoder("MMMXC", "3090");
		tester.testDecoder("MMMCCCXXXIII", "3333");
		tester.testDecoder("MMMCM", "3900");
		tester.testDecoder("MMMCMXCIX", "3999");

		tester.testDecoder("xiv", "14");
		tester.testDecoder(" xii", "12");
		tester.testDecoder("XII", "12");
		tester.testDecoder("mcmxcix", "1999");
		tester.testDecoder("Ⅰ", "1");
		tester.testDecoder("Ⅱ", "2");
		tester.testDecoder("Ⅳ", "4");
		tester.testDecoder("Ⅸ", "9");
		tester.testDecoder("Ⅹ", "10");
		tester.testDecoder("Ⅺ", "11");
		tester.testDecoder("Ⅻ", "12");
		tester.testDecoder("Ⅼ", "50");
		tester.testDecoder("Ⅽ", "100");
		tester.testDecoder("Ⅾ", "500");
		tester.testDecoder("Ⅿ", "1000");
		tester.testDecoder("ⅿⅽⅿⅹⅽⅰⅹ", "1999");
		tester.testDecoder("ⅩIV", "14");
		tester.testDecoder("MⅭⅯXCⅠⅩ", "1999");
		tester.testDecoder("mⅭⅯxcⅠⅩ", "1999");

		tester.testDecoder("", null);
		tester.testDecoder("IIII", null);
		tester.testDecoder("VIIII", null);
		tester.testDecoder("XXXX", null);
		tester.testDecoder("LXXXX", null);
		tester.testDecoder("CCCC", null);
		tester.testDecoder("DCCCC", null);
		tester.testDecoder("VV", null);
		tester.testDecoder("IIV", null);
		tester.testDecoder("IIX", null);
		tester.testDecoder("IC", null);
		tester.testDecoder("IL", null);
		tester.testDecoder("VX", null);
		tester.testDecoder("XM", null);
		tester.testDecoder("MMMM", null);
		tester.testDecoder("ABC", null);
		tester.testDecoder("ⅫⅢ", null);
		tester.testDecoder("ⅫI", null);
		tester.testDecoder("MⅫ", null);
		tester.testDecoder("ⅩⅫ", null);
		tester.testDecoder("ⅩⅣ", null);
		tester.testDecoder("MⅭⅯXCⅨ", null);
	}
}
