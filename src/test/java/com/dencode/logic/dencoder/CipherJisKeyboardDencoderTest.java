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

public class CipherJisKeyboardDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherJisKeyboardDencoder::encCipherJisKeyboard,
			CipherJisKeyboardDencoder::encCipherJisKeyboard,
			"cipher.jis-keyboard.mode");

	@Test
	public void testStrict() {
		// Blank
		tester.test("", "", tester.options("strict"));

		// Supported characters
		tester.test("1234567890-^|", "ぬふあうえおやゆよわほへー", tester.options("strict"));
		tester.test("qwertyuiop @[", "たていすかんなにらせ ゛゜", tester.options("strict"));
		tester.test("asdfghjkl;:]", "ちとしはきくまのりれけむ", tester.options("strict"));
		tester.test("zxcvbnm,./\\", "つさそひこみもねるめろ", tester.options("strict"));
		tester.test("#$%&'()", "ぁぅぇぉゃゅょ", tester.options("strict"));
		tester.test("E{", "ぃ「", tester.options("strict"));
		tester.test("}", "」", tester.options("strict"));
		tester.test("Z<>?", "っ、。・", tester.options("strict"));

		// Voiced sound mark
		tester.test("t@g@h@:@b@", "がぎぐげご", tester.options("strict"));
		tester.test("x@d@r@p@c@", "ざじずぜぞ", tester.options("strict"));
		tester.test("q@a@z@w@s@", "だぢづでど", tester.options("strict"));
		tester.test("f@v@2@^@-@", "ばびぶべぼ", tester.options("strict"));
		tester.test("4@", "ゔ", tester.options("strict"));
		tester.test("f[v[2[^[-[", "ぱぴぷぺぽ", tester.options("strict"));
		tester.test("1@1[", "ぬ゛ぬ゜", tester.options("strict"));
		tester.test("@1", "゛ぬ", tester.options("strict"));
		tester.test("[1", "゜ぬ", tester.options("strict"));
		tester.test("@", "゛", tester.options("strict"));
		tester.test("[", "゜", tester.options("strict"));

		// Upper alphabet
		tester.test("QWERTYUIOP", "QWぃRTYUIOP", tester.options("strict"));
		tester.test("ASDFGHJKL", "ASDFGHJKL", tester.options("strict"));
		tester.test("ZXCVBNM", "っXCVBNM", tester.options("strict"));

		// Katakana
		tester.test("ヌフアウエオヤユヨワホヘ", "ヌフアウエオヤユヨワホヘ", tester.options("strict"));
		tester.test("タテイスカンナニラセ", "タテイスカンナニラセ", tester.options("strict"));
		tester.test("チトシハキクマノリレケム", "チトシハキクマノリレケム", tester.options("strict"));
		tester.test("ツサソヒコミモネルメロ", "ツサソヒコミモネルメロ", tester.options("strict"));
		tester.test("ァゥェォャュョ", "ァゥェォャュョ", tester.options("strict"));
		tester.test("ィ", "ィ", tester.options("strict"));
		tester.test("ッ", "ッ", tester.options("strict"));
		tester.test("ガギグゲゴ", "ガギグゲゴ", tester.options("strict"));
		tester.test("ザジズゼゾ", "ザジズゼゾ", tester.options("strict"));
		tester.test("ダヂヅデド", "ダヂヅデド", tester.options("strict"));
		tester.test("バビブベボ", "バビブベボ", tester.options("strict"));
		tester.test("ヴ", "ヴ", tester.options("strict"));
		tester.test("パピプペポ", "パピプペポ", tester.options("strict"));

		// Unsupported characters
		tester.test("!\"=~`+*_", "!\"=~`+*_", tester.options("strict")); // Unsupported symbols
		tester.test("漢字＠", "漢字＠", tester.options("strict")); // Unsupported full-width characters
		tester.test("を", "を", tester.options("strict")); // Unsupported Hiragana character

		// Mixed
		tester.test("nttを「みかか」に変換します!?", "みかかを{ntt}i変換djr!・", tester.options("strict"));
	}
	@Test
	public void testLenient() {
		// Blank
		tester.test("", "", tester.options("lenient"));

		// Supported characters
		tester.test("1234567890-^|", "ぬふあうえおやゆよわほへー", tester.options("lenient"));
		tester.test("qwertyuiop @[", "たていすかんなにらせ ゛゜", tester.options("lenient"));
		tester.test("asdfghjkl;:]", "ちとしはきくまのりれけむ", tester.options("lenient"));
		tester.test("zxcvbnm,./\\", "つさそひこみもねるめろ", tester.options("lenient"));
		tester.test("#$%&'()", "ぁぅぇぉゃゅょ", tester.options("lenient"));
		tester.test("E{", "ぃ「", tester.options("lenient"));
		tester.test("}", "」", tester.options("lenient"));
		tester.test("Z<>?", "っ、。・", tester.options("lenient"));

		// Voiced sound mark
		tester.test("t@g@h@:@b@", "がぎぐげご", tester.options("lenient"));
		tester.test("x@d@r@p@c@", "ざじずぜぞ", tester.options("lenient"));
		tester.test("q@a@z@w@s@", "だぢづでど", tester.options("lenient"));
		tester.test("f@v@2@^@-@", "ばびぶべぼ", tester.options("lenient"));
		tester.test("4@", "ゔ", tester.options("lenient"));
		tester.test("f[v[2[^[-[", "ぱぴぷぺぽ", tester.options("lenient"));
		tester.test("1@1[", "ぬ゛ぬ゜", tester.options("lenient"));
		tester.test("@1", "゛ぬ", tester.options("lenient"));
		tester.test("[1", "゜ぬ", tester.options("lenient"));
		tester.test("@", "゛", tester.options("lenient"));
		tester.test("[", "゜", tester.options("lenient"));

		// Upper alphabet
		tester.test("QWERTYUIOP", "たてぃすかんなにらせ", "qwErtyuiop", tester.options("lenient"));
		tester.test("ASDFGHJKL", "ちとしはきくまのり", "asdfghjkl", tester.options("lenient"));
		tester.test("ZXCVBNM", "っさそひこみも", "Zxcvbnm", tester.options("lenient"));

		// Katakana
		tester.test("ヌフアウエオヤユヨワホヘ", "1234567890-^", "ぬふあうえおやゆよわほへ", tester.options("lenient"));
		tester.test("タテイスカンナニラセ", "qwertyuiop", "たていすかんなにらせ", tester.options("lenient"));
		tester.test("チトシハキクマノリレケム", "asdfghjkl;:]", "ちとしはきくまのりれけむ", tester.options("lenient"));
		tester.test("ツサソヒコミモネルメロ", "zxcvbnm,./\\", "つさそひこみもねるめろ", tester.options("lenient"));
		tester.test("ァゥェォャュョ", "#$%&'()", "ぁぅぇぉゃゅょ", tester.options("lenient"));
		tester.test("ィ", "E", "ぃ", tester.options("lenient"));
		tester.test("ッ", "Z", "っ", tester.options("lenient"));
		tester.test("ガギグゲゴ", "t@g@h@:@b@", "がぎぐげご", tester.options("lenient"));
		tester.test("ザジズゼゾ", "x@d@r@p@c@", "ざじずぜぞ", tester.options("lenient"));
		tester.test("ダヂヅデド", "q@a@z@w@s@", "だぢづでど", tester.options("lenient"));
		tester.test("バビブベボ", "f@v@2@^@-@", "ばびぶべぼ", tester.options("lenient"));
		tester.test("ヴ", "4@", "ゔ", tester.options("lenient"));
		tester.test("パピプペポ", "f[v[2[^[-[", "ぱぴぷぺぽ", tester.options("lenient"));

		// Unsupported characters
		tester.test("!\"=~`+*_", "!\"=~`+*_", tester.options("lenient")); // Unsupported symbols
		tester.test("漢字＠", "漢字＠", tester.options("lenient")); // Unsupported full-width characters
		tester.test("を", "を", tester.options("lenient")); // Unsupported Hiragana character

		// Mixed
		tester.test("NTTを「みかか」に変換します!?", "みかかを{ntt}i変換djr!・", "nttを「みかか」に変換します!?", tester.options("lenient"));
	}
}
