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

import java.nio.charset.StandardCharsets;

import org.junit.jupiter.api.Test;

public class StringAscii85DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringAscii85Dencoder::encStrAscii85,
			StringAscii85Dencoder::decStrAscii85,
			"string.ascii85.variant");

	@Test
	public void testZ85() {
		tester.test("", "", tester.options("z85"));
		tester.test("H", "nb", tester.options("z85"));
		tester.test("He", "nm.", tester.options("z85"));
		tester.test("Hel", "nm=P", tester.options("z85"));
		tester.test("Hell", "nm=QN", tester.options("z85"));
		tester.test("Hello", "nm=QNzV", tester.options("z85"));
		tester.test("Hello!", "nm=QNzY]", tester.options("z85"));
		tester.test("\u00FF", "@@", tester.options("z85"), StandardCharsets.ISO_8859_1);

		tester.test("Man is distinguished, not only by his reason, but by this singular passion from other animals, which is a lust of the mind, that by a perseverance of delight in the continued and indefatigable generation of knowledge, exceeds the short vehemence of any carnal pleasure.", "o<}]Zx(+zcx(!xgzFa9aB7/b}efF?GBrCHty<vdjC{3^mB0bHmvrlv8efFzABrC4raARphB0bKrzFa9dvr9GfvrlH7z/cXfA=k!qz//V7AV!!dx(do{B1wCTxLy%&azC)tvixxeB95Kyw/#hewGU&7zE+pvBzb98ayYQsvixJ2A=U/nwPzi%v}u^3w/$R}y?WJ}BrCpnaARpday/tcBzkSnwN(](zE:(7zE^r<vrui@vpB4:azkn6wPzj3x(v(iz!pbczF%-nwN]B+efFIGv}xjZB0bNrwGV5cz/P}xC4Ct#zdNP{wGU]6ayPekay!&2zEEu7Abo8]B9hIme=", tester.options("z85"));

		// Zeros
		tester.test("\0", "00", tester.options("z85"));
		tester.test("\0\0", "000", tester.options("z85"));
		tester.test("\0\0\0", "0000", tester.options("z85"));
		tester.test("\0\0\0\0", "00000", tester.options("z85"));
		tester.test("\0\0\0\0\0", "0000000", tester.options("z85"));

		// Spaces
		tester.test(" ", "ao", tester.options("z85"));
		tester.test("  ", "arQ", tester.options("z85"));
		tester.test("   ", "arR^", tester.options("z85"));
		tester.test("    ", "arR^H", tester.options("z85"));
		tester.test("     ", "arR^Hao", tester.options("z85"));

		// Unsupported value
		tester.testDecoder("\\", null, tester.options("z85"));
		tester.testDecoder("a\\", null, tester.options("z85"));
		tester.testDecoder("~", null, tester.options("z85"));
		tester.testDecoder("a~", null, tester.options("z85"));
	}

	@Test
	public void testAdobe() {
		tester.test("", adobe(""), tester.options("adobe"));
		tester.test("H", adobe("8,"), tester.options("adobe"));
		tester.test("He", adobe("87_"), tester.options("adobe"));
		tester.test("Hel", adobe("87cT"), tester.options("adobe"));
		tester.test("Hell", adobe("87cUR"), tester.options("adobe"));
		tester.test("Hello", adobe("87cURDZ"), tester.options("adobe"));
		tester.test("Hello!", adobe("87cURD]o"), tester.options("adobe"));

		tester.test("Man is distinguished, not only by his reason, but by this singular passion from other animals, which is a lust of the mind, that by a perseverance of delight in the continued and indefatigable generation of knowledge, exceeds the short vehemence of any carnal pleasure.", adobe("9jqo^BlbD-BleB1DJ+*+F(f,q/0JhKF<GL>Cj@.4Gp$d7F!,L7@<6@)/0JDEF<G%<+EV:2F!,O<DJ+\n" +
				"*.@<*K0@<6L(Df-\\0Ec5e;DffZ(EZee.Bl.9pF\"AGXBPCsi+DGm>@3BB/F*&OCAfu2/AKYi(DIb:@FD,\n" +
				"*)+C]U=@3BN#EcYf8ATD3s@q?d$AftVqCh[NqF<G:8+EV:.+Cf>-FD5W8ARlolDIal(DId<j@<?3r@:F\n" +
				"%a+D58'ATD4$Bl@l3De:,-DJs`8ARoFb/0JMK@qB4^F!,R<AKZ&-DfTqBG%G>uD.RTpAKYo'+CT/5+Ce\n" +
				"i#DII?(E,9)oF*2M7/c"), tester.options("adobe"));

		// Zeros
		tester.test("\0", adobe("!!"), tester.options("adobe"));
		tester.test("\0\0", adobe("!!!"), tester.options("adobe"));
		tester.test("\0\0\0", adobe("!!!!"), tester.options("adobe"));
		tester.test("\0\0\0\0", adobe("z"), tester.options("adobe"));
		tester.test("\0\0\0\0\0", adobe("z!!"), tester.options("adobe"));

		// Spaces
		tester.test(" ", adobe("+9"), tester.options("adobe"));
		tester.test("  ", adobe("+<U"), tester.options("adobe"));
		tester.test("   ", adobe("+<Vd"), tester.options("adobe"));
		tester.test("    ", adobe("+<VdL"), tester.options("adobe"));
		tester.test("     ", adobe("+<VdL+9"), tester.options("adobe"));

		// line-break and white-space
		tester.testDecoder("<~87 cU  RD  \r\n  ]o~>", "Hello!", tester.options("adobe"));

		// Compressed value
		tester.testDecoder("<~z~>", "\0\0\0\0", tester.options("adobe"));

		// Unsupported value
		tester.testDecoder("<~v~>", null, tester.options("adobe"));
		tester.testDecoder("<~av~>", null, tester.options("adobe"));
		tester.testDecoder("<~y~>", null, tester.options("adobe"));
		tester.testDecoder("<~ay~>", null, tester.options("adobe"));
		tester.testDecoder("<~az~>", null, tester.options("adobe"));
	}

	@Test
	public void testBTOA() {
		tester.test("", btoa("", ""), tester.options("btoa"));
		tester.test("H", btoa("H", "8,rVi"), tester.options("btoa"));
		tester.test("He", btoa("He", "87_c$"), tester.options("btoa"));
		tester.test("Hel", btoa("Hel", "87cT;"), tester.options("btoa"));
		tester.test("Hell", btoa("Hell", "87cUR"), tester.options("btoa"));
		tester.test("Hello", btoa("Hello", "87cURDZBb;"), tester.options("btoa"));
		tester.test("Hello!", btoa("Hello!", "87cURD]o)\\"), tester.options("btoa"));
		tester.test("Hello!", btoa("Hello!", "87cURD]o)\\", "\r\n"), tester.options("btoa"), "\r\n");

		tester.test("Man is distinguished, not only by his reason, but by this singular passion from other animals, which is a lust of the mind, that by a perseverance of delight in the continued and indefatigable generation of knowledge, exceeds the short vehemence of any carnal pleasure.", btoa("Man is distinguished, not only by his reason, but by this singular passion from other animals, which is a lust of the mind, that by a perseverance of delight in the continued and indefatigable generation of knowledge, exceeds the short vehemence of any carnal pleasure.", "9jqo^BlbD-BleB1DJ+*+F(f,q/0JhKF<GL>Cj@.4Gp$d7F!,L7@<6@)/0JDEF<G%<+EV:2F!,O<DJ+\n" +
				"*.@<*K0@<6L(Df-\\0Ec5e;DffZ(EZee.Bl.9pF\"AGXBPCsi+DGm>@3BB/F*&OCAfu2/AKYi(DIb:@F\n" +
				"D,*)+C]U=@3BN#EcYf8ATD3s@q?d$AftVqCh[NqF<G:8+EV:.+Cf>-FD5W8ARlolDIal(DId<j@<?3\n" +
				"r@:F%a+D58'ATD4$Bl@l3De:,-DJs`8ARoFb/0JMK@qB4^F!,R<AKZ&-DfTqBG%G>uD.RTpAKYo'+C\n" +
				"T/5+Cei#DII?(E,9)oF*2M7/cYkO"), tester.options("btoa"));

		// Zeros
		tester.test("\0", btoa("\0", "z"), tester.options("btoa"));
		tester.test("\0\0", btoa("\0\0", "z"), tester.options("btoa"));
		tester.test("\0\0\0", btoa("\0\0\0", "z"), tester.options("btoa"));
		tester.test("\0\0\0\0", btoa("\0\0\0\0", "z"), tester.options("btoa"));
		tester.test("\0\0\0\0\0", btoa("\0\0\0\0\0", "zz"), tester.options("btoa"));

		// Spaces
		tester.test(" ", btoa(" ", "+92BA"), tester.options("btoa"));
		tester.test("  ", btoa("  ", "+<UXa"), tester.options("btoa"));
		tester.test("   ", btoa("   ", "+<Vd,"), tester.options("btoa"));
		tester.test("    ", btoa("    ", "y"), tester.options("btoa"));
		tester.test("     ", btoa("     ", "y+92BA"), tester.options("btoa"));

		// line-break and white-space
		tester.testDecoder(btoaEnvelope("87 cU  RD  \r\n  ]o)\\", "Hello!"), "Hello!", tester.options("btoa"));

		// Compressed value
		tester.testDecoder(btoaEnvelope("y", "    "), "    ", tester.options("btoa"));
		tester.testDecoder(btoaEnvelope("z", "\0\0\0\0"), "\0\0\0\0", tester.options("btoa"));

		// Unsupported value
		tester.testDecoder(btoaEnvelope("v", ""), null, tester.options("btoa"));
		tester.testDecoder(btoaEnvelope("av", ""), null, tester.options("btoa"));
		tester.testDecoder(btoaEnvelope("ay", ""), null, tester.options("btoa"));
		tester.testDecoder(btoaEnvelope("az", ""), null, tester.options("btoa"));
	}

	private static String adobe(String encodedValue) {
		return "<~" + encodedValue + "~>";
	}

	private static String btoa(String value, String encodedValue) {
		return btoa(value, encodedValue, "\n");
	}

	private static String btoa(String value, String encodedValue, String lineBreak) {
		return btoaEnvelope(encodedValue, value, lineBreak);
	}

	private static String btoaEnvelope(String encodedValue, String suffixValue) {
		return btoaEnvelope(encodedValue, suffixValue, "\n");
	}

	private static String btoaEnvelope(String encodedValue, String suffixValue, String lineBreak) {
		return "xbtoa Begin" + lineBreak + encodedValue + lineBreak + buildBTOASuffix(suffixValue) + lineBreak;
	}

	private static String buildBTOASuffix(String v) {
		byte[] x = v.getBytes(StandardCharsets.UTF_8);
		return buildBTOASuffix(x);
	}
	private static String buildBTOASuffix(byte[] x) {
		int eor = 0;
		int sum = 0;
		int rot = 0;

		for (int i = 0; i < x.length; i++) {
			int c = 0xFF & x[i];

			eor ^= c;
			sum += c;
			sum++;
			if ((rot & 0x80000000) != 0) {
				rot <<= 1;
				rot++;
			} else {
				rot <<= 1;
			}
			rot += c;
		}

		return String.format("xbtoa End N %d %x E %x S %x R %x", x.length, x.length, eor, sum, rot);
	}
}
