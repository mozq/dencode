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

public class CipherAffineDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherAffineDencoder::encCipherAffine,
			CipherAffineDencoder::decCipherAffine,
			"cipher.affine.a",
			"cipher.affine.b");

	@Test
	public void test_passthrough() {
		// Blank
		tester.test("", "", tester.options(1, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(1, 0));
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(1, 0));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options(1, 0));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options(1, 0));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", tester.options(1, 0));

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", tester.options(1, 0));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", tester.options(1, 0));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "абвгдежзийклмнопрстуфхцчшщъыьэюя", tester.options(1, 0));

		// Unsupported characters
		tester.test(" ", " ", tester.options(1, 0));
		tester.test("!", "!", tester.options(1, 0));
		tester.test("!a!", "!a!", tester.options(1, 0));
	}

	@Test
	public void test_caesar_n3() {
		// Blank
		tester.test("", "", tester.options(1, -3));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "XYZABCDEFGHIJKLMNOPQRSTUVW", tester.options(1, -3));
		tester.test("abcdefghijklmnopqrstuvwxyz", "xyzabcdefghijklmnopqrstuvw", tester.options(1, -3));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＸＹＺＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷ", tester.options(1, -3));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｘｙｚａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗ", tester.options(1, -3));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "をんゔぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑ", tester.options(1, -3));

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ヲンヴァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱ", tester.options(1, -3));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "ЭЮЯАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬ", tester.options(1, -3));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "эюяабвгдежзийклмнопрстуфхцчшщъыь", tester.options(1, -3));

		// Unsupported characters
		tester.test(" ", " ", tester.options(1, -3));
		tester.test("!", "!", tester.options(1, -3));
		tester.test("!a!", "!x!", tester.options(1, -3));
	}

	@Test
	public void test_caesar_p3() {
		// Blank
		tester.test("", "", tester.options(1, 3));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "DEFGHIJKLMNOPQRSTUVWXYZABC", tester.options(1, 3));
		tester.test("abcdefghijklmnopqrstuvwxyz", "defghijklmnopqrstuvwxyzabc", tester.options(1, 3));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺＡＢＣ", tester.options(1, 3));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚａｂｃ", tester.options(1, 3));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "いぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔぁあぃ", tester.options(1, 3));

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "イゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴァアィ", tester.options(1, 3));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "ГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯАБВ", tester.options(1, 3));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "гдежзийклмнопрстуфхцчшщъыьэюяабв", tester.options(1, 3));

		// Unsupported characters
		tester.test(" ", " ", tester.options(1, 3));
		tester.test("!", "!", tester.options(1, 3));
		tester.test("!a!", "!d!", tester.options(1, 3));
	}

	@Test
	public void test_atabsh() {
		// Blank
		tester.test("", "", tester.options(-1, -1));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ZYXWVUTSRQPONMLKJIHGFEDCBA", tester.options(-1, -1));
		tester.test("abcdefghijklmnopqrstuvwxyz", "zyxwvutsrqponmlkjihgfedcba", tester.options(-1, -1));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＺＹＸＷＶＵＴＳＲＱＰＯＮＭＬＫＪＩＨＧＦＥＤＣＢＡ", tester.options(-1, -1));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｚｙｘｗｖｕｔｓｒｑｐｏｎｍｌｋｊｉｈｇｆｅｄｃｂａ", tester.options(-1, -1));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ゔんをゑゐわゎろれるりらよょゆゅやゃもめむみまぽぼほぺべへぷぶふぴびひぱばはのねぬになどとでてづつっぢちだたぞそぜせずすじしざさごこげけぐくぎきがかおぉえぇうぅいぃあぁ", tester.options(-1, -1));

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ヴンヲヱヰワヮロレルリラヨョユュヤャモメムミマポボホペベヘプブフピビヒパバハノネヌニナドトデテヅツッヂチダタゾソゼセズスジシザサゴコゲケグクギキガカオォエェウゥイィアァ", tester.options(-1, -1));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "ЯЮЭЬЫЪЩШЧЦХФУТСРПОНМЛКЙИЗЖЕДГВБА", tester.options(-1, -1));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "яюэьыъщшчцхфутсрпонмлкйизжедгвба", tester.options(-1, -1));

		// Unsupported characters
		tester.test(" ", " ", tester.options(-1, -1));
		tester.test("!", "!", tester.options(-1, -1));
		tester.test("!a!", "!z!", tester.options(-1, -1));
	}

	@Test
	public void test_an1_b0() {
		// Blank
		tester.test("", "", tester.options(-1, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "AZYXWVUTSRQPONMLKJIHGFEDCB", tester.options(-1, 0));
		tester.test("abcdefghijklmnopqrstuvwxyz", "azyxwvutsrqponmlkjihgfedcb", tester.options(-1, 0));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＺＹＸＷＶＵＴＳＲＱＰＯＮＭＬＫＪＩＨＧＦＥＤＣＢ", tester.options(-1, 0));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｚｙｘｗｖｕｔｓｒｑｐｏｎｍｌｋｊｉｈｇｆｅｄｃｂ", tester.options(-1, 0));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁゔんをゑゐわゎろれるりらよょゆゅやゃもめむみまぽぼほぺべへぷぶふぴびひぱばはのねぬになどとでてづつっぢちだたぞそぜせずすじしざさごこげけぐくぎきがかおぉえぇうぅいぃあ", tester.options(-1, 0));

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァヴンヲヱヰワヮロレルリラヨョユュヤャモメムミマポボホペベヘプブフピビヒパバハノネヌニナドトデテヅツッヂチダタゾソゼセズスジシザサゴコゲケグクギキガカオォエェウゥイィア", tester.options(-1, 0));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АЯЮЭЬЫЪЩШЧЦХФУТСРПОНМЛКЙИЗЖЕДГВБ", tester.options(-1, 0));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "аяюэьыъщшчцхфутсрпонмлкйизжедгвб", tester.options(-1, 0));

		// Unsupported characters
		tester.test(" ", " ", tester.options(-1, 0));
		tester.test("!", "!", tester.options(-1, 0));
		tester.test("!a!", "!a!", tester.options(-1, 0));
	}

	@Test
	public void test_ap2_b0() {
		// Blank
		tester.test("", "", tester.options(24, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(2, 0)); // ** not Co-prime **
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(2, 0)); // ** not Co-prime **

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options(2, 0)); // ** not Co-prime **
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options(2, 0)); // ** not Co-prime **

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", tester.options(2, 0)); // ** not Co-prime **

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", tester.options(2, 0)); // ** not Co-prime **

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", tester.options(2, 0)); // ** not Co-prime **
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "абвгдежзийклмнопрстуфхцчшщъыьэюя", tester.options(2, 0)); // ** not Co-prime **

		// Unsupported characters
		tester.test(" ", " ", tester.options(2, 0));
		tester.test("!", "!", tester.options(2, 0));
		tester.test("!a!", "!a!", tester.options(2, 0)); // ** not Co-prime **
	}

	@Test
	public void test_an2_b0() {
		// Blank
		tester.test("", "", tester.options(-2, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(-2, 0)); // ** not Co-prime **
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(-2, 0)); // ** not Co-prime **

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options(-2, 0)); // ** not Co-prime **
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options(-2, 0)); // ** not Co-prime **

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", tester.options(-2, 0)); // ** not Co-prime **

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", tester.options(-2, 0)); // ** not Co-prime **

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", tester.options(-2, 0)); // ** not Co-prime **
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "абвгдежзийклмнопрстуфхцчшщъыьэюя", tester.options(-2, 0)); // ** not Co-prime **

		// Unsupported characters
		tester.test(" ", " ", tester.options(-2, 0));
		tester.test("!", "!", tester.options(-2, 0));
		tester.test("!a!", "!a!", tester.options(-2, 0)); // ** not Co-prime **
	}

	@Test
	public void test_ap3_b0() {
		// Blank
		tester.test("", "", tester.options(3, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ADGJMPSVYBEHKNQTWZCFILORUX", tester.options(3, 0));
		tester.test("abcdefghijklmnopqrstuvwxyz", "adgjmpsvybehknqtwzcfilorux", tester.options(3, 0));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＤＧＪＭＰＳＶＹＢＥＨＫＮＱＴＷＺＣＦＩＬＯＲＵＸ", tester.options(3, 0));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｄｇｊｍｐｓｖｙｂｅｈｋｎｑｔｗｚｃｆｉｌｏｒｕｘ", tester.options(3, 0));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", tester.options(3, 0)); // ** not Co-prime **

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", tester.options(3, 0)); // ** not Co-prime **

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АГЖЙМПТХШЫЮБДЗКНРУЦЩЬЯВЕИЛОСФЧЪЭ", tester.options(3, 0));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "агжймптхшыюбдзкнруцщьявеилосфчъэ", tester.options(3, 0));

		// Unsupported characters
		tester.test(" ", " ", tester.options(3, 0));
		tester.test("!", "!", tester.options(3, 0));
		tester.test("!a!", "!a!", tester.options(3, 0));
	}

	@Test
	public void test_an3_b0() {
		// Blank
		tester.test("", "", tester.options(-3, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "AXUROLIFCZWTQNKHEBYVSPMJGD", tester.options(-3, 0));
		tester.test("abcdefghijklmnopqrstuvwxyz", "axurolifczwtqnkhebyvspmjgd", tester.options(-3, 0));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＸＵＲＯＬＩＦＣＺＷＴＱＮＫＨＥＢＹＶＳＰＭＪＧＤ", tester.options(-3, 0));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｘｕｒｏｌｉｆｃｚｗｔｑｎｋｈｅｂｙｖｓｐｍｊｇｄ", tester.options(-3, 0));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", tester.options(-3, 0)); // ** not Co-prime **

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", tester.options(-3, 0)); // ** not Co-prime **

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АЭЪЧФСОЛИЕВЯЬЩЦУРНКЗДБЮЫШХТПМЙЖГ", tester.options(-3, 0));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "аэъчфсолиевяьщцурнкздбюышхтпмйжг", tester.options(-3, 0));

		// Unsupported characters
		tester.test(" ", " ", tester.options(-3, 0));
		tester.test("!", "!", tester.options(-3, 0));
		tester.test("!a!", "!a!", tester.options(-3, 0));
	}

	@Test
	public void test_ap24_b0() {
		// Blank
		tester.test("", "", tester.options(24, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(24, 0)); // ** not Co-prime **
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(24, 0)); // ** not Co-prime **

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options(24, 0)); // ** not Co-prime **
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options(24, 0)); // ** not Co-prime **

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", tester.options(24, 0)); // ** not Co-prime **

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", tester.options(24, 0)); // ** not Co-prime **

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", tester.options(24, 0)); // ** not Co-prime **
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "абвгдежзийклмнопрстуфхцчшщъыьэюя", tester.options(24, 0)); // ** not Co-prime **

		// Unsupported characters
		tester.test(" ", " ", tester.options(24, 0));
		tester.test("!", "!", tester.options(24, 0));
		tester.test("!a!", "!a!", tester.options(24, 0)); // ** not Co-prime **
	}

	@Test
	public void test_an24_b0() {
		// Blank
		tester.test("", "", tester.options(-24, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(-24, 0)); // ** not Co-prime **
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(-24, 0)); // ** not Co-prime **

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options(-24, 0)); // ** not Co-prime **
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options(-24, 0)); // ** not Co-prime **

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", tester.options(-24, 0)); // ** not Co-prime **

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", tester.options(-24, 0)); // ** not Co-prime **

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", tester.options(-24, 0)); // ** not Co-prime **
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "абвгдежзийклмнопрстуфхцчшщъыьэюя", tester.options(-24, 0)); // ** not Co-prime **

		// Unsupported characters
		tester.test(" ", " ", tester.options(-24, 0));
		tester.test("!", "!", tester.options(-24, 0));
		tester.test("!a!", "!a!", tester.options(-24, 0)); // ** not Co-prime **
	}

	@Test
	public void test_ap25_b0() {
		// Blank
		tester.test("", "", tester.options(25, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "AZYXWVUTSRQPONMLKJIHGFEDCB", tester.options(25, 0));
		tester.test("abcdefghijklmnopqrstuvwxyz", "azyxwvutsrqponmlkjihgfedcb", tester.options(25, 0));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＺＹＸＷＶＵＴＳＲＱＰＯＮＭＬＫＪＩＨＧＦＥＤＣＢ", tester.options(25, 0));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｚｙｘｗｖｕｔｓｒｑｐｏｎｍｌｋｊｉｈｇｆｅｄｃｂ", tester.options(25, 0));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁずびれけなゃえちぺんじぱりくとめうたへゑざはよきてみいそぶわごねゆかつぽあせぴろげにやぉぢほゔすひるぐどもぇだべをしばらぎでむぅぞぷゐさのょがづまぃぜふゎこぬゅおっぼ", tester.options(25, 0));

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァズビレケナャエチペンジパリクトメウタヘヱザハヨキテミイソブワゴネユカツポアセピロゲニヤォヂホヴスヒルグドモェダベヲシバラギデムゥゾプヰサノョガヅマィゼフヮコヌュオッボ", tester.options(25, 0));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АЩТЛДЭЦПИБЪУМЕЮЧРЙВЫФНЖЯШСКГЬХОЗ", tester.options(25, 0));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "ащтлдэцпибъумеючрйвыфнжяшскгьхоз", tester.options(25, 0));

		// Unsupported characters
		tester.test(" ", " ", tester.options(25, 0));
		tester.test("!", "!", tester.options(25, 0));
		tester.test("!a!", "!a!", tester.options(25, 0));
	}

	@Test
	public void test_an25_b0() {
		// Blank
		tester.test("", "", tester.options(-25, 0));

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", tester.options(-25, 0));
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", tester.options(-25, 0));

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", tester.options(-25, 0));
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", tester.options(-25, 0));

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ぁぼっおゅぬこゎふぜぃまづがょのさゐぷぞぅむでぎらばしをべだぇもどぐるひすゔほぢぉやにげろぴせあぽつかゆねごわぶそいみてきよはざゑへたうめとくりぱじんぺちえゃなけれびず", tester.options(-25, 0));

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ァボッオュヌコヮフゼィマヅガョノサヰプゾゥムデギラバシヲベダェモドグルヒスヴホヂォヤニゲロピセアポツカユネゴワブソイミテキヨハザヱヘタウメトクリパジンペチエャナケレビズ", tester.options(-25, 0));

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "АЗОХЬГКСШЯЖНФЫВЙРЧЮЕМУЪБИПЦЭДЛТЩ", tester.options(-25, 0));
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "азохьгксшяжнфывйрчюемуъбипцэдлтщ", tester.options(-25, 0));

		// Unsupported characters
		tester.test(" ", " ", tester.options(-25, 0));
		tester.test("!", "!", tester.options(-25, 0));
		tester.test("!a!", "!a!", tester.options(-25, 0));
	}
}
