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

import static com.dencode.logic.util.CharWidthUtils.Type.ALPHABET;
import static com.dencode.logic.util.CharWidthUtils.Type.KANA;
import static com.dencode.logic.util.CharWidthUtils.Type.NUMBER;
import static com.dencode.logic.util.CharWidthUtils.Type.SPACE;
import static com.dencode.logic.util.CharWidthUtils.Type.SYMBOL;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

import java.util.EnumSet;

import org.junit.jupiter.api.Test;

public class CharWidthUtilsTest {

	@Test
	public void test_toHalfWidth() {
		assertNull(CharWidthUtils.toHalfWidth(null));
		assertEquals("", CharWidthUtils.toHalfWidth(""));
		assertEquals("AZaz09 !?:#~", CharWidthUtils.toHalfWidth("ＡＺａｚ０９　！？：＃～"));
		assertEquals("ｶﾞｷﾞｸﾞｹﾞｺﾞﾊﾟﾋﾟﾌﾟﾍﾟﾎﾟ", CharWidthUtils.toHalfWidth("ガギグゲゴパピプペポ"));
		assertEquals("ｱｲｳｴｵ｡､･", CharWidthUtils.toHalfWidth("アイウエオ。、・"));
		assertEquals("ﾡﾢￂￚ", CharWidthUtils.toHalfWidth("ㄱㄲㅏㅡ"));
		assertEquals("¢£¥￨￩￪￫￬", CharWidthUtils.toHalfWidth("￠￡￥│←↑→↓"));
	}

	@Test
	public void test_toHalfWidth_selectedTypes() {
		assertEquals("ABC１２３！　ア", CharWidthUtils.toHalfWidth("ＡＢＣ１２３！　ア", EnumSet.of(ALPHABET)));
		assertEquals("ＡＢＣ123！　ア", CharWidthUtils.toHalfWidth("ＡＢＣ１２３！　ア", EnumSet.of(NUMBER)));
		assertEquals("ＡＢＣ１２３!　ア", CharWidthUtils.toHalfWidth("ＡＢＣ１２３！　ア", EnumSet.of(SYMBOL)));
		assertEquals("ＡＢＣ１２３！ ア", CharWidthUtils.toHalfWidth("ＡＢＣ１２３！　ア", EnumSet.of(SPACE)));
		assertEquals("ＡＢＣ１２３！　ｱ", CharWidthUtils.toHalfWidth("ＡＢＣ１２３！　ア", EnumSet.of(KANA)));
	}

	@Test
	public void test_toFullWidth() {
		assertNull(CharWidthUtils.toFullWidth(null));
		assertEquals("", CharWidthUtils.toFullWidth(""));
		assertEquals("ＡＺａｚ０９　！？：＃～", CharWidthUtils.toFullWidth("AZaz09 !?:#~"));
		assertEquals("ガギグゲゴパピプペポ", CharWidthUtils.toFullWidth("ｶﾞｷﾞｸﾞｹﾞｺﾞﾊﾟﾋﾟﾌﾟﾍﾟﾎﾟ"));
		assertEquals("アイウエオ。、・", CharWidthUtils.toFullWidth("ｱｲｳｴｵ｡､･"));
		assertEquals("ㄱㄲㅏㅡ", CharWidthUtils.toFullWidth("ﾡﾢￂￚ"));
		assertEquals("￠￡￥│←↑→↓", CharWidthUtils.toFullWidth("¢£¥￨￩￪￫￬"));
	}

	@Test
	public void test_toFullWidth_selectedTypes() {
		assertEquals("ＡＢＣ123! ア", CharWidthUtils.toFullWidth("ABC123! ア", EnumSet.of(ALPHABET)));
		assertEquals("ABC１２３! ア", CharWidthUtils.toFullWidth("ABC123! ア", EnumSet.of(NUMBER)));
		assertEquals("ABC123！ ア", CharWidthUtils.toFullWidth("ABC123! ア", EnumSet.of(SYMBOL)));
		assertEquals("ABC123!　ア", CharWidthUtils.toFullWidth("ABC123! ア", EnumSet.of(SPACE)));
		assertEquals("ABC123! ア", CharWidthUtils.toFullWidth("ABC123! ア", EnumSet.of(KANA)));
	}
}
