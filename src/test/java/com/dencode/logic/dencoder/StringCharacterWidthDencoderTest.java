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

public class StringCharacterWidthDencoderTest {
	private final DencoderTester halfWidthTester = new DencoderTester(
			StringCharacterWidthDencoder::encStrHalfWidth);
	private final DencoderTester fullWidthTester = new DencoderTester(
			StringCharacterWidthDencoder::encStrFullWidth);

	@Test
	public void test_halfWidth() {
		// Blank
		halfWidthTester.testEncoder("", "");

		// ASCII
		halfWidthTester.testEncoder("Ｈｅｌｌｏ，　ｗｏｒｌｄ！", "Hello, world!");
		halfWidthTester.testEncoder("ＡＢＣａｂｃ０１２", "ABCabc012");
		halfWidthTester.testEncoder("！＂＃＄％＆＇（）＊＋，－．／", "!\"#$%&'()*+,-./");
		halfWidthTester.testEncoder("：；＜＝＞？＠［＼］＾＿｀｛｜｝～", ":;<=>?@[\\]^_`{|}~");

		// Symbols
		halfWidthTester.testEncoder("￠￡￣￤￢￥￦", "¢£¯¦¬¥₩");
		halfWidthTester.testEncoder("│←↑→↓■○", "￨￩￪￫￬￭￮");

		// Kana
		halfWidthTester.testEncoder("。、「」・ヲァィゥェォャュョッー", "｡､｢｣･ｦｧｨｩｪｫｬｭｮｯｰ");
		halfWidthTester.testEncoder("アイウエオカキクケコサシスセソ", "ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿ");
		halfWidthTester.testEncoder("ガギグゲゴザジズゼゾダヂヅデド", "ｶﾞｷﾞｸﾞｹﾞｺﾞｻﾞｼﾞｽﾞｾﾞｿﾞﾀﾞﾁﾞﾂﾞﾃﾞﾄﾞ");
		halfWidthTester.testEncoder("バビブベボヴパピプペポ゛゜", "ﾊﾞﾋﾞﾌﾞﾍﾞﾎﾞｳﾞﾊﾟﾋﾟﾌﾟﾍﾟﾎﾟﾞﾟ");

		// Hangul
		halfWidthTester.testEncoder("ㅤㄱㄴㄷㄹㅏㅑㅓㅕㅡㅣ", "ﾠﾡﾤﾧﾩￂￄￆￊￚￜ");

		// Unsupported characters are unchanged
		halfWidthTester.testEncoder("漢字😀", "漢字😀");
	}

	@Test
	public void test_fullWidth() {
		// Blank
		fullWidthTester.testEncoder("", "");

		// ASCII
		fullWidthTester.testEncoder("Hello, world!", "Ｈｅｌｌｏ，　ｗｏｒｌｄ！");
		fullWidthTester.testEncoder("ABCabc012", "ＡＢＣａｂｃ０１２");
		fullWidthTester.testEncoder("!\"#$%&'()*+,-./", "！＂＃＄％＆＇（）＊＋，－．／");
		fullWidthTester.testEncoder(":;<=>?@[\\]^_`{|}~", "：；＜＝＞？＠［＼］＾＿｀｛｜｝～");

		// Symbols
		fullWidthTester.testEncoder("¢£¯¦¬¥₩", "￠￡￣￤￢￥￦");
		fullWidthTester.testEncoder("￨￩￪￫￬￭￮", "│←↑→↓■○");

		// Kana
		fullWidthTester.testEncoder("｡､｢｣･ｦｧｨｩｪｫｬｭｮｯｰ", "。、「」・ヲァィゥェォャュョッー");
		fullWidthTester.testEncoder("ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿ", "アイウエオカキクケコサシスセソ");
		fullWidthTester.testEncoder("ｶﾞｷﾞｸﾞｹﾞｺﾞｻﾞｼﾞｽﾞｾﾞｿﾞﾀﾞﾁﾞﾂﾞﾃﾞﾄﾞ", "ガギグゲゴザジズゼゾダヂヅデド");
		fullWidthTester.testEncoder("ﾊﾞﾋﾞﾌﾞﾍﾞﾎﾞｳﾞﾊﾟﾋﾟﾌﾟﾍﾟﾎﾟﾞﾟ", "バビブベボヴパピプペポ゙゚");

		// Hangul
		fullWidthTester.testEncoder("ﾠﾡﾤﾧﾩￂￄￆￊￚￜ", "ㅤㄱㄴㄷㄹㅏㅑㅓㅕㅡㅣ");

		// Unsupported characters are unchanged
		fullWidthTester.testEncoder("漢字😀", "漢字😀");
	}
}
