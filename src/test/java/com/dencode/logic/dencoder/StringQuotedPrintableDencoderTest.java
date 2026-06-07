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

public class StringQuotedPrintableDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringQuotedPrintableDencoder::encStrQuotedPrintable,
			StringQuotedPrintableDencoder::decStrQuotedPrintable);

	@Test
	public void test() {
		// Blank
		tester.test("", "");

		// Printable: A-Z 0-9
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ");
		tester.test("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz");
		tester.test("0123456789", "0123456789");

		// Printable: Symbols
		tester.test("!\"#$%&'()*+,-./:;<>?@[\\]^_`{|}~", "!\"#$%&'()*+,-./:;<>?@[\\]^_`{|}~");
		tester.test("=", "=3D");

		// White-space
		tester.test(" ", "=20");
		tester.test("\t", "=09");
		tester.test("\n", "=0A");
		tester.test("A A", "A A");
		tester.test("A\tA", "A\tA");
		tester.test("A\nA", "A\nA");
		tester.test("   \n\t\t\t\n\n", "  =20\n\t\t=09\n=0A");

		// non-ASCII (Latin-1)
		tester.test("ä", "=C3=A4");
		tester.test("\u00FF", "=FF", tester.options(), StandardCharsets.ISO_8859_1);

		// non-ASCII (Japanese)
		tester.test("ア", "=E3=82=A2");

		// non-BMP
		tester.test("😀", "=F0=9F=98=80");

		// Line-break
		tester.test("J'interdis aux marchands de vanter trop leurs marchandises. Car ils se font vite pédagogues et t'enseignent comme but ce qui n'est par essence qu'un moyen, et te trompant ainsi sur la route à suivre les voilà bientôt qui te dégradent, car si leur musique est vulgaire ils te fabriquent pour te la vendre une âme vulgaire.\n"
				+ "   — Antoine de Saint-Exupéry, Citadelle (1948)",
				"J'interdis aux marchands de vanter trop leurs marchandises. Car ils se font=\r\n"
						+ " vite p=C3=A9dagogues et t'enseignent comme but ce qui n'est par essence qu=\r\n"
						+ "'un moyen, et te trompant ainsi sur la route =C3=A0 suivre les voil=C3=A0 b=\r\n"
						+ "ient=C3=B4t qui te d=C3=A9gradent, car si leur musique est vulgaire ils te =\r\n"
						+ "fabriquent pour te la vendre une =C3=A2me vulgaire.\n"
						+ "   =E2=80=94=E2=80=89Antoine de Saint-Exup=C3=A9ry, Citadelle (1948)"
				);
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// Padding
		tester.testDecoder("J'interdis aux marchands de vanter trop leurs marchandises. Car ils se font=\n"
				+ " vite p=C3=A9dagogues et t'enseignent comme but ce qui n'est par essence qu=\n"
				+ "'un moyen, et te trompant ainsi sur la route =C3=A0 suivre les voil=C3=\n"
				+ "=A0 bient=C3=B4t qui te d=C3=A9gradent, car si leur musique est vulgaire il=\n"
				+ "s te fabriquent pour te la vendre une =C3=A2me vulgaire.\n"
				+ "   =E2=80=94=E2=80=89Antoine de Saint-Exup=C3=A9ry, Citadelle (1948)",
				"J'interdis aux marchands de vanter trop leurs marchandises. Car ils se font vite pédagogues et t'enseignent comme but ce qui n'est par essence qu'un moyen, et te trompant ainsi sur la route à suivre les voilà bientôt qui te dégradent, car si leur musique est vulgaire ils te fabriquent pour te la vendre une âme vulgaire.\n"
						+ "   — Antoine de Saint-Exupéry, Citadelle (1948)"
				);

		// RFC 2047
		tester.testDecoder("From: =?US-ASCII?Q?Keith_Moore?= <moore@cs.utk.edu>\n"
				+ "   To: =?ISO-8859-1?Q?Keld_J=F8rn_Simonsen?= <keld@dkuug.dk>\n"
				+ "   CC: =?ISO-8859-1?Q?Andr=E9?= Pirard <PIRARD@vm1.ulg.ac.be>",
				"From: Keith Moore <moore@cs.utk.edu>\n"
					+ "   To: Keld Jørn Simonsen <keld@dkuug.dk>\n"
					+ "   CC: André Pirard <PIRARD@vm1.ulg.ac.be>"
				);
		tester.testDecoder("From: =?ISO-8859-1?Q?Olle_J=E4rnefors?= <ojarnef@admin.kth.se>", "From: Olle Järnefors <ojarnef@admin.kth.se>");
		tester.testDecoder("From: =?ISO-8859-1?Q?Patrik_F=E4ltstr=F6m?= <paf@nada.kth.se>", "From: Patrik Fältström <paf@nada.kth.se>");
		tester.testDecoder("(=?ISO-8859-1?Q?a?=)", "(a)");
		tester.testDecoder("(=?ISO-8859-1?Q?a?= b)", "(a b)");
		tester.testDecoder("(=?ISO-8859-1?Q?a?= =?ISO-8859-1?Q?b?=)", "(ab)");
		tester.testDecoder("(=?ISO-8859-1?Q?a?=  =?ISO-8859-1?Q?b?=)", "(ab)");
		tester.testDecoder("(=?ISO-8859-1?Q?a?=\n"
				+ "    =?ISO-8859-1?Q?b?=)",
				"(ab)"
				);
		tester.testDecoder("(=?ISO-8859-1?Q?a_b?=)", "(a b)");
		tester.testDecoder("(=?ISO-8859-1?Q?a?= =?ISO-8859-2?Q?_b?=)", "(a b)");
		tester.testDecoder("Subject: =?UTF-8?Q?=E3=82=B5=E3=83=B3=E3=83=97=E3=83=AB?=", "Subject: サンプル");

		// RFC 2231
		tester.testDecoder("Subject: =?UTF-8*ja-JP?Q?=E3=82=B5=E3=83=B3=E3=83=97=E3=83=AB?=", "Subject: サンプル");
	}
}
