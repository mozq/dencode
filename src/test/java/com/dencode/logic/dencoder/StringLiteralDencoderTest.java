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

public class StringLiteralDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringLiteralDencoder::encStrLiteral,
			StringLiteralDencoder::decStrLiteral,
			"string.literal.quotes");

	@Test
	public void test_encStrLiteral_double() {
		// Blank
		tester.test("", "\"\"", tester.options("double"));

		// ASCII
		tester.test("abc", "\"abc\"", tester.options("double"));

		// Special characters escape
		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\", "\"\\0\\a\\b\\t\\n\\v\\f\\r\\\"'\\\\\"", tester.options("double"));

		// Backtick
		tester.test("`", "\"`\"", tester.options("double"));
	}

	@Test
	public void test_encStrLiteral_single() {
		// Blank
		tester.test("", "''", tester.options("single"));

		// ASCII
		tester.test("abc", "'abc'", tester.options("single"));

		// Special characters escape
		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\", "'\\0\\a\\b\\t\\n\\v\\f\\r\"\\'\\\\'", tester.options("single"));

		// Backtick
		tester.test("`", "'`'", tester.options("single"));
	}

	@Test
	public void test_encStrLiteral_backtick() {
		// Blank
		tester.test("", "``", tester.options("backtick"));

		// ASCII
		tester.test("abc", "`abc`", tester.options("backtick"));

		// Special characters escape
		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\`", "`\\0\\a\\b\\t\\n\\v\\f\\r\"'\\\\\\``", tester.options("backtick"));
	}

	@Test
	public void test_encStrLiteral_none() {
		// Blank
		tester.test("", "", tester.options("none"));

		// ASCII
		tester.test("abc", "abc", tester.options("none"));

		// Special characters escape
		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\`", "\\0\\a\\b\\t\\n\\v\\f\\r\"'\\\\`", tester.options("none"));
	}

	@Test
	public void test_lineBreak_crlf() {
		tester.test("a\nb", "\"a\\r\\nb\"", tester.options("double"), "\r\n");

		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\", "\"\\0\\a\\b\\t\\r\\n\\v\\f\\r\\\"'\\\\\"", tester.options("double"), "\r\n");
		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\", "'\\0\\a\\b\\t\\r\\n\\v\\f\\r\"\\'\\\\'", tester.options("single"), "\r\n");
		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\`", "`\\0\\a\\b\\t\\r\\n\\v\\f\\r\"'\\\\\\``", tester.options("backtick"), "\r\n");
		tester.test("\0\u0007\b\t\n\u000b\f\r\"'\\`", "\\0\\a\\b\\t\\r\\n\\v\\f\\r\"'\\\\`", tester.options("none"), "\r\n");
	}

	@Test
	public void test_decoder() {
		// Blank
		tester.testDecoder("", "");

		// Decodes double quoted
		tester.testDecoder("\"abc\"", "abc");
		tester.testDecoder("\"\\0\\a\\b\\t\\n\\v\\f\\r\\\"'\\\\\"", "\0\u0007\b\t\n\u000b\f\r\"'\\");

		// Decodes single quoted
		tester.testDecoder("'abc'", "abc");
		tester.testDecoder("'\\0\\a\\b\\t\\n\\v\\f\\r\"\\'\\\\'", "\0\u0007\b\t\n\u000b\f\r\"'\\");

		// Decodes backtick quoted
		tester.testDecoder("`abc`", "abc");
		tester.testDecoder("`\\0\\a\\b\\t\\n\\v\\f\\r\"'\\\\\\``", "\0\u0007\b\t\n\u000b\f\r\"'\\`");

		// Decodes unquoted (lenient)
		tester.testDecoder("abc", "abc");
		tester.testDecoder("\\0\\a\\b\\t\\n\\v\\f\\r\\\"\\'\\\\", "\0\u0007\b\t\n\u000b\f\r\"'\\");

		// Decodes CRLF escape
		tester.testDecoder("\"\\r\\n\"", "\r\n", tester.options(), "\r\n");
		tester.testDecoder("'\\r\\n'", "\r\n", tester.options(), "\r\n");
		tester.testDecoder("`\\r\\n`", "\r\n", tester.options(), "\r\n");
		tester.testDecoder("\\r\\n", "\r\n", tester.options(), "\r\n");

		// Decodes unicode escape
		tester.testDecoder("\\u005A", "Z");
		tester.testDecoder("\\u{005A}", "Z");
		tester.testDecoder("\\x{005A}", "Z");
		tester.testDecoder("\\U0000005A", "Z");

		// Decodes unicode escape (lowercase hex digits)
		tester.testDecoder("\\u005a", "Z");
		tester.testDecoder("\\u{005a}", "Z");
		tester.testDecoder("\\x{005a}", "Z");
		tester.testDecoder("\\U0000005a", "Z");

		// Decodes unicode escape (surrogate pair / non-BMP via brace notation)
		tester.testDecoder("\\u{20BB7}", "\uD842\uDFB7"); // 𠮷
		tester.testDecoder("\\x{20BB7}", "\uD842\uDFB7"); // 𠮷
		tester.testDecoder("\\U00020BB7", "\uD842\uDFB7"); // 𠮷

		// Incomplete/invalid unicode escape (unmatched)
		tester.testDecoder("\\u00", "u00"); // Too short for \\uXXXX
		tester.testDecoder("\\u{", "u{"); // Unclosed brace
		tester.testDecoder("\\u{}", "u{}"); // Empty brace
		tester.testDecoder("\\x00", "x00"); // \\x without brace is unmatched
		tester.testDecoder("\\U00", "U00"); // Too short for \\UXXXXXXXX
		tester.testDecoder("\\u005G", "u005G"); // Invalid hex digit
		tester.testDecoder("\\u{005G}", "u{005G}"); // Invalid hex digit
		tester.testDecoder("\\u{110000}", "u{110000}"); // Out of Unicode bounds (max U+10FFFF)
		tester.testDecoder("\\u{0000005A}", "Z"); // Within brace length limit
		tester.testDecoder("\\u{0000000005A}", "u{0000000005A}"); // Exceeds brace length limit

		// Trailing backslash (backslash at end of string is preserved as-is)
		tester.testDecoder("\\", "\\");
		tester.testDecoder("abc\\", "abc\\");
		tester.testDecoder("abc\\\\\\", "abc\\\\"); // Odd number of trailing backslashes
		tester.testDecoder("abc\\\\\\\\", "abc\\\\"); // Even number of trailing backslashes

		// Unclosed quotes (should NOT be trimmed if not matching)
		tester.testDecoder("\"abc", "\"abc");
		tester.testDecoder("'abc", "'abc");
		tester.testDecoder("`abc", "`abc");
		tester.testDecoder("\"abc'", "\"abc'");
	}

	@Test
	public void test_surrogatePair() {
		// Surrogate pair (non-BMP character: 𠮷 U+20BB7)
		tester.test("\uD842\uDFB7", "\"\uD842\uDFB7\"", tester.options("double"));
		tester.test("\uD842\uDFB7", "'\uD842\uDFB7'", tester.options("single"));
		tester.test("\uD842\uDFB7", "`\uD842\uDFB7`", tester.options("backtick"));
		tester.test("\uD842\uDFB7", "\uD842\uDFB7", tester.options("none"));

		// Emoji (😀 U+1F600)
		tester.test("\uD83D\uDE00", "\"\uD83D\uDE00\"", tester.options("double"));

		// Surrogate pair mixed with ASCII
		tester.test("a\uD842\uDFB7b", "\"a\uD842\uDFB7b\"", tester.options("double"));
	}
}
