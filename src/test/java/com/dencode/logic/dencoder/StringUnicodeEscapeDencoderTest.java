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

public class StringUnicodeEscapeDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringUnicodeEscapeDencoder::encStrUnicodeEscape,
			StringUnicodeEscapeDencoder::decStrUnicodeEscape,
			"string.unicode-escape.notation",
			"string.unicode-escape.case");

	@Test
	public void test_code_upper() {
		// Blank
		tester.test("", "", tester.options("", "upper"));

		// ASCII
		tester.test("Z", "\\u005A", tester.options("", "upper"));
		tester.test("Z", "\\u005A", tester.options("cubu", "upper"));
		tester.test("Z", "\\u005A", tester.options("cpbu_bub", "upper"));
		tester.test("Z", "\\u005A", tester.options("cpbu_bU", "upper"));
		tester.test("Z", "\\u{5A}", tester.options("cpbub", "upper"));
		tester.test("Z", "\\x{5A}", tester.options("cpbxb", "upper"));
		tester.test("Z", "\\5A", tester.options("cpb", "upper"));
		tester.test("Z", "&#x5A;", tester.options("cpahx", "upper"));
		tester.test("Z", "%u005A", tester.options("cupu", "upper"));
		tester.test("Z", "U+005A", tester.options("cp", "upper"));
		tester.test("Z", "0x5A", tester.options("cp0x", "upper"));
		tester.test("a\nb", "\\u0061\\u000D\\u000A\\u0062", tester.options("", "upper"), "\r\n");

		// non-ASCII (Latin-1)
		tester.test("ä", "\\u00E4", tester.options("", "upper"));
		tester.test("ä", "\\u00E4", tester.options("cubu", "upper"));
		tester.test("ä", "\\u00E4", tester.options("cpbu_bub", "upper"));
		tester.test("ä", "\\u00E4", tester.options("cpbu_bU", "upper"));
		tester.test("ä", "\\u{E4}", tester.options("cpbub", "upper"));
		tester.test("ä", "\\x{E4}", tester.options("cpbxb", "upper"));
		tester.test("ä", "\\E4", tester.options("cpb", "upper"));
		tester.test("ä", "&#xE4;", tester.options("cpahx", "upper"));
		tester.test("ä", "%u00E4", tester.options("cupu", "upper"));
		tester.test("ä", "U+00E4", tester.options("cp", "upper"));
		tester.test("ä", "0xE4", tester.options("cp0x", "upper"));

		// non-ASCII (Japanese)
		tester.test("ア", "\\u30A2", tester.options("", "upper"));
		tester.test("ア", "\\u30A2", tester.options("cubu", "upper"));
		tester.test("ア", "\\u30A2", tester.options("cpbu_bub", "upper"));
		tester.test("ア", "\\u30A2", tester.options("cpbu_bU", "upper"));
		tester.test("ア", "\\u{30A2}", tester.options("cpbub", "upper"));
		tester.test("ア", "\\x{30A2}", tester.options("cpbxb", "upper"));
		tester.test("ア", "\\30A2", tester.options("cpb", "upper"));
		tester.test("ア", "&#x30A2;", tester.options("cpahx", "upper"));
		tester.test("ア", "%u30A2", tester.options("cupu", "upper"));
		tester.test("ア", "U+30A2", tester.options("cp", "upper"));
		tester.test("ア", "0x30A2", tester.options("cp0x", "upper"));

		// non-BMP
		tester.test("😀", "\\uD83D\\uDE00", tester.options("", "upper"));
		tester.test("😀", "\\uD83D\\uDE00", tester.options("cubu", "upper"));
		tester.test("😀", "\\u{1F600}", tester.options("cpbu_bub", "upper"));
		tester.test("😀", "\\U0001F600", tester.options("cpbu_bU", "upper"));
		tester.test("😀", "\\u{1F600}", tester.options("cpbub", "upper"));
		tester.test("😀", "\\x{1F600}", tester.options("cpbxb", "upper"));
		tester.test("😀", "\\1F600", tester.options("cpb", "upper"));
		tester.test("😀", "&#x1F600;", tester.options("cpahx", "upper"));
		tester.test("😀", "%uD83D%uDE00", tester.options("cupu", "upper"));
		tester.test("😀", "U+1F600", tester.options("cp", "upper"));
		tester.test("😀", "0x1F600", tester.options("cp0x", "upper"));

		// Mixed
		tester.test("Z😀ア", "\\u005A\\uD83D\\uDE00\\u30A2", tester.options("", "upper"));
		tester.test("Z😀ア", "\\u005A\\uD83D\\uDE00\\u30A2", tester.options("cubu", "upper"));
		tester.test("Z😀ア", "\\u005A\\u{1F600}\\u30A2", tester.options("cpbu_bub", "upper"));
		tester.test("Z😀ア", "\\u005A\\U0001F600\\u30A2", tester.options("cpbu_bU", "upper"));
		tester.test("Z😀ア", "\\u{5A}\\u{1F600}\\u{30A2}", tester.options("cpbub", "upper"));
		tester.test("Z😀ア", "\\x{5A}\\x{1F600}\\x{30A2}", tester.options("cpbxb", "upper"));
		tester.test("Z😀ア", "\\5A\\1F600\\30A2", tester.options("cpb", "upper"));
		tester.test("Z😀ア", "&#x5A;&#x1F600;&#x30A2;", tester.options("cpahx", "upper"));
		tester.test("Z😀ア", "%u005A%uD83D%uDE00%u30A2", tester.options("cupu", "upper"));
		tester.test("Z😀ア", "U+005A U+1F600 U+30A2", tester.options("cp", "upper"));
		tester.test("Z😀ア", "0x5A 0x1F600 0x30A2", tester.options("cp0x", "upper"));
	}

	@Test
	public void test_code_lower() {
		// Blank
		tester.test("", "", tester.options("", "lower"));

		// ASCII
		tester.test("Z", "\\u005a", tester.options("", "lower"));
		tester.test("Z", "\\u005a", tester.options("cubu", "lower"));
		tester.test("Z", "\\u005a", tester.options("cpbu_bub", "lower"));
		tester.test("Z", "\\u005a", tester.options("cpbu_bU", "lower"));
		tester.test("Z", "\\u{5a}", tester.options("cpbub", "lower"));
		tester.test("Z", "\\x{5a}", tester.options("cpbxb", "lower"));
		tester.test("Z", "\\5a", tester.options("cpb", "lower"));
		tester.test("Z", "&#x5a;", tester.options("cpahx", "lower"));
		tester.test("Z", "%u005a", tester.options("cupu", "lower"));
		tester.test("Z", "U+005a", tester.options("cp", "lower"));
		tester.test("Z", "0x5a", tester.options("cp0x", "lower"));

		// non-ASCII (Latin-1)
		tester.test("ä", "\\u00e4", tester.options("", "lower"));
		tester.test("ä", "\\u00e4", tester.options("cubu", "lower"));
		tester.test("ä", "\\u00e4", tester.options("cpbu_bub", "lower"));
		tester.test("ä", "\\u00e4", tester.options("cpbu_bU", "lower"));
		tester.test("ä", "\\u{e4}", tester.options("cpbub", "lower"));
		tester.test("ä", "\\x{e4}", tester.options("cpbxb", "lower"));
		tester.test("ä", "\\e4", tester.options("cpb", "lower"));
		tester.test("ä", "&#xe4;", tester.options("cpahx", "lower"));
		tester.test("ä", "%u00e4", tester.options("cupu", "lower"));
		tester.test("ä", "U+00e4", tester.options("cp", "lower"));
		tester.test("ä", "0xe4", tester.options("cp0x", "lower"));

		// non-ASCII (Japanese)
		tester.test("ア", "\\u30a2", tester.options("", "lower"));
		tester.test("ア", "\\u30a2", tester.options("cubu", "lower"));
		tester.test("ア", "\\u30a2", tester.options("cpbu_bub", "lower"));
		tester.test("ア", "\\u30a2", tester.options("cpbu_bU", "lower"));
		tester.test("ア", "\\u{30a2}", tester.options("cpbub", "lower"));
		tester.test("ア", "\\x{30a2}", tester.options("cpbxb", "lower"));
		tester.test("ア", "\\30a2", tester.options("cpb", "lower"));
		tester.test("ア", "&#x30a2;", tester.options("cpahx", "lower"));
		tester.test("ア", "%u30a2", tester.options("cupu", "lower"));
		tester.test("ア", "U+30a2", tester.options("cp", "lower"));
		tester.test("ア", "0x30a2", tester.options("cp0x", "lower"));

		// non-BMP
		tester.test("😀", "\\ud83d\\ude00", tester.options("", "lower"));
		tester.test("😀", "\\ud83d\\ude00", tester.options("cubu", "lower"));
		tester.test("😀", "\\u{1f600}", tester.options("cpbu_bub", "lower"));
		tester.test("😀", "\\U0001f600", tester.options("cpbu_bU", "lower"));
		tester.test("😀", "\\u{1f600}", tester.options("cpbub", "lower"));
		tester.test("😀", "\\x{1f600}", tester.options("cpbxb", "lower"));
		tester.test("😀", "\\1f600", tester.options("cpb", "lower"));
		tester.test("😀", "&#x1f600;", tester.options("cpahx", "lower"));
		tester.test("😀", "%ud83d%ude00", tester.options("cupu", "lower"));
		tester.test("😀", "U+1f600", tester.options("cp", "lower"));
		tester.test("😀", "0x1f600", tester.options("cp0x", "lower"));

		// Mixed
		tester.test("Z😀ア", "\\u005a\\ud83d\\ude00\\u30a2", tester.options("", "lower"));
		tester.test("Z😀ア", "\\u005a\\ud83d\\ude00\\u30a2", tester.options("cubu", "lower"));
		tester.test("Z😀ア", "\\u005a\\u{1f600}\\u30a2", tester.options("cpbu_bub", "lower"));
		tester.test("Z😀ア", "\\u005a\\U0001f600\\u30a2", tester.options("cpbu_bU", "lower"));
		tester.test("Z😀ア", "\\u{5a}\\u{1f600}\\u{30a2}", tester.options("cpbub", "lower"));
		tester.test("Z😀ア", "\\x{5a}\\x{1f600}\\x{30a2}", tester.options("cpbxb", "lower"));
		tester.test("Z😀ア", "\\5a\\1f600\\30a2", tester.options("cpb", "lower"));
		tester.test("Z😀ア", "&#x5a;&#x1f600;&#x30a2;", tester.options("cpahx", "lower"));
		tester.test("Z😀ア", "%u005a%ud83d%ude00%u30a2", tester.options("cupu", "lower"));
		tester.test("Z😀ア", "U+005a U+1f600 U+30a2", tester.options("cp", "lower"));
		tester.test("Z😀ア", "0x5a 0x1f600 0x30a2", tester.options("cp0x", "lower"));
	}

	@Test
	public void test_name_upper() {
		// name ignores case

		// Blank
		tester.test("", "", tester.options("cnbNb", "upper"));

		// ASCII
		tester.test("A", "\\N{LATIN CAPITAL LETTER A}", tester.options("cnbNb", "upper"));

		// Symbol in name
		tester.test("<", "\\N{LESS-THAN SIGN}", tester.options("cnbNb", "upper"));
		tester.test("\n", "\\N{LINE FEED (LF)}", tester.options("cnbNb", "upper"));

		// Æ (U+00C6)
		tester.test("Æ", "\\N{LATIN CAPITAL LETTER AE}", tester.options("cnbNb", "upper"));

		// non-BMP
		tester.test("😀", "\\N{GRINNING FACE}", tester.options("cnbNb", "upper"));
	}

	@Test
	public void test_name_lower() {
		// name ignores case

		// Blank
		tester.test("", "", tester.options("cnbNb", "lower"));

		// ASCII
		tester.test("A", "\\N{LATIN CAPITAL LETTER A}", tester.options("cnbNb", "lower"));

		// Symbol in name
		tester.test("<", "\\N{LESS-THAN SIGN}", tester.options("cnbNb", "lower"));
		tester.test("\n", "\\N{LINE FEED (LF)}", tester.options("cnbNb", "lower"));

		// Æ (U+00C6)
		tester.test("Æ", "\\N{LATIN CAPITAL LETTER AE}", tester.options("cnbNb", "lower"));

		// non-BMP
		tester.test("😀", "\\N{GRINNING FACE}", tester.options("cnbNb", "lower"));
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// Lower bound (U+0)
		tester.testDecoder("\\u0", "\0"); // Incorrect format. (It should be 4 digits but parse lenient.)
		tester.testDecoder("\\u0000", "\0");
		tester.testDecoder("\\u{0}", "\0");
		tester.testDecoder("\\U0", "\0"); // Incorrect format. (It should be 8 digits but parse lenient.)
		tester.testDecoder("\\U00000000", "\0");
		tester.testDecoder("\\x{0}", "\0");
		tester.testDecoder("\\0", "\0");
		tester.testDecoder("\\0000", "\0");
		tester.testDecoder("&#x0;", "\0");
		tester.testDecoder("0x0", "\0");

		// Upper bound - BMP (U+FFFF)
		tester.testDecoder("\\uFFFF", "\uFFFF");
		tester.testDecoder("\\u{FFFF}", "\uFFFF");
		tester.testDecoder("\\UFFFF", "\uFFFF"); // Incorrect format. (It should be 8 digits but parse lenient.)
		tester.testDecoder("\\U0000FFFF", "\uFFFF");
		tester.testDecoder("\\x{FFFF}", "\uFFFF");
		tester.testDecoder("\\FFFF", "\uFFFF");
		tester.testDecoder("&#xFFFF;", "\uFFFF");
		tester.testDecoder("U+FFFF", "\uFFFF");
		tester.testDecoder("0xFFFF", "\uFFFF");

		// Upper bound - non-BMP (U+10FFFF)
		tester.testDecoder("\\uDBFF\\uDFFF", "\uDBFF\uDFFF");
		tester.testDecoder("\\u{10FFFF}", "\uDBFF\uDFFF");
		tester.testDecoder("\\U10FFFF", "\uDBFF\uDFFF"); // Incorrect format. (It should be 8 digits but parse lenient.)
		tester.testDecoder("\\U0010FFFF", "\uDBFF\uDFFF");
		tester.testDecoder("\\x{10FFFF}", "\uDBFF\uDFFF");
		tester.testDecoder("\\10FFFF", "\uDBFF\uDFFF");
		tester.testDecoder("&#x10FFFF;", "\uDBFF\uDFFF");
		tester.testDecoder("U+10FFFF", "\uDBFF\uDFFF");
		tester.testDecoder("0x10FFFF", "\uDBFF\uDFFF");

		// Out of range - Out of Unicode code point (0x110000
		tester.testDecoder("\\u{110000}", "\\u{110000}");
		tester.testDecoder("\\U00110000", "\\U00110000");
		tester.testDecoder("\\x{110000}", "\\x{110000}");
		tester.testDecoder("\\110000", "\\110000");
		tester.testDecoder("&#x110000;", "&#x110000;");
		tester.testDecoder("U+110000", "U+110000");
		tester.testDecoder("0x110000", "0x110000");

		// Out of range - 6 digits maximum (0xFFFFFF)
		tester.testDecoder("\\u{FFFFFF}", "\\u{FFFFFF}");
		tester.testDecoder("\\UFFFFFF", "\\UFFFFFF"); // Incorrect format. (It should be 8 digits but parse lenient.)
		tester.testDecoder("\\U00FFFFFF", "\\U00FFFFFF");
		tester.testDecoder("\\x{FFFFFF}", "\\x{FFFFFF}");
		tester.testDecoder("\\FFFFFF", "\\FFFFFF");
		tester.testDecoder("&#xFFFFFF;", "&#xFFFFFF;");
		tester.testDecoder("U+FFFFFF", "U+FFFFFF");
		tester.testDecoder("0xFFFFFF", "0xFFFFFF");

		// Out of range - 8 digits maximum (0xFFFFFFFF)
		tester.testDecoder("\\u{FFFFFFFF}", "\\u{FFFFFFFF}");
		tester.testDecoder("\\UFFFFFFFF", "\\UFFFFFFFF");
		tester.testDecoder("\\x{FFFFFFFF}", "\\x{FFFFFFFF}");
		tester.testDecoder("\\FFFFFFFF", "\\FFFFFFFF");
		tester.testDecoder("&#xFFFFFFFF;", "&#xFFFFFFFF;");
		tester.testDecoder("U+FFFFFFFF", "U+FFFFFFFF");
		tester.testDecoder("0xFFFFFFFF", "0xFFFFFFFF");

		// Unknown name
		tester.testDecoder("\\N{XXXXXXXX}", "\\N{XXXXXXXX}");

		// Unsupported character
		tester.testDecoder("Z😀ア", "Z😀ア");

		// Illegal format
		tester.testDecoder("\\", "\\");
		tester.testDecoder("\\u", "\\u");
		tester.testDecoder("\\U", "\\U");
		tester.testDecoder("\\x", "\\x");
		tester.testDecoder("\\N", "\\N");
		tester.testDecoder("\\z", "\\z");
		tester.testDecoder("&", "&");
		tester.testDecoder("&#", "&#");
		tester.testDecoder("&#x", "&#x");
		tester.testDecoder("%", "%");
		tester.testDecoder("%u", "%u");
		tester.testDecoder("%z", "%z");
		tester.testDecoder("U", "U");
		tester.testDecoder("U+", "U+");
		tester.testDecoder("U+z", "U+z");
		tester.testDecoder("0", "0");
		tester.testDecoder("0x", "0x");
		tester.testDecoder("0xz", "0xz");

		// Escaped
		tester.testDecoder("\\\\u005A", "\\u005A");
		tester.testDecoder("\\\\\\u005A", "\\Z");
		tester.testDecoder("\\\\\\\\u005A", "\\\\u005A");
		tester.testDecoder("\\\\\\\\\\u005A", "\\\\Z");
		tester.testDecoder("%%u005A", "%Z");
		tester.testDecoder("%%%u005A", "%%Z");

		// Mixed
		tester.testDecoder("\\u005a\\u{5a}\\x{5a}\\5a&#x5a;%u005a0x5aU+005a\\N{LATIN CAPITAL LETTER Z}\\uD83D\\uDE00\\x{1f600}\\1f600&#x1f600;\\u{1f600}\\U0001f600%uD83D%uDE000x1f600U+1f600\\N{GRINNING FACE}", "ZZZZZZZZZ😀😀😀😀😀😀😀😀😀😀");
		tester.testDecoder("\\N{GRINNING FACE}0x1f600U+1f600%uD83D%uDE00\\U0001f600\\u{1f600}&#x1f600;\\1f600\\x{1f600}\\uD83D\\uDE000x5a\\N{LATIN CAPITAL LETTER Z}U+005a%u005a&#x5a;\\5a\\x{5a}\\u{5a}\\u005a", "😀😀😀😀😀😀😀😀😀😀ZZZZZZZZZ");

		// Mixed (with unsupported character)
		tester.testDecoder("X\\u005aX\\u{5a}X\\x{5a}X\\5aX&#x5a;X%u005aX0x5aXU+005aX\\N{LATIN CAPITAL LETTER Z}X\\uD83D\\uDE00X\\x{1f600}X\\1f600X&#x1f600;X\\u{1f600}X\\U0001f600X%uD83D%uDE00X0x1f600XU+1f600X\\N{GRINNING FACE}X", "XZXZXZXZXZXZXZXZXZX😀X😀X😀X😀X😀X😀X😀X😀X😀X😀X");
		tester.testDecoder("X\\N{GRINNING FACE}XU+1f600X0x1f600X%uD83D%uDE00X\\U0001f600X\\u{1f600}X&#x1f600;X\\1f600X\\x{1f600}X\\uD83D\\uDE00X\\N{LATIN CAPITAL LETTER Z}XU+005aX0x5aX%u005aX&#x5a;X\\5aX\\x{5a}X\\u{5a}X\\u005aX", "X😀X😀X😀X😀X😀X😀X😀X😀X😀X😀XZXZXZXZXZXZXZXZXZX");

		// Mixed (with white space)
		tester.testDecoder("  \\u005a  \\u{5a}  \\x{5a}  \\5a  &#x5a;  %u005a  0x5a  U+005a  \\N{LATIN CAPITAL LETTER Z}  \\uD83D\\uDE00  \\x{1f600}  \\1f600  &#x1f600;  \\u{1f600}  \\U0001f600  %uD83D%uDE00  0x1f600  U+1f600  \\N{GRINNING FACE}  ", "  Z  Z  Z  Z Z  Z  Z Z Z  😀  😀  😀 😀  😀  😀  😀  😀 😀 😀  "); // Spaces will be removed after 0x and U+. One space will be removed after \.
		tester.testDecoder("  \\N{GRINNING FACE}  U+1f600  0x1f600  %uD83D%uDE00  \\U0001f600  \\u{1f600}  &#x1f600;  \\1f600  \\x{1f600}  \\uD83D\\uDE00  \\N{LATIN CAPITAL LETTER Z}  U+005a  0x5a  %u005a  &#x5a;  \\5a  \\x{5a}  \\u{5a}  \\u005a  ", "  😀  😀 😀 😀  😀  😀  😀  😀 😀  😀  Z  Z Z Z  Z  Z Z  Z  Z  "); // Spaces will be removed after 0x and U+. One space will be removed after \.
	}
}
