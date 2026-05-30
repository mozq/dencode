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

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class StringLiteralDencoderTest {
	
	@Test
	public void test_encStrLiteral_double() {
		// Blank
		testDencoder("", "double", "\"\"");
		
		// ASCII
		testDencoder("abc", "double", "\"abc\"");
		
		// Special characters escape
		testDencoder("\0\u0007\b\t\n\u000b\f\r\"'\\", "double", "\"\\0\\a\\b\\t\\n\\v\\f\\r\\\"'\\\\\"");
		
		// Backtick
		testDencoder("`", "double", "\"`\"");
	}
	
	@Test
	public void test_encStrLiteral_single() {
		// Blank
		testDencoder("", "single", "''");
		
		// ASCII
		testDencoder("abc", "single", "'abc'");
		
		// Special characters escape
		testDencoder("\0\u0007\b\t\n\u000b\f\r\"'\\", "single", "'\\0\\a\\b\\t\\n\\v\\f\\r\"\\'\\\\'");
		
		// Backtick
		testDencoder("`", "single", "'`'");
	}
	
	@Test
	public void test_encStrLiteral_backtick() {
		// Blank
		testDencoder("", "backtick", "``");
		
		// ASCII
		testDencoder("abc", "backtick", "`abc`");
		
		// Special characters escape
		testDencoder("\0\u0007\b\t\n\u000b\f\r\"'\\`", "backtick", "`\\0\\a\\b\\t\\n\\v\\f\\r\"'\\\\\\``");
	}
	
	@Test
	public void test_encStrLiteral_none() {
		// Blank
		testDencoder("", "none", "");
		
		// ASCII
		testDencoder("abc", "none", "abc");
		
		// Special characters escape
		testDencoder("\0\u0007\b\t\n\u000b\f\r\"'\\`", "none", "\\0\\a\\b\\t\\n\\v\\f\\r\"'\\\\`");
	}
	
	@Test
	public void test_decoder() {
		// Blank
		testDecoder("", "");
		
		// Decodes double quoted
		testDecoder("\"abc\"", "abc");
		testDecoder("\"\\0\\a\\b\\t\\n\\v\\f\\r\\\"'\\\\\"", "\0\u0007\b\t\n\u000b\f\r\"'\\");
		
		// Decodes single quoted
		testDecoder("'abc'", "abc");
		testDecoder("'\\0\\a\\b\\t\\n\\v\\f\\r\"\\'\\\\'", "\0\u0007\b\t\n\u000b\f\r\"'\\");
		
		// Decodes backtick quoted
		testDecoder("`abc`", "abc");
		testDecoder("`\\0\\a\\b\\t\\n\\v\\f\\r\"'\\\\\\``", "\0\u0007\b\t\n\u000b\f\r\"'\\`");
		
		// Decodes unquoted (lenient)
		testDecoder("abc", "abc");
		testDecoder("\\0\\a\\b\\t\\n\\v\\f\\r\\\"\\'\\\\", "\0\u0007\b\t\n\u000b\f\r\"'\\");
		
		// Decodes unicode escape
		testDecoder("\\u005A", "Z");
		testDecoder("\\u{005A}", "Z");
		testDecoder("\\x{005A}", "Z");
		testDecoder("\\U0000005A", "Z");
		
		// Unclosed quotes (should NOT be trimmed if not matching)
		testDecoder("\"abc", "\"abc");
		testDecoder("'abc", "'abc");
		testDecoder("`abc", "`abc");
		testDecoder("\"abc'", "\"abc'");
	}
	
	private void testDencoder(String value, String quotes, String expectedEncodedValue) {
		String encodedValue = StringLiteralDencoder.encStrLiteral(new DencodeCondition(value, StandardCharsets.UTF_8, "\n", null, new HashMap<>() {
			private static final long serialVersionUID = 1L;
			{
				put("string.literal.quotes", quotes);
			}
		}));
		assertEquals(expectedEncodedValue, encodedValue);
		
		String decodedValue = StringLiteralDencoder.decStrLiteral(new DencodeCondition(encodedValue, StandardCharsets.UTF_8, "\n", null, new HashMap<>()));
		assertEquals(value, decodedValue);
	}
	
	private void testDecoder(String value, String expectedDecodedValue) {
		String decodedValue = StringLiteralDencoder.decStrLiteral(new DencodeCondition(value, StandardCharsets.UTF_8, "\n", null, new HashMap<>()));
		assertEquals(expectedDecodedValue, decodedValue);
	}
}
