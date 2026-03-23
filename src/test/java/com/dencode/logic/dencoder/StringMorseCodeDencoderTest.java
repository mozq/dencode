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

public class StringMorseCodeDencoderTest {
	
	@Test
	public void testInternational_Code() {
		String variant = "international";
		String notation = "code";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("A", ".-", "A", variant, notation);
		testDencoder("a", ".-", "A", variant, notation);
		
		testDencoder("ABCDEFGHIJKLMNOPQRSTUVWXYZ", ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", variant, notation);
		testDencoder("abcdefghijklmnopqrstuvwxyz", ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", variant, notation);
		
		testDencoder("1234567890", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "1234567890", variant, notation);
		
		testDencoder(".,:?'-/()\"=+@", ".-.-.- --..-- ---... ..--.. .----. -....- -..-. -.--. -.--.- .-..-. -...- .-.-. .--.-.", ".,:?'-/()\"=+@", variant, notation);
		testDencoder("×", "-..-", "X", variant, notation);
		
		
		testDencoder(" ", "/", " ", variant, notation);
		testDencoder("A Z", ".- / --..", "A Z", variant, notation);
		testDencoder("A  Z", ".- / / --..", "A  Z", variant, notation);
		testDencoder(" Z", "/ --..", " Z", variant, notation);
		testDencoder("  Z", "/ / --..", "  Z", variant, notation);
		testDencoder("A ", ".- /", "A ", variant, notation);
		testDencoder("A  ", ".- / /", "A  ", variant, notation);
		
		// New line
		testDencoder("A\r\nZ", ".-\r\n--..", "A\r\nZ", variant, notation);
		testDencoder("\r\nZ", "\r\n--..", "\r\nZ", variant, notation);
		testDencoder("A\r\n", ".-\r\n", "A\r\n", variant, notation);
		
		// Undefined code
		testDencoder(null, "......... / .........\r\n.........", "......... .........\r\n.........", variant, notation);
		testDencoder(null, "\r\n.........\r\n", "\r\n.........\r\n", variant, notation);
		testDencoder(null, " ......... \r\n ", ".........\r\n", variant, notation);
		
		// Unsupported letter
		testDencoder("*** ***\r\n***", "* * * / * * *\r\n* * *", "*** ***\r\n***", variant, notation);
		
		// Alternative code symbols
		testDencoder(null, "・－／", "A ", variant, notation);
	}
	
	@Test
	public void testInternational_CodeFullwidth() {
		String variant = "international";
		String notation = "code-fullwidth";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("A", "・－", "A", variant, notation);
		testDencoder("a", "・－", "A", variant, notation);
		
		testDencoder("ABC", "・－　－・・・　－・－・", "ABC", variant, notation);
		
		testDencoder("1234567890", "・－－－－　・・－－－　・・・－－　・・・・－　・・・・・　－・・・・　－－・・・　－－－・・　－－－－・　－－－－－", "1234567890", variant, notation);
		
		// Word space
		testDencoder(" ", "／", " ", variant, notation);
		testDencoder("A Z", "・－　／　－－・・", "A Z", variant, notation);
		testDencoder("A  Z", "・－　／　／　－－・・", "A  Z", variant, notation);
		
		// New line
		testDencoder("A\r\nZ", "・－\r\n－－・・", "A\r\nZ", variant, notation);
		
		// Unsupported letter
		testDencoder("*** ***\r\n***", "*　*　*　／　*　*　*\r\n*　*　*", "*** ***\r\n***", variant, notation);
	}
	
	@Test
	public void testInternational_Signals() {
		String variant = "international";
		String notation = "signals";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("A", "▄ ▄▄▄", "A", variant, notation);
		testDencoder("a", "▄ ▄▄▄", "A", variant, notation);
		
		testDencoder("ABC", "▄ ▄▄▄   ▄▄▄ ▄ ▄ ▄   ▄▄▄ ▄ ▄▄▄ ▄", "ABC", variant, notation);
		
		testDencoder("1", "▄ ▄▄▄ ▄▄▄ ▄▄▄ ▄▄▄", "1", variant, notation);
		
		// Word space
		testDencoder(" ", "       ", " ", variant, notation);
		testDencoder("A Z", "▄ ▄▄▄       ▄▄▄ ▄▄▄ ▄ ▄", "A Z", variant, notation);
		
		// New line
		testDencoder("A\r\nZ", "▄ ▄▄▄\r\n▄▄▄ ▄▄▄ ▄ ▄", "A\r\nZ", variant, notation);
		
		// Unsupported letter
		testDencoder("*", "*", "*", variant, notation);
	}
	
	@Test
	public void testInternational_Signals01() {
		String variant = "international";
		String notation = "signals-01";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("A", "10111", "A", variant, notation);
		testDencoder("a", "10111", "A", variant, notation);
		
		testDencoder("ABC", "1011100011101010100011101011101", "ABC", variant, notation);
		
		testDencoder("1", "10111011101110111", "1", variant, notation);
		
		// Word space
		testDencoder(" ", "0000000", " ", variant, notation);
		testDencoder("A Z", "10111000000011101110101", "A Z", variant, notation);
		
		// New line
		testDencoder("A\r\nZ", "10111\r\n11101110101", "A\r\nZ", variant, notation);
		
		// Unsupported letter
		testDencoder("*", "*", "*", variant, notation);
	}
	
	@Test
	public void testJapanese_Code() {
		String variant = "japanese";
		String notation = "code";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("イ", ".-", "イ", variant, notation);
		testDencoder("ィ", ".-", "イ", variant, notation);

		testDencoder("イロハニホヘトチリヌルヲワカヨタレソツネナラムウヰノオクヤマケフコエテアサキユメミシヱヒモセスン", ".- .-.- -... -.-. -.. . ..-.. ..-. --. .... -.--. .--- -.- .-.. -- -. --- ---. .--. --.- .-. ... - ..- .-..- ..-- .-... ...- .-- -..- -.-- --.. ---- -.--- .-.-- --.-- -.-.- -.-.. -..-- -...- ..-.- --.-. .--.. --..- -..-. .---. ---.- .-.-.", "イロハニホヘトチリヌルヲワカヨタレソツネナラムウヰノオクヤマケフコエテアサキユメミシヱヒモセスン", variant, notation);
		testDencoder("いろはにほへとちりぬるをわかよたれそつねならむうゐのおくやまけふこえてあさきゆめみしゑひもせすん", ".- .-.- -... -.-. -.. . ..-.. ..-. --. .... -.--. .--- -.- .-.. -- -. --- ---. .--. --.- .-. ... - ..- .-..- ..-- .-... ...- .-- -..- -.-- --.. ---- -.--- .-.-- --.-- -.-.- -.-.. -..-- -...- ..-.- --.-. .--.. --..- -..-. .---. ---.- .-.-.", "イロハニホヘトチリヌルヲワカヨタレソツネナラムウヰノオクヤマケフコエテアサキユメミシヱヒモセスン", variant, notation);
		
		testDencoder("ぁぃぅぇぉっゃゅょ", "--.-- .- ..- -.--- .-... .--. .-- -..-- --", "アイウエオツヤユヨ", variant, notation);
		testDencoder("ァィゥェォッャュョ", "--.-- .- ..- -.--- .-... .--. .-- -..-- --", "アイウエオツヤユヨ", variant, notation);
		
		testDencoder("ガギグゲゴザジズゼゾダヂヅデドバビブベボヴ", ".-.. .. -.-.. .. ...- .. -.-- .. ---- .. -.-.- .. --.-. .. ---.- .. .---. .. ---. .. -. .. ..-. .. .--. .. .-.-- .. ..-.. .. -... .. --..- .. --.. .. . .. -.. .. ..- ..", "ガギグゲゴザジズゼゾダヂヅデドバビブベボヴ", variant, notation);
		testDencoder("がぎぐげござじずぜぞだぢづでどばびぶべぼゔ", ".-.. .. -.-.. .. ...- .. -.-- .. ---- .. -.-.- .. --.-. .. ---.- .. .---. .. ---. .. -. .. ..-. .. .--. .. .-.-- .. ..-.. .. -... .. --..- .. --.. .. . .. -.. .. ..- ..", "ガギグゲゴザジズゼゾダヂヅデドバビブベボヴ", variant, notation);
		
		testDencoder("パピプペポ", "-... ..--. --..- ..--. --.. ..--. . ..--. -.. ..--.", "パピプペポ", variant, notation);
		testDencoder("ぱぴぷぺぽ", "-... ..--. --..- ..--. --.. ..--. . ..--. -.. ..--.", "パピプペポ", variant, notation);
		
		testDencoder("１２３４５６７８９０", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "１２３４５６７８９０", variant, notation);
		testDencoder("1234567890", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "１２３４５６７８９０", variant, notation);
		
		testDencoder("ー、。（）", ".--.- .-.-.- .-.-.. -.--.- .-..-.", "ー、。（）", variant, notation);
		testDencoder("，.", ".-.-.- .-.-..", "、。", variant, notation);
		testDencoder("()", "-.--.- .-..-.", "（）", variant, notation);
		
		// Word space
		testDencoder(" ", "/", " ", variant, notation);
		testDencoder("イ ン", ".- / .-.-.", "イ ン", variant, notation);
		testDencoder("イ  ン", ".- / / .-.-.", "イ  ン", variant, notation);
		testDencoder(" ン", "/ .-.-.", " ン", variant, notation);
		testDencoder("  ン", "/ / .-.-.", "  ン", variant, notation);
		testDencoder("イ ", ".- /", "イ ", variant, notation);
		testDencoder("イ  ", ".- / /", "イ  ", variant, notation);
		
		// New line
		testDencoder("イ\r\nン", ".-\r\n.-.-.", "イ\r\nン", variant, notation);
		testDencoder("\r\nン", "\r\n.-.-.", "\r\nン", variant, notation);
		testDencoder("イ\r\n", ".-\r\n", "イ\r\n", variant, notation);
		
		// Undefined code
		testDencoder(null, "......... / .........\r\n.........", "......... .........\r\n.........", variant, notation);
		testDencoder(null, "\r\n.........\r\n", "\r\n.........\r\n", variant, notation);
		testDencoder(null, " ......... \r\n ", ".........\r\n", variant, notation);
		
		// Unsupported letter
		testDencoder("*** ***\r\n***", "* * * / * * *\r\n* * *", "*** ***\r\n***", variant, notation);
		
		// Alternative code symbols
		testDencoder(null, "・－／", "イ ", variant, notation);
	}
	
	@Test
	public void testJapanese_CodeFullwidth() {
		String variant = "japanese";
		String notation = "code-fullwidth";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("イ", "・－", "イ", variant, notation);
		testDencoder("イロハ", "・－　・－・－　－・・・", "イロハ", variant, notation);
		testDencoder("ガ", "・－・・　・・", "ガ", variant, notation);
		testDencoder("パ", "－・・・　・・－－・", "パ", variant, notation);
		
		// Word space
		testDencoder(" ", "／", " ", variant, notation);
		testDencoder("イ ン", "・－　／　・－・－・", "イ ン", variant, notation);
		
		// New line
		testDencoder("イ\r\nン", "・－\r\n・－・－・", "イ\r\nン", variant, notation);
	}
	
	@Test
	public void testJapanese_Signals() {
		String variant = "japanese";
		String notation = "signals";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("イ", "▄ ▄▄▄", "イ", variant, notation);
		testDencoder("イロハ", "▄ ▄▄▄   ▄ ▄▄▄ ▄ ▄▄▄   ▄▄▄ ▄ ▄ ▄", "イロハ", variant, notation);
		testDencoder("ガ", "▄ ▄▄▄ ▄ ▄   ▄ ▄", "ガ", variant, notation);
		testDencoder("パ", "▄▄▄ ▄ ▄ ▄   ▄ ▄ ▄▄▄ ▄▄▄ ▄", "パ", variant, notation);
		
		// Word space
		testDencoder(" ", "       ", " ", variant, notation);
		testDencoder("イ ン", "▄ ▄▄▄       ▄ ▄▄▄ ▄ ▄▄▄ ▄", "イ ン", variant, notation);
	}
	
	@Test
	public void testJapanese_Signals01() {
		String variant = "japanese";
		String notation = "signals-01";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("イ", "10111", "イ", variant, notation);
		testDencoder("イロハ", "1011100010111010111000111010101", "イロハ", variant, notation);
		testDencoder("ガ", "101110101000101", "ガ", variant, notation);
		testDencoder("パ", "1110101010001010111011101", "パ", variant, notation);
		
		// Word space
		testDencoder(" ", "0000000", " ", variant, notation);
		testDencoder("イ ン", "1011100000001011101011101", "イ ン", variant, notation);
	}
	
	@Test
	public void testRussian_Code() {
		String variant = "russian";
		String notation = "code";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("А", ".-", "А", variant, notation);
		testDencoder("а", ".-", "А", variant, notation);
		
		testDencoder("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", ".- -... .-- --. -.. . ...- --.. .. .--- -.- .-.. -- -. --- .--. .-. ... - ..- ..-. .... -.-. ---. ---- --.- --.-- -.-- -..- ..-.. ..-- .-.-", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", variant, notation);
		testDencoder("абвгдежзийклмнопрстуфхцчшщъыьэюя", ".- -... .-- --. -.. . ...- --.. .. .--- -.- .-.. -- -. --- .--. .-. ... - ..- ..-. .... -.-. ---. ---- --.- --.-- -.-- -..- ..-.. ..-- .-.-", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", variant, notation);
		testDencoder("ЁѢ", ". ..-..", "ЕЭ", variant, notation);
		testDencoder("ёѣ", ". ..-..", "ЕЭ", variant, notation);
		
		testDencoder("1234567890", ".---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----", "1234567890", variant, notation);
		
		testDencoder(".,:;()'\"-/?!=@", "...... .-.-.- ---... -.-.- -.--.- -.--.- .----. .-..-. -....- -..-. ..--.. --..-- -...- .--.-.", ".,:;(('\"-/?!=@", variant, notation);
		
		// Word space
		testDencoder(" ", "/", " ", variant, notation);
		testDencoder("А Я", ".- / .-.-", "А Я", variant, notation);
		testDencoder("А  Я", ".- / / .-.-", "А  Я", variant, notation);
		testDencoder(" Я", "/ .-.-", " Я", variant, notation);
		testDencoder("  Я", "/ / .-.-", "  Я", variant, notation);
		testDencoder("А ", ".- /", "А ", variant, notation);
		testDencoder("А  ", ".- / /", "А  ", variant, notation);
		
		// New line
		testDencoder("А\r\nЯ", ".-\r\n.-.-", "А\r\nЯ", variant, notation);
		testDencoder("\r\nЯ", "\r\n.-.-", "\r\nЯ", variant, notation);
		testDencoder("А\r\n", ".-\r\n", "А\r\n", variant, notation);
		
		// Undefined code
		testDencoder(null, "......... / .........\r\n.........", "......... .........\r\n.........", variant, notation);
		testDencoder(null, "\r\n.........\r\n", "\r\n.........\r\n", variant, notation);
		testDencoder(null, " ......... \r\n ", ".........\r\n", variant, notation);
		
		// Unsupported letter
		testDencoder("*** ***\r\n***", "* * * / * * *\r\n* * *", "*** ***\r\n***", variant, notation);
		
		// Alternative code symbols
		testDencoder(null, "・－／", "А ", variant, notation);
	}
	
	@Test
	public void testRussian_CodeFullwidth() {
		String variant = "russian";
		String notation = "code-fullwidth";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("А", "・－", "А", variant, notation);
		testDencoder("АБВ", "・－　－・・・　・－－", "АБВ", variant, notation);
		
		// Word space
		testDencoder(" ", "／", " ", variant, notation);
		testDencoder("А Я", "・－　／　・－・－", "А Я", variant, notation);
		
		// New line
		testDencoder("А\r\nЯ", "・－\r\n・－・－", "А\r\nЯ", variant, notation);
	}
	
	@Test
	public void testRussian_Signals() {
		String variant = "russian";
		String notation = "signals";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("А", "▄ ▄▄▄", "А", variant, notation);
		testDencoder("АБВ", "▄ ▄▄▄   ▄▄▄ ▄ ▄ ▄   ▄ ▄▄▄ ▄▄▄", "АБВ", variant, notation);
		
		// Word space
		testDencoder(" ", "       ", " ", variant, notation);
		testDencoder("А Я", "▄ ▄▄▄       ▄ ▄▄▄ ▄ ▄▄▄", "А Я", variant, notation);
	}
	
	@Test
	public void testRussian_Signals01() {
		String variant = "russian";
		String notation = "signals-01";
		
		testDencoder("", "", "", variant, notation);
		
		testDencoder("А", "10111", "А", variant, notation);
		testDencoder("АБВ", "10111000111010101000101110111", "АБВ", variant, notation);
		
		// Word space
		testDencoder(" ", "0000000", " ", variant, notation);
		testDencoder("А Я", "10111000000010111010111", "А Я", variant, notation);
	}
	
	@Test
	public void testNotationUnknown() {
		// Unknown notation falls back to "code"
		testDencoder("A", ".-", "A", "international", "unknown");
		testDencoder("ABC", ".- -... -.-.", "ABC", "international", "unknown");
	}
	
	private void testDencoder(String value, String expectedEncodedValue, String expectedDecodedValue, String variant, String notation) {
		if (value == null ) {
			String decodedValue = StringMorseCodeDencoder.decStrMorseCode(condition(expectedEncodedValue, variant, notation));
			assertEquals(expectedDecodedValue, decodedValue);
		} else {
			String encodedValue = StringMorseCodeDencoder.encStrMorseCode(condition(value, variant, notation));
			assertEquals(expectedEncodedValue, encodedValue);
			String decodedValue = StringMorseCodeDencoder.decStrMorseCode(condition(encodedValue, variant, notation));
			assertEquals(expectedDecodedValue, decodedValue);
		}
	}
	
	private DencodeCondition condition(String value, String variant, String notation) {
		return new DencodeCondition(value, StandardCharsets.UTF_8, "\r\n", null, new HashMap<String, String>() {
				private static final long serialVersionUID = 1L;
				{
					put("string.morse-code.variant", variant);
					put("string.morse-code.notation", notation);
				}
				});
	}
 }
 