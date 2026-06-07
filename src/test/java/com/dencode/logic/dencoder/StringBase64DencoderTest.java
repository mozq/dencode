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

public class StringBase64DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringBase64Dencoder::encStrBase64,
			StringBase64Dencoder::decStrBase64,
			"string.base64.line-break-each");

	@Test
	public void test() {
		// Blank
		tester.test("", "", tester.options(""));

		// ASCII
		tester.test("A", "QQ==", tester.options(""));
		tester.test("AA", "QUE=", tester.options(""));
		tester.test("AAA", "QUFB", tester.options(""));
		tester.test("AAAA", "QUFBQQ==", tester.options(""));
		tester.test("AAAAA", "QUFBQUE=", tester.options(""));
		tester.test("AAAAAA", "QUFBQUFB", tester.options(""));
		tester.test("AAAAAAA", "QUFBQUFBQQ==", tester.options(""));

		// non-ASCII (Latin-1)
		tester.test("ä", "w6Q=", tester.options(""));
		tester.test("ää", "w6TDpA==", tester.options(""));
		tester.test("äää", "w6TDpMOk", tester.options(""));
		tester.test("ääää", "w6TDpMOkw6Q=", tester.options(""));
		tester.test("\u00FF", "/w==", tester.options(""), StandardCharsets.ISO_8859_1);

		// non-ASCII (Japanese)
		tester.test("ア", "44Ki", tester.options(""));
		tester.test("アア", "44Ki44Ki", tester.options(""));
		tester.test("アアア", "44Ki44Ki44Ki", tester.options(""));

		// non-BMP
		tester.test("😀", "8J+YgA==", tester.options(""));
		tester.test("😀😀", "8J+YgPCfmIA=", tester.options(""));
		tester.test("😀😀😀", "8J+YgPCfmIDwn5iA", tester.options(""));
	}

	@Test
	public void test_lineBreak() {
		// None
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", "QUJDREVGR0hJSktMTU5PUFFSU1RVVldYWVphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5ejAxMjM0NTY3ODk=", tester.options(""));

		// 64
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", "QUJDREVGR0hJSktMTU5PUFFSU1RVVldYWVphYmNkZWZnaGlqa2xtbm9wcXJzdHV2\r\n"
				+ "d3h5ejAxMjM0NTY3ODk=", tester.options("64"));

		// 76
		tester.test("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", "QUJDREVGR0hJSktMTU5PUFFSU1RVVldYWVphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5ejAxMjM0\r\n"
				+ "NTY3ODk=", tester.options("76"));
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// Padding
		tester.testDecoder("QUFBQQ==", "AAAA");
		tester.testDecoder("QUFBQQ=", "AAAA");
		tester.testDecoder("QUFBQQ", "AAAA");
		tester.testDecoder("QQ==", "A");
		tester.testDecoder("QQ=", "A");
		tester.testDecoder("QQ", "A");

		// Trailing white-spaces
		tester.testDecoder("QQ =\t=\r\n", "A");

		// White-space (Ignore SPACE, TAB, CR and LF)
		tester.testDecoder("QU FB\tQU\rFB\nQQ==", "AAAAAAA");

		// Bbase64 / Base64url
		tester.testDecoder("77u/Pj4+", "\uFEFF>>>"); // 62nd = '+', 63rd = '/' : RFC 4648 Base64
		tester.testDecoder("77u_Pj4-", "\uFEFF>>>"); // 62nd = '-', 63rd = '_' : RFC 4648 Base64url

		// RFC 2047
		tester.testDecoder("Subject: =?ISO-8859-1?B?SWYgeW91IGNhbiByZWFkIHRoaXMgeW8=?=\r\n"
				+ "    =?ISO-8859-2?B?dSB1bmRlcnN0YW5kIHRoZSBleGFtcGxlLg==?=",
				"Subject: If you can read this you understand the example."
				);
		tester.testDecoder("(=?iso-8859-8?b?7eXs+SDv4SDp7Oj08A==?=)", "(םולש ןב ילטפנ)");
		tester.testDecoder("Subject: =?UTF-8?B?44K144Oz44OX44Or?=", "Subject: サンプル");

		// RFC 2231
		tester.testDecoder("Subject: =?UTF-8*ja-JP?B?44K144Oz44OX44Or?=", "Subject: サンプル");
	}

	@Test
	public void test_decoder_jwt() {
		// Valid JWT (header: {"alg":"HS256","typ":"JWT"}, payload: {"sub":"1234567890","name":"John Doe","iat":1516239022})
		// eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
		tester.testDecoder(
				"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
				"{\n"
				+ "  \"alg\" : \"HS256\",\n"
				+ "  \"typ\" : \"JWT\"\n"
				+ "}\n"
				+ "{\n"
				+ "  \"sub\" : \"1234567890\",\n"
				+ "  \"name\" : \"John Doe\",\n"
				+ "  \"iat\" : 1516239022\n"
				+ "}"
				);

		// JWT with empty signature
		tester.testDecoder(
				"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.",
				"{\n"
				+ "  \"alg\" : \"HS256\",\n"
				+ "  \"typ\" : \"JWT\"\n"
				+ "}\n"
				+ "{\n"
				+ "  \"sub\" : \"1234567890\",\n"
				+ "  \"name\" : \"John Doe\",\n"
				+ "  \"iat\" : 1516239022\n"
				+ "}"
				);

		// Two dots but header is not valid JSON object (array)
		tester.testDecoder("W10.W10.abc", null);
	}
}
