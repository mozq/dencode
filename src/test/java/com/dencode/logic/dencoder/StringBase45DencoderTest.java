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

public class StringBase45DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringBase45Dencoder::encStrBase45,
			StringBase45Dencoder::decStrBase45);

	@Test
	public void test() {
		tester.test("AB", "BB8");
		tester.test("Hello!!", "%69 VD92EX0");
		tester.test("base-45", "UJCLQE7W581");
		tester.test("ietf!", "QED8WEX0");

		tester.test("テスト", "DYSG2HUNGDYS13");
		tester.test("A", "K1");
		tester.test("😀", "*IUPCJ");
		tester.test("\0", "00");
		tester.test("\0\0", "000");
		tester.test("", "");

		tester.test("\u00FF", "U5", tester.options(), StandardCharsets.ISO_8859_1);
		tester.test("\uFFFF", "FGW", tester.options(), StandardCharsets.UTF_16BE);

		// Boundary value - Partial chunk
		tester.testDecoder("00", "\u0000", tester.options(), StandardCharsets.ISO_8859_1);
		tester.testDecoder("U5", "\u00FF", tester.options(), StandardCharsets.ISO_8859_1);
		tester.testDecoder("V5", null, tester.options(), StandardCharsets.ISO_8859_1); // Overflow: 0x100

		// Boundary value - Full chunk
		tester.testDecoder("000", "\u0000", tester.options(), StandardCharsets.UTF_16BE);
		tester.testDecoder("U50", "\u00FF", tester.options(), StandardCharsets.UTF_16BE);
		tester.testDecoder("V50", "\u0100", tester.options(), StandardCharsets.UTF_16BE);
		tester.testDecoder("FGW", "\uFFFF", tester.options(), StandardCharsets.UTF_16BE);
		tester.testDecoder("GGW", null, tester.options(), StandardCharsets.UTF_16BE); // Overflow: 0x10000
	}

	@Test
	public void testZlibCoseCbor() {

		// see https://github.com/eu-digital-green-certificates/dgc-testdata
		tester.testDecoder(
				"HC1:NCFOXN%TS3DHMRG2FUPNR9/MPV45NL-AH%TAIOOW%IHOT$E08WAWN0%W0AT4V22F/8X*G3M9JUPY0BX/KR96R/S09T./0LWTKD33236J3TA3M*4VV2 73-E3ND3DAJ-43%*48YIB73A*G3W19UEBY5:PI0EGSP4*2D$43B+2SEB7:I/2DY73CIBC:G 7376BXBJBAJ UNFMJCRN0H3PQN*E33H3OA70M3FMJIJN523S+0B/S7-SN2H N37J3JFTULJ5CB3ZCIATULV:SNS8F-67N%21Q21$48X2+36D-I/2DBAJDAJCNB-43SZ4RZ4E%5B/9OK53:UCT16DEZIE IE9.M CVCT1+9V*QERU1MK93P5 U02Y9.G9/G9F:QQ28R3U6/V.*NT*QM.SY$N-P1S29 34S0BYBRC.UYS1U%O6QKN*Q5-QFRMLNKNM8JI0EUGP$I/XK$M8-L9KDI:ZH2E4UR8 I185JTT3QFWDHK1QV+/UU-OJ1Q 7SP:8M1NWQTP3D/OADSM8BDHBN +0O7WNV7HJS%6G8WJP6GDZPXU8GY8U$I%0N%NST0GX-Q/$OMPG",
				"{\n"
				+ "  \"4\" : 1620237600,\n"
				+ "  \"6\" : 1620064800,\n"
				+ "  \"1\" : \"AT\",\n"
				+ "  \"-260\" : {\n"
				+ "    \"1\" : {\n"
				+ "      \"v\" : [ {\n"
				+ "        \"dn\" : 1,\n"
				+ "        \"ma\" : \"ORG-100030215\",\n"
				+ "        \"vp\" : \"1119305005\",\n"
				+ "        \"dt\" : \"2021-02-18\",\n"
				+ "        \"co\" : \"AT\",\n"
				+ "        \"ci\" : \"urn:uvci:01:AT:10807843F94AEE0EE5093FBC254BD813P\",\n"
				+ "        \"mp\" : \"EU/1/20/1528\",\n"
				+ "        \"is\" : \"BMSGPK Austria\",\n"
				+ "        \"sd\" : 2,\n"
				+ "        \"tg\" : \"840539006\"\n"
				+ "      } ],\n"
				+ "      \"nam\" : {\n"
				+ "        \"fnt\" : \"MUSTERFRAU<GOESSINGER\",\n"
				+ "        \"fn\" : \"Musterfrau-Gößinger\",\n"
				+ "        \"gnt\" : \"GABRIELE\",\n"
				+ "        \"gn\" : \"Gabriele\"\n"
				+ "      },\n"
				+ "      \"ver\" : \"1.0.0\",\n"
				+ "      \"dob\" : \"1998-02-26\"\n"
				+ "    }\n"
				+ "  }\n"
				+ "}");
	}
}
