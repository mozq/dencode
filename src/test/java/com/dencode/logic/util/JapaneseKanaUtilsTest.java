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

import static com.dencode.logic.util.JapaneseKanaUtils.Script.HIRAGANA;
import static com.dencode.logic.util.JapaneseKanaUtils.Script.KATAKANA;
import static com.dencode.logic.util.JapaneseKanaUtils.Script.ROMAJI_HEPBURN;
import static com.dencode.logic.util.JapaneseKanaUtils.Script.ROMAJI_KUNREI;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.Test;

public class JapaneseKanaUtilsTest {

	@Test
	public void test_convertToHiragana() {
		assertNull(JapaneseKanaUtils.convert(null, HIRAGANA));
		assertEquals("", JapaneseKanaUtils.convert("", HIRAGANA));
		assertEquals("あいうえお", JapaneseKanaUtils.convert("アイウエオ", HIRAGANA));
		assertEquals("がぎぐげごぱぴぷぺぽ", JapaneseKanaUtils.convert("ガギグゲゴパピプペポ", HIRAGANA));
		assertEquals("すーぱー", JapaneseKanaUtils.convert("スーパー", HIRAGANA));
		assertEquals("さくら", JapaneseKanaUtils.convert("sakura", HIRAGANA));
		assertEquals("こんにちは", JapaneseKanaUtils.convert("konnichiha", HIRAGANA));
		assertEquals("んあ", JapaneseKanaUtils.convert("n'a", HIRAGANA));
		assertEquals("んあ", JapaneseKanaUtils.convert("ｎ＇ａ", HIRAGANA));
		assertEquals("さくら、はな。", JapaneseKanaUtils.convert("sakura, hana.", HIRAGANA));
		assertEquals("さくら、はな。", JapaneseKanaUtils.convert("ｓａｋｕｒａ，　ｈａｎａ．", HIRAGANA));
		assertEquals("computer", JapaneseKanaUtils.convert("computer", HIRAGANA));
		assertEquals("ｃｏｍｐｕｔｅｒ", JapaneseKanaUtils.convert("ｃｏｍｐｕｔｅｒ", HIRAGANA));
	}

	@Test
	public void test_convertToKatakana() {
		assertEquals("アイウエオ", JapaneseKanaUtils.convert("あいうえお", KATAKANA));
		assertEquals("ガギグゲゴパピプペポ", JapaneseKanaUtils.convert("がぎぐげごぱぴぷぺぽ", KATAKANA));
		assertEquals("ヤマサクラ", JapaneseKanaUtils.convert("やまsakura", KATAKANA));
		assertEquals("ヤマ サクラ", JapaneseKanaUtils.convert("やま sakura", KATAKANA));
		assertEquals("サクラ、ハナ。", JapaneseKanaUtils.convert("sakura, hana.", KATAKANA));
	}

	@Test
	public void test_convertToRomajiHepburn() {
		assertEquals("aiueo", JapaneseKanaUtils.convert("あいうえお", ROMAJI_HEPBURN));
		assertEquals("shi chi tsu fu", JapaneseKanaUtils.convert("si ti tu hu", ROMAJI_HEPBURN));
		assertEquals("shinbun", JapaneseKanaUtils.convert("しんぶん", ROMAJI_HEPBURN));
		assertEquals("n'a n'ya", JapaneseKanaUtils.convert("んあ んや", ROMAJI_HEPBURN));
		assertEquals("gakkou", JapaneseKanaUtils.convert("がっこう", ROMAJI_HEPBURN));
		assertEquals("matcha", JapaneseKanaUtils.convert("まっちゃ", ROMAJI_HEPBURN));
		assertEquals("toukyou", JapaneseKanaUtils.convert("とうきょう", ROMAJI_HEPBURN));
		assertEquals("yama, kawa.", JapaneseKanaUtils.convert("やま、かわ。", ROMAJI_HEPBURN));
		assertEquals("yama, kawa.", JapaneseKanaUtils.convert("やま、　かわ。", ROMAJI_HEPBURN));
		assertEquals("yama,\nkawa.", JapaneseKanaUtils.convert("やま、\nかわ。", ROMAJI_HEPBURN));
		assertEquals("yama. kawa, sora", JapaneseKanaUtils.convert("やま．　かわ， sora", ROMAJI_HEPBURN));
		assertEquals("1,000 3.14", JapaneseKanaUtils.convert("1，000 3．14", ROMAJI_HEPBURN));
		assertEquals("suupaa", JapaneseKanaUtils.convert("スーパー", ROMAJI_HEPBURN));
		assertEquals("fa fi fe fo ti di che je wi we wo va vi vu ve vo", JapaneseKanaUtils.convert("ファ フィ フェ フォ ティ ディ チェ ジェ ウィ ウェ ウォ ヴァ ヴィ ヴ ヴェ ヴォ", ROMAJI_HEPBURN));
		assertEquals("xa xi xu xe xo xya xyu xyo xtsu", JapaneseKanaUtils.convert("ぁ ぃ ぅ ぇ ぉ ゃ ゅ ょ っ", ROMAJI_HEPBURN));
	}

	@Test
	public void test_convertToRomajiKunrei() {
		assertEquals("si ti tu hu zi", JapaneseKanaUtils.convert("し ち つ ふ じ", ROMAJI_KUNREI));
		assertEquals("si ti tu hu", JapaneseKanaUtils.convert("shi chi tsu fu", ROMAJI_KUNREI));
		assertEquals("sya tya zya", JapaneseKanaUtils.convert("しゃ ちゃ じゃ", ROMAJI_KUNREI));
		assertEquals("gakkou", JapaneseKanaUtils.convert("がっこう", ROMAJI_KUNREI));
	}

	@Test
	public void test_romajiAliases() {
		assertEquals("し ち つ ふ", JapaneseKanaUtils.convert("si ti tu hu", HIRAGANA));
		assertEquals("シ チ ツ フ", JapaneseKanaUtils.convert("shi chi tsu fu", KATAKANA));
	}

	@Test
	public void test_combiningDakuten() {
		assertEquals("がっこう", JapaneseKanaUtils.convert("がっこう", HIRAGANA));
		assertEquals("パーティー", JapaneseKanaUtils.convert("パーティー", KATAKANA));
		assertEquals("gakkou", JapaneseKanaUtils.convert("がっこう", ROMAJI_HEPBURN));
		assertEquals("paatii", JapaneseKanaUtils.convert("パーティー", ROMAJI_HEPBURN));
	}

	@Test
	public void test_unsupportedCharactersAreUnchanged() {
		assertEquals("漢字😀abc", JapaneseKanaUtils.convert("漢字😀abc", HIRAGANA));
		assertEquals("ｶﾞ", JapaneseKanaUtils.convert("ｶﾞ", HIRAGANA));
		assertEquals("hello さくら", JapaneseKanaUtils.convert("hello sakura", HIRAGANA));
		assertEquals("1,000えん 3.14 example.com hello, さくら。", JapaneseKanaUtils.convert("1,000en 3.14 example.com hello, sakura.", HIRAGANA));
	}
}
