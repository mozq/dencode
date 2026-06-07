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

public class CipherAtbashDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherAtbashDencoder::encCipherAtbash,
			CipherAtbashDencoder::encCipherAtbash);

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// Hebrew alphabets
		tester.test("אבגדהוזחטיכלמנסעפצקרשת", "תשרקצפעסנמלכיטחזוהדגבא");

		// Half-width Latin alphabets
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ZYXWVUTSRQPONMLKJIHGFEDCBA");
		tester.test("abcdefghijklmnopqrstuvwxyz", "zyxwvutsrqponmlkjihgfedcba");

		// Full-width Latin alphabets
		tester.test("ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ＺＹＸＷＶＵＴＳＲＱＰＯＮＭＬＫＪＩＨＧＦＥＤＣＢＡ");
		tester.test("ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "ｚｙｘｗｖｕｔｓｒｑｐｏｎｍｌｋｊｉｈｇｆｅｄｃｂａ");

		// Full-width Japanese Hiragana
		tester.test("ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ", "ゔんをゑゐわゎろれるりらよょゆゅやゃもめむみまぽぼほぺべへぷぶふぴびひぱばはのねぬになどとでてづつっぢちだたぞそぜせずすじしざさごこげけぐくぎきがかおぉえぇうぅいぃあぁ");

		// Full-width Japanese Katakana
		tester.test("ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ", "ヴンヲヱヰワヮロレルリラヨョユュヤャモメムミマポボホペベヘプブフピビヒパバハノネヌニナドトデテヅツッヂチダタゾソゼセズスジシザサゴコゲケグクギキガカオォエェウゥイィアァ");

		// Cyrillic alphabets
		tester.test("АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ", "ЯЮЭЬЫЪЩШЧЦХФУТСРПОНМЛКЙИЗЖЕДГВБА");
		tester.test("абвгдежзийклмнопрстуфхцчшщъыьэюя", "яюэьыъщшчцхфутсрпонмлкйизжедгвба");

		// Unsupported characters
		tester.test(" ", " ");
		tester.test("!", "!");
		tester.test("!a!", "!z!");

		// Mixed alphabets (Latin + Cyrillic + Hebrew)
		tester.test("Aа א", "Zя ת");

		// Mixed alphabets (Latin + Japanese Hiragana + Katakana)
		tester.test("Aぁァ", "Zゔヴ");

		// Numbers pass through
		tester.test("A1B2C3", "Z1Y2X3");

		// Single character boundary
		tester.test("A", "Z");
		tester.test("Z", "A");
		tester.test("a", "z");
		tester.test("z", "a");
		tester.test("А", "Я");
		tester.test("Я", "А");
		tester.test("א", "ת");
		tester.test("ת", "א");
	}
}
