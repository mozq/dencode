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

public class StringBrailleDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringBrailleDencoder::encStrBraille,
			StringBrailleDencoder::decStrBraille,
			"string.braille.variant");

	@Test
	public void testUEB1() {
		// Blank
		tester.test("", "", tester.options("ueb1"));

		// Letters
		tester.test("a", "⠁", tester.options("ueb1"));
		tester.test("A", "⠠⠁", tester.options("ueb1"));
		tester.test("abcdefghijklmnopqrstuvwxyz", "⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠅⠇⠍⠝⠕⠏⠟⠗⠎⠞⠥⠧⠺⠭⠽⠵", tester.options("ueb1"));
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "⠠⠠⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠅⠇⠍⠝⠕⠏⠟⠗⠎⠞⠥⠧⠺⠭⠽⠵", tester.options("ueb1"));

		// Letters & Whitespace
		tester.test(" abcdefg hijklmnop   qrstuv wxyz ", "⠀⠁⠃⠉⠙⠑⠋⠛⠀⠓⠊⠚⠅⠇⠍⠝⠕⠏⠀⠀⠀⠟⠗⠎⠞⠥⠧⠀⠺⠭⠽⠵⠀", tester.options("ueb1"));
		tester.test(" ABCDEFG HIJKLMNOP   QRSTUV WXYZ ", "⠀⠠⠠⠠⠁⠃⠉⠙⠑⠋⠛⠀⠓⠊⠚⠅⠇⠍⠝⠕⠏⠀⠀⠀⠟⠗⠎⠞⠥⠧⠀⠺⠭⠽⠵⠀⠠⠄", tester.options("ueb1"));

		// Numbers
		tester.test("1234567890", "⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚", tester.options("ueb1"));
		tester.test("1,234,567,890", "⠼⠁⠂⠃⠉⠙⠂⠑⠋⠛⠂⠓⠊⠚", tester.options("ueb1"));
		tester.test("1 234 567 890", "⠼⠁⠐⠃⠉⠙⠐⠑⠋⠛⠐⠓⠊⠚", tester.options("ueb1")); // U+2007 Numeric space
		tester.test("12345.67890", "⠼⠁⠃⠉⠙⠑⠲⠋⠛⠓⠊⠚", tester.options("ueb1"));
		tester.test("abc1234567890abc", "⠁⠃⠉⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠰⠁⠃⠉", tester.options("ueb1"));
		tester.test("abc 1234567890 abc", "⠁⠃⠉⠀⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠀⠁⠃⠉", tester.options("ueb1"));
		tester.test("ABC1234567890ABC", "⠠⠠⠁⠃⠉⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠠⠠⠁⠃⠉", tester.options("ueb1"));
		tester.test("ABC 1234567890 ABC", "⠠⠠⠠⠁⠃⠉⠀⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠀⠁⠃⠉⠠⠄", tester.options("ueb1"));
		tester.test("2012/01/23", "⠼⠃⠚⠁⠃⠸⠌⠼⠚⠁⠸⠌⠼⠃⠉", tester.options("ueb1"));
		tester.test("2012-01-23", "⠼⠃⠚⠁⠃⠤⠼⠚⠁⠤⠼⠃⠉", tester.options("ueb1"));
		tester.test("100g", "⠼⠁⠚⠚⠰⠛", tester.options("ueb1"));
		tester.test("'90's", "⠄⠼⠊⠚⠄⠎", tester.options("ueb1"));
		tester.test("-20%", "⠤⠼⠃⠚⠨⠴", tester.options("ueb1")); // Hyphen
		tester.test("−20%", "⠐⠤⠼⠃⠚⠨⠴", tester.options("ueb1")); // U+2212 Minus sign

		// Symbols - ASCII
		tester.test("!\"#$%&'()*+,-./", "⠖⠠⠶⠸⠹⠈⠎⠨⠴⠈⠯⠄⠐⠣⠐⠜⠐⠔⠐⠖⠂⠤⠲⠸⠌", tester.options("ueb1")); // ASCII 0x2x
		tester.test(":;<=>?", "⠒⠆⠈⠣⠐⠶⠈⠜⠦", tester.options("ueb1")); // ASCII 0x3x
		tester.test("@", "⠈⠁", tester.options("ueb1")); //0x4x
		tester.test("[\\]^_", "⠨⠣⠸⠡⠨⠜⠈⠢⠨⠤", tester.options("ueb1")); // ASCII 0x5x
		tester.test("`", "⠘⠡", tester.options("ueb1")); // ASCII 0x6x
		tester.test("{|}~", "⠸⠣⠸⠳⠸⠜⠈⠔", tester.options("ueb1")); // ASCII 0x7x

		// Symbols - Non-ASCII
		tester.test("£₣¢€$₦¥", "⠈⠇⠈⠋⠈⠉⠈⠑⠈⠎⠈⠝⠈⠽", tester.options("ueb1"));
		tester.test("®©´`™°♀♂¶§", "⠘⠗⠘⠉⠘⠌⠘⠡⠘⠞⠘⠚⠘⠭⠘⠽⠘⠏⠘⠎", tester.options("ueb1"));
		tester.test("•", "⠸⠲", tester.options("ueb1"));
		tester.test("〃×÷*−", "⠐⠂⠐⠦⠐⠌⠐⠔⠐⠤", tester.options("ueb1"));
		tester.test("†‡", "⠈⠠⠹⠈⠠⠻", tester.options("ueb1"));
		tester.test("¡¿", "⠘⠰⠖⠘⠰⠦", tester.options("ueb1"));

		// Quotation marks and brackets
		tester.test("\"Hello, world?\"", "⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠴", tester.options("ueb1")); // Non-specific quotation
		tester.test("“Hello, world?”", "⠘⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠘⠴", tester.options("ueb1")); // U+201C, U+201D
		tester.test("'Hello, world?'", "⠄⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠄", tester.options("ueb1")); // This is an apostrophe, not quotation marks
		tester.test("‘Hello, world?’", "⠠⠘⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠘⠴", tester.options("ueb1")); // U+2018, U+2019
		tester.test("«Hello, world?»", "⠨⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠨⠴", tester.options("ueb1")); // U+00AB, U+00BB
		tester.test("<Hello, world?>", "⠈⠣⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠈⠜", tester.options("ueb1"));
		tester.test("{Hello, world?}", "⠸⠣⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠸⠜", tester.options("ueb1"));
		tester.test("[Hello, world?]", "⠨⠣⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠨⠜", tester.options("ueb1"));

		tester.test("Abc \"HELLO, WORLD?\" Abc", "⠠⠁⠃⠉⠀⠦⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠄⠴⠀⠠⠁⠃⠉", tester.options("ueb1")); // Non-specific quotation
		tester.test("Abc “HELLO, WORLD?” Abc", "⠠⠁⠃⠉⠀⠘⠦⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠄⠘⠴⠀⠠⠁⠃⠉", tester.options("ueb1")); // U+201C, U+201D
		tester.test("Abc 'HELLO, WORLD?' Abc", "⠠⠁⠃⠉⠀⠄⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠄⠀⠁⠠⠄⠃⠉", tester.options("ueb1")); // This is an apostrophe, not quotation marks
		tester.test("Abc ‘HELLO, WORLD?’ Abc", "⠠⠁⠃⠉⠀⠠⠘⠦⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠄⠠⠘⠴⠀⠠⠁⠃⠉", tester.options("ueb1")); // U+2018, U+2019
		tester.test("Abc <HELLO, WORLD?> Abc", "⠠⠁⠃⠉⠀⠈⠣⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠄⠈⠜⠀⠠⠁⠃⠉", tester.options("ueb1"));
		tester.test("Abc {HELLO, WORLD?} Abc", "⠠⠁⠃⠉⠀⠸⠣⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠄⠸⠜⠀⠠⠁⠃⠉", tester.options("ueb1"));
		tester.test("Abc [HELLO, WORLD?] Abc", "⠠⠁⠃⠉⠀⠨⠣⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠄⠨⠜⠀⠠⠁⠃⠉", tester.options("ueb1"));
		tester.test("Abc (HELLO, WORLD?) Abc", "⠠⠁⠃⠉⠀⠐⠣⠠⠠⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠦⠠⠄⠐⠜⠀⠠⠁⠃⠉", tester.options("ueb1"));

		// Dash
		tester.test("a - z", "⠁⠀⠤⠀⠵", tester.options("ueb1")); // Hyphen
		tester.test("a -- z", "⠁⠀⠤⠤⠀⠵", tester.options("ueb1")); // Hyphen x 2
		tester.test("a — z", "⠁⠀⠠⠤⠀⠵", tester.options("ueb1")); // Em Dash
		tester.test("a —— z", "⠁⠀⠐⠠⠤⠀⠵", tester.options("ueb1")); // Em Dash x 2 ( Long Dash)

		// Case
		tester.test("B&B", "⠠⠃⠈⠯⠠⠃", tester.options("ueb1"));
		tester.test("STOP!", "⠠⠠⠎⠞⠕⠏⠖", tester.options("ueb1"));
		tester.test("ABCs", "⠠⠠⠁⠃⠉⠠⠄⠎", tester.options("ueb1"));
		tester.test("BOB'S CAFE", "⠠⠠⠠⠃⠕⠃⠄⠎⠀⠉⠁⠋⠑⠠⠄", tester.options("ueb1"));
		tester.test("BOB's CAFE", "⠠⠠⠃⠕⠃⠄⠎⠀⠠⠠⠉⠁⠋⠑", tester.options("ueb1"));
		tester.test("MERRY-GO-ROUND", "⠠⠠⠍⠑⠗⠗⠽⠤⠠⠠⠛⠕⠤⠠⠠⠗⠕⠥⠝⠙", tester.options("ueb1"));
		tester.test("CAUTION: 10 MPH LIMIT", "⠠⠠⠠⠉⠁⠥⠞⠊⠕⠝⠒⠀⠼⠁⠚⠀⠍⠏⠓⠀⠇⠊⠍⠊⠞⠠⠄", tester.options("ueb1"));
		tester.test("PUT THE \"GIVE\" IN THANKSGIVING", "⠠⠠⠠⠏⠥⠞⠀⠞⠓⠑⠀⠦⠛⠊⠧⠑⠴⠀⠊⠝⠀⠞⠓⠁⠝⠅⠎⠛⠊⠧⠊⠝⠛⠠⠄", tester.options("ueb1"));
		tester.test("The crowd shouted \"STOP THAT BALL!\"", "⠠⠞⠓⠑⠀⠉⠗⠕⠺⠙⠀⠎⠓⠕⠥⠞⠑⠙⠀⠦⠠⠠⠠⠎⠞⠕⠏⠀⠞⠓⠁⠞⠀⠃⠁⠇⠇⠖⠠⠄⠴", tester.options("ueb1"));
	}

	@Test
	public void testJapanese() {
		// Blank
		tester.test("", "", tester.options("japanese"));

		tester.test("アイウエオ", "⠁⠃⠉⠋⠊", tester.options("japanese"));
		tester.test("カキクケコ", "⠡⠣⠩⠫⠪", tester.options("japanese"));
		tester.test("サシスセソ", "⠱⠳⠹⠻⠺", tester.options("japanese"));
		tester.test("タチツテト", "⠕⠗⠝⠟⠞", tester.options("japanese"));
		tester.test("ナニヌネノ", "⠅⠇⠍⠏⠎", tester.options("japanese"));
		tester.test("ハヒフヘホ", "⠥⠧⠭⠯⠮", tester.options("japanese"));
		tester.test("マミムメモ", "⠵⠷⠽⠿⠾", tester.options("japanese"));
		tester.test("ヤユヨ", "⠌⠬⠜", tester.options("japanese"));
		tester.test("ラリルレロ", "⠑⠓⠙⠛⠚", tester.options("japanese"));
		tester.test("ワヰヱヲ", "⠄⠆⠖⠔", tester.options("japanese"));
		tester.test("ン", "⠴", tester.options("japanese"));
		tester.test("ッ", "⠂", tester.options("japanese"));
		tester.test("ー", "⠒", tester.options("japanese"));
		tester.test("、", "⠰", tester.options("japanese"));
		tester.test("。", "⠲", tester.options("japanese"));
		tester.test("？", "⠢", tester.options("japanese"));
		tester.test("！", "⠖", tester.options("japanese"));
		tester.test("・", "⠐", tester.options("japanese"));
		tester.test("ア、\n", "⠁⠰\n", tester.options("japanese"));
		tester.test("ア、ア", "⠁⠰⠀⠁", tester.options("japanese"));
		tester.test("ア。\n", "⠁⠲\n", tester.options("japanese"));
		tester.test("ア。ア", "⠁⠲⠀⠀⠁", tester.options("japanese"));
		tester.test("ア？\n", "⠁⠢\n", tester.options("japanese"));
		tester.test("ア？ア", "⠁⠢⠀⠀⠁", tester.options("japanese"));
		tester.test("ア！\n", "⠁⠖\n", tester.options("japanese"));
		tester.test("ア！ア", "⠁⠖⠀⠀⠁", tester.options("japanese"));

		tester.test("ヴ", "⠐⠉", tester.options("japanese"));
		tester.test("ガギグゲゴ", "⠐⠡⠐⠣⠐⠩⠐⠫⠐⠪", tester.options("japanese"));
		tester.test("ザジズゼゾ", "⠐⠱⠐⠳⠐⠹⠐⠻⠐⠺", tester.options("japanese"));
		tester.test("ダヂヅデド", "⠐⠕⠐⠗⠐⠝⠐⠟⠐⠞", tester.options("japanese"));
		tester.test("バビブベボ", "⠐⠥⠐⠧⠐⠭⠐⠯⠐⠮", tester.options("japanese"));

		tester.test("パピプペポ", "⠠⠥⠠⠧⠠⠭⠠⠯⠠⠮", tester.options("japanese"));

		tester.test("イェ", "⠈⠋", tester.options("japanese"));
		tester.test("キャキュキェキョ", "⠈⠡⠈⠩⠈⠫⠈⠪", tester.options("japanese"));
		tester.test("シャスィシュシェショ", "⠈⠱⠈⠳⠈⠹⠈⠻⠈⠺", tester.options("japanese"));
		tester.test("チャティチュチェチョ", "⠈⠕⠈⠗⠈⠝⠈⠟⠈⠞", tester.options("japanese"));
		tester.test("ニャニュニェニョ", "⠈⠅⠈⠍⠈⠏⠈⠎", tester.options("japanese"));
		tester.test("ヒャヒュヒェヒョ", "⠈⠥⠈⠭⠈⠯⠈⠮", tester.options("japanese"));
		tester.test("ミャミュミョ", "⠈⠵⠈⠽⠈⠾", tester.options("japanese"));
		tester.test("リャリュリョ", "⠈⠑⠈⠙⠈⠚", tester.options("japanese"));
		tester.test("ギャギュギョ", "⠘⠡⠘⠩⠘⠪", tester.options("japanese"));
		tester.test("ジャズィジュジェジョ", "⠘⠱⠘⠳⠘⠹⠘⠻⠘⠺", tester.options("japanese"));
		tester.test("ヂャディヂュヂョ", "⠘⠕⠘⠗⠘⠝⠘⠞", tester.options("japanese"));
		tester.test("ビャビュビョ", "⠘⠥⠘⠭⠘⠮", tester.options("japanese"));
		tester.test("ピャピュピョ", "⠨⠥⠨⠭⠨⠮", tester.options("japanese"));
		tester.test("ウァウィウェウォ", "⠢⠁⠢⠃⠢⠋⠢⠊", tester.options("japanese"));
		tester.test("クァクィクェクォ", "⠢⠡⠢⠣⠢⠫⠢⠪", tester.options("japanese"));
		tester.test("ツァツィトゥツェツォ", "⠢⠕⠢⠗⠢⠝⠢⠟⠢⠞", tester.options("japanese"));
		tester.test("ファフィフェフォフュフョ", "⠢⠥⠢⠧⠢⠯⠢⠮⠨⠬⠨⠜", tester.options("japanese"));
		tester.test("ヴァヴィヴェヴォヴュヴョ", "⠲⠥⠲⠧⠲⠯⠲⠮⠸⠬⠸⠜", tester.options("japanese"));
		tester.test("グァグィグェグォ", "⠲⠡⠲⠣⠲⠫⠲⠪", tester.options("japanese"));
		tester.test("ドゥ", "⠲⠝", tester.options("japanese"));
		tester.test("テュ", "⠨⠝", tester.options("japanese"));
		tester.test("デュ", "⠸⠝", tester.options("japanese"));

		tester.test("ァィゥェォ", "⠘⠁⠘⠃⠘⠉⠘⠋⠘⠊", tester.options("japanese"));
		tester.test("ャュョ", "⠘⠌⠘⠬⠘⠜", tester.options("japanese"));
		tester.test("ヮ", "⠘⠄", tester.options("japanese"));

		// Letters
		tester.test("ａ", "⠰⠁", tester.options("japanese"));
		tester.test("Ａ", "⠰⠠⠁", tester.options("japanese"));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "⠰⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠅⠇⠍⠝⠕⠏⠟⠗⠎⠞⠥⠧⠺⠭⠽⠵", tester.options("japanese"));
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "⠰⠠⠠⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠅⠇⠍⠝⠕⠏⠟⠗⠎⠞⠥⠧⠺⠭⠽⠵", tester.options("japanese"));

		// Letters (Half-width)
		tester.test("abcdefghijklmnopqrstuvwxyz", "⠰⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠅⠇⠍⠝⠕⠏⠟⠗⠎⠞⠥⠧⠺⠭⠽⠵", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options("japanese"));
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "⠰⠠⠠⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠅⠇⠍⠝⠕⠏⠟⠗⠎⠞⠥⠧⠺⠭⠽⠵", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options("japanese"));

		// Letter case
		tester.test("ＡＭｅＤＡＳ", "⠰⠠⠁⠠⠍⠑⠠⠠⠙⠁⠎", tester.options("japanese"));
		tester.test("ＮＩＥｓ", "⠰⠠⠠⠝⠊⠑⠰⠎", tester.options("japanese"));
		tester.test("ＮＳＡＩＤｓ", "⠰⠠⠠⠝⠎⠁⠊⠙⠰⠎", tester.options("japanese"));
		tester.test("ＳＤＧｓ", "⠰⠠⠠⠎⠙⠛⠰⠎", tester.options("japanese"));
		tester.test("ＡＴＰａｓｅ", "⠰⠠⠠⠁⠞⠏⠰⠁⠎⠑", tester.options("japanese"));
		tester.test("ＩＰｓｅｃ", "⠰⠠⠊⠠⠏⠎⠑⠉", tester.options("japanese")); // (Should put a Gaiji indicator before lower letters by the rule, but it is impossible without a dictionary)
		tester.test("ＮｅｗＥＳＡ７２１", "⠰⠠⠝⠑⠺⠠⠠⠑⠎⠁⠼⠛⠃⠁", tester.options("japanese"));

		tester.test("Ｕ．Ｓ．Ａ．", "⠰⠠⠥⠲⠠⠎⠲⠠⠁⠲", tester.options("japanese"));
		tester.test("Ｃ－９０", "⠰⠠⠉⠤⠼⠊⠚", tester.options("japanese"));
		tester.test("ＣＤ－ＲＯＭ", "⠰⠠⠠⠉⠙⠤⠰⠠⠠⠗⠕⠍", tester.options("japanese")); // A Gaiji indicator will be terminated after a hyphen "-"
		tester.test("ＤＯＳ／Ｖ", "⠰⠠⠠⠙⠕⠎⠌⠠⠧", tester.options("japanese"));

		// Letters & Whitespace & Letter case
		tester.test("　ａｂｃｄｅｆｇ　ｈｉｊｋｌｍｎｏｐ　　　ｑｒｓｔｕｖ　ｗｘｙｚ　", "⠀⠰⠁⠃⠉⠙⠑⠋⠛⠀⠰⠓⠊⠚⠅⠇⠍⠝⠕⠏⠀⠀⠀⠰⠟⠗⠎⠞⠥⠧⠀⠰⠺⠭⠽⠵⠀", tester.options("japanese"));
		tester.test("　ＡｂｃｄＥｆｇ　Ｈｉｊｋｌｍｎｏｐ　　　ＱｒｓｔｕＶ　Ｗｘｙｚ　", "⠀⠰⠠⠁⠃⠉⠙⠠⠑⠋⠛⠀⠰⠠⠓⠊⠚⠅⠇⠍⠝⠕⠏⠀⠀⠀⠰⠠⠟⠗⠎⠞⠥⠠⠧⠀⠰⠠⠺⠭⠽⠵⠀", tester.options("japanese"));
		tester.test("　ＡＢＣＤＥＦＧ　ＨＩＪＫＬＭＮＯＰ　　　ＱＲＳＴＵＶ　ＷＸＹＺ　", "⠀⠰⠠⠠⠁⠃⠉⠙⠑⠋⠛⠀⠰⠠⠠⠓⠊⠚⠅⠇⠍⠝⠕⠏⠀⠀⠀⠰⠠⠠⠟⠗⠎⠞⠥⠧⠀⠰⠠⠠⠺⠭⠽⠵⠀", tester.options("japanese"));

		// Numbers
		tester.test("１２３４５６７８９０", "⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚", tester.options("japanese"));
		tester.test("１，２３４，５６７，８９０", "⠼⠁⠄⠃⠉⠙⠄⠑⠋⠛⠄⠓⠊⠚", tester.options("japanese"));
		tester.test("１２３４５．６７８９０", "⠼⠁⠃⠉⠙⠑⠂⠋⠛⠓⠊⠚", tester.options("japanese"));
		tester.test("ａｂｃ１２３４５６７８９０ａｂｃ", "⠰⠁⠃⠉⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠰⠁⠃⠉", tester.options("japanese"));
		tester.test("ａｂｃ　１２３４５６７８９０　ａｂｃ", "⠰⠁⠃⠉⠀⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠀⠰⠁⠃⠉", tester.options("japanese"));
		tester.test("ＡＢＣ１２３４５６７８９０ＡＢＣ", "⠰⠠⠠⠁⠃⠉⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠰⠠⠠⠁⠃⠉", tester.options("japanese"));
		tester.test("ＡＢＣ　１２３４５６７８９０　ＡＢＣ", "⠰⠠⠠⠁⠃⠉⠀⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠀⠰⠠⠠⠁⠃⠉", tester.options("japanese"));
		tester.test("２０１２－０１－２３", "⠼⠃⠚⠁⠃⠤⠼⠚⠁⠤⠼⠃⠉", tester.options("japanese"));
		tester.test("１００ｇ", "⠼⠁⠚⠚⠰⠛", tester.options("japanese"));

		// Numbers (Half-width)
		tester.test("1234567890", "⠼⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚", "１２３４５６７８９０", tester.options("japanese"));
		tester.test("1,234,567,890", "⠼⠁⠄⠃⠉⠙⠄⠑⠋⠛⠄⠓⠊⠚", "１，２３４，５６７，８９０", tester.options("japanese"));
		tester.test("12345.67890", "⠼⠁⠃⠉⠙⠑⠂⠋⠛⠓⠊⠚", "１２３４５．６７８９０", tester.options("japanese"));

		// Mixed
		tester.test("アイウ　ａｂｃ　１２３　ａｂｃ　アイウ　１２３　アイウ", "⠁⠃⠉⠀⠰⠁⠃⠉⠀⠼⠁⠃⠉⠀⠰⠁⠃⠉⠀⠁⠃⠉⠀⠼⠁⠃⠉⠀⠁⠃⠉", tester.options("japanese"));
		tester.test("ワヲン　ｘｙｚ　７８９　ｘｙｚ　ワヲン　７８９　ワヲン", "⠄⠔⠴⠀⠰⠭⠽⠵⠀⠼⠛⠓⠊⠀⠰⠭⠽⠵⠀⠄⠔⠴⠀⠼⠛⠓⠊⠀⠄⠔⠴", tester.options("japanese"));
		tester.test("アイウａｂｃ１２３ａｂｃアイウ１２３アイウ", "⠁⠃⠉⠰⠁⠃⠉⠼⠁⠃⠉⠰⠁⠃⠉⠤⠁⠃⠉⠼⠁⠃⠉⠤⠁⠃⠉", tester.options("japanese"));
		tester.test("ワヲンｘｙｚ７８９ｘｙｚワヲン７８９ワヲン", "⠄⠔⠴⠰⠭⠽⠵⠼⠛⠓⠊⠰⠭⠽⠵⠤⠄⠔⠴⠼⠛⠓⠊⠤⠄⠔⠴", tester.options("japanese"));

		// Symbols
		tester.test("％＆＃＊＠", "⠰⠏⠰⠯⠰⠩⠰⠡⠰⠪", tester.options("japanese"));
		tester.test("○△□×", "⠂⠵⠂⠷⠂⠽⠂⠿", tester.options("japanese"));

		tester.test("スー％", "⠹⠒⠰⠏", tester.options("japanese"));
		tester.test("Ａ％", "⠰⠠⠁⠰⠏", tester.options("japanese"));
		tester.test("２５％ビキ", "⠼⠃⠑⠰⠏⠐⠧⠣", tester.options("japanese")); // FIXME: Should put a Tsunagi indicator between % and Kana

		tester.test("＃５０", "⠰⠩⠼⠑⠚", tester.options("japanese"));
		tester.test("＊５０", "⠰⠡⠼⠑⠚", tester.options("japanese"));

		tester.test("４ワリイリ", "⠼⠙⠤⠄⠓⠃⠓", tester.options("japanese")); // If remove the Tsunagi indicator, can read it as a number 4.828
		tester.test("４ワリ", "⠼⠙⠤⠄⠓", tester.options("japanese")); // FIXME: Does not need a Tsunagi indicator

		tester.test("Ｓ／Ｎヒ", "⠰⠠⠎⠌⠠⠝⠤⠧", tester.options("japanese"));
		tester.test("Ａ／Ｈ１Ｎ１", "⠰⠠⠁⠌⠠⠓⠼⠁⠰⠠⠝⠼⠁", tester.options("japanese"));
		tester.test("ＡＤ／ＤＡコンバーター", "⠰⠠⠠⠁⠙⠌⠠⠠⠙⠁⠤⠪⠴⠐⠥⠒⠕⠒", tester.options("japanese")); // Normally, a space is placed between 'Ａ' and 'コ', but it is not placed to cover all validation patterns
		tester.test("ＡＣ／ＤＣ　マルチ　アダプター", "⠰⠠⠠⠁⠉⠌⠠⠠⠙⠉⠀⠵⠙⠗⠀⠁⠐⠕⠠⠭⠕⠒", tester.options("japanese"));

		tester.test("９ジ〜１５ジ", "⠼⠊⠐⠳⠤⠤⠼⠁⠑⠐⠳", tester.options("japanese"));

		// Punctuation marks
		tester.test("コンニチワ。", "⠪⠴⠇⠗⠄⠲", tester.options("japanese"));
		tester.test("Ｈｅｌｌｏ．", "⠰⠠⠓⠑⠇⠇⠕⠲", tester.options("japanese"));
		tester.test("Ａ、Ｂ　ノ　アイダ", "⠰⠠⠁⠰⠀⠰⠠⠃⠀⠎⠀⠁⠃⠐⠕", tester.options("japanese"));
		tester.test("Ａ．、Ｂ．　ノ　アイダ", "⠰⠠⠁⠲⠰⠀⠰⠠⠃⠲⠀⠎⠀⠁⠃⠐⠕", tester.options("japanese"));
		tester.test("オゲンキ？ヒサシブリデスネ。", "⠊⠐⠫⠴⠣⠢⠀⠀⠧⠱⠳⠐⠭⠓⠐⠟⠹⠏⠲", tester.options("japanese"));
		tester.test("エッ！カレガ　テツガクシャ！？", "⠋⠂⠖⠀⠀⠡⠛⠐⠡⠀⠟⠝⠐⠡⠩⠈⠱⠖⠢", tester.options("japanese"));
		tester.test("マツ・スギ・ヒノキワ、シンヨージュデス。", "⠵⠝⠐⠀⠹⠐⠣⠐⠀⠧⠎⠣⠄⠰⠀⠳⠴⠜⠒⠘⠹⠐⠟⠹⠲", tester.options("japanese"));

		// Brackets
		tester.test("「コンニチワ」", "⠤⠪⠴⠇⠗⠄⠤", tester.options("japanese"));
		tester.test("「コンニチワ。」", "⠤⠪⠴⠇⠗⠄⠲⠤", tester.options("japanese"));

		tester.test("「１５００エンデス」ト　コタエタ。", "⠤⠼⠁⠑⠚⠚⠤⠋⠴⠐⠟⠹⠤⠞⠀⠪⠕⠋⠕⠲", tester.options("japanese"));
		tester.test("「コレ　１サツデ　ＯＫ！」テキナ　タイサクボン", "⠤⠪⠛⠀⠼⠁⠱⠝⠐⠟⠀⠰⠠⠠⠕⠅⠖⠤⠟⠣⠅⠀⠕⠃⠱⠩⠐⠮⠴", tester.options("japanese"));
		tester.test("「ボクワ、ハッキリ　『イヤダ。』ト　イッタヨ。」", "⠤⠐⠮⠩⠄⠰⠀⠥⠂⠣⠓⠀⠰⠤⠃⠌⠐⠕⠲⠤⠆⠞⠀⠃⠂⠕⠜⠲⠤", tester.options("japanese"));
		tester.test("「ジュウショ」「シメイ」「デンワ　バンゴー」ヲ　カイテ　クダサイ。", "⠤⠘⠹⠉⠈⠺⠤⠀⠤⠳⠿⠃⠤⠀⠤⠐⠟⠴⠄⠀⠐⠥⠴⠐⠪⠒⠤⠔⠀⠡⠃⠟⠀⠩⠐⠕⠱⠃⠲", "「ジュウショ」　「シメイ」　「デンワ　バンゴー」ヲ　カイテ　クダサイ。", tester.options("japanese")); // A space will be placed between the brackets
		tester.test("『マクラノ　ソーシ』『ツレヅレグサ』『ホージョーキ』ワ　ニホン　３ダイ　ズイヒツト　イワレテ　イマス。", "⠰⠤⠵⠩⠑⠎⠀⠺⠒⠳⠤⠆⠀⠰⠤⠝⠛⠐⠝⠛⠐⠩⠱⠤⠆⠀⠰⠤⠮⠒⠘⠺⠒⠣⠤⠆⠄⠀⠇⠮⠴⠀⠼⠉⠐⠕⠃⠀⠐⠹⠃⠧⠝⠞⠀⠃⠄⠛⠟⠀⠃⠵⠹⠲", "『マクラノ　ソーシ』　『ツレヅレグサ』　『ホージョーキ』ワ　ニホン　３ダイ　ズイヒツト　イワレテ　イマス。", tester.options("japanese")); // A space will be placed between the brackets
		tester.test("「フクコワ、コー『フク』ナ　『コ』ト　カキマス。」", "⠤⠭⠩⠪⠄⠰⠀⠪⠒⠰⠤⠭⠩⠤⠆⠅⠀⠰⠤⠪⠤⠆⠞⠀⠡⠣⠵⠹⠲⠤", tester.options("japanese"));
		tester.test("「フクコワ、コー「フク」ナ　「コ」ト　カキマス。」", "⠤⠭⠩⠪⠄⠰⠀⠪⠒⠰⠄⠭⠩⠠⠆⠅⠀⠰⠄⠪⠠⠆⠞⠀⠡⠣⠵⠹⠲⠤", tester.options("japanese"));
		tester.test("ヨコハマニワ　「ミナトノ（カクジョシ　「ノ」）　ミエル　オカ　コーエン」ガ　アル。", "⠜⠪⠥⠵⠇⠄⠀⠤⠷⠅⠞⠎⠶⠡⠩⠘⠺⠳⠀⠤⠎⠤⠶⠀⠷⠋⠙⠀⠊⠡⠀⠪⠒⠋⠴⠤⠐⠡⠀⠁⠙⠲", tester.options("japanese"));

		tester.test("ショーネン（１６サイ）ノ　スガタ", "⠈⠺⠒⠏⠴⠶⠼⠁⠋⠱⠃⠶⠎⠀⠹⠐⠡⠕", tester.options("japanese"));
		tester.test("カレワ　「コトシワ　（ホームランヲ）　５０ポン　ウツ」ト　イッテ　イル", "⠡⠛⠄⠀⠤⠪⠞⠳⠄⠀⠶⠮⠒⠽⠑⠴⠔⠶⠀⠼⠑⠚⠠⠮⠴⠀⠉⠝⠤⠞⠀⠃⠂⠟⠀⠃⠙", tester.options("japanese"));
		tester.test("スグ（ニ）（フクシ）　ヒガ　クレル。", "⠹⠐⠩⠶⠇⠶⠀⠶⠭⠩⠳⠶⠀⠧⠐⠡⠀⠩⠛⠙⠲", "スグ（ニ）　（フクシ）　ヒガ　クレル。", tester.options("japanese")); // A space will be placed between the brackets
		tester.test("ＰＬホー（１９９５｟ヘイセイ　７｠ネン　７ガツ　ツイタチ　シコー）", "⠰⠠⠠⠏⠇⠤⠮⠒⠶⠼⠁⠊⠊⠑⠰⠶⠯⠃⠻⠃⠀⠼⠛⠶⠆⠏⠴⠀⠼⠛⠐⠡⠝⠀⠝⠃⠕⠗⠀⠳⠪⠒⠶", tester.options("japanese"));
		tester.test("ＰＬホー（１９９５（ヘイセイ　７）ネン　７ガツ　ツイタチ　シコー）", "⠰⠠⠠⠏⠇⠤⠮⠒⠶⠼⠁⠊⠊⠑⠐⠶⠯⠃⠻⠃⠀⠼⠛⠶⠂⠏⠴⠀⠼⠛⠐⠡⠝⠀⠝⠃⠕⠗⠀⠳⠪⠒⠶", tester.options("japanese"));
	}
}
