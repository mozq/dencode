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

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.Test;

import com.dencode.logic.DencodeMapper;

public class StringUnicodeStyledTextDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringUnicodeStyledTextDencoder::encStrUnicodeStyledText,
			"string.unicode-styled-text.style");

	@Test
	public void test() {
		// Blank
		tester.testEncoder("", "");

		// No style
		tester.testEncoder("AZaz09", "AZaz09", tester.options(""));
		tester.testEncoder("AZaz09", "AZaz09", tester.options("unknown"));

		// Styles
		tester.testEncoder("AZaz09", "𝖠𝖹𝖺𝗓𝟢𝟫", tester.options("sansserif"));
		tester.testEncoder("AZaz09", "𝗔𝗭𝗮𝘇𝟬𝟵", tester.options("sansserif-bold"));
		tester.testEncoder("AZaz09", "𝘈𝘡𝘢𝘻09", tester.options("sansserif-italic"));
		tester.testEncoder("AZaz09", "𝘼𝙕𝙖𝙯09", tester.options("sansserif-bold-italic"));
		tester.testEncoder("AZaz09", "𝐀𝐙𝐚𝐳𝟎𝟗", tester.options("serif-bold"));
		tester.testEncoder("AZaz09", "𝐴𝑍𝑎𝑧09", tester.options("serif-italic"));
		tester.testEncoder("AZaz09", "𝑨𝒁𝒂𝒛09", tester.options("serif-bold-italic"));
		tester.testEncoder("AZaz09", "𝒜𝒵𝒶𝓏09", tester.options("script"));
		tester.testEncoder("AZaz09", "𝓐𝓩𝓪𝔃09", tester.options("script-bold"));
		tester.testEncoder("AZaz09", "𝔄ℨ𝔞𝔷09", tester.options("fraktur"));
		tester.testEncoder("AZaz09", "𝕬𝖅𝖆𝖟09", tester.options("fraktur-bold"));
		tester.testEncoder("AZaz09", "𝔸ℤ𝕒𝕫𝟘𝟡", tester.options("doublestruck"));
		tester.testEncoder("AZaz09", "𝙰𝚉𝚊𝚣𝟶𝟿", tester.options("monospace"));
		tester.testEncoder("AZaz09", "AZᴀᴢ09", tester.options("smallcapital"));
		tester.testEncoder("AZaz09", "ⒶⓏⓐⓩ⓪⑨", tester.options("circled"));
		tester.testEncoder("AZaz09", "🅐🅩🅐🅩⓿❾", tester.options("negative-circled"));
		tester.testEncoder("AZaz09", "🄰🅉🄰🅉09", tester.options("squared"));
		tester.testEncoder("AZaz09", "🅰🆉🅰🆉09", tester.options("negative-squared"));

		// Symbols and unsupported characters are unchanged
		tester.testEncoder("Hello, world!", "ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹!", tester.options("script"));
		tester.testEncoder("漢字😀 !?", "漢字😀 !?", tester.options("serif-bold"));
	}
}
