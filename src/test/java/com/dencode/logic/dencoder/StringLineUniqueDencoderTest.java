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

public class StringLineUniqueDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringLineUniqueDencoder::encStrLineUnique);

	@Test
	public void test() {
		// Blank
		tester.testEncoder("", "");

		// Duplicates are removed while preserving the first occurrence order
		tester.testEncoder("apple\nbanana\napple\ncherry\nbanana", "apple\nbanana\ncherry");
		tester.testEncoder("banana\napple\nbanana\ncherry\napple", "banana\napple\ncherry");

		// Case-sensitive
		tester.testEncoder("apple\nApple\napple\nAPPLE", "apple\nApple\nAPPLE");

		// Non-ASCII
		tester.testEncoder("あ\nい\nあ\nア\nい", "あ\nい\nア");
	}

	@Test
	public void test_lines() {
		// Empty lines are treated as ordinary lines
		tester.testEncoder("apple\n\nbanana\n\napple", "apple\n\nbanana");
		tester.testEncoder("\n\napple\n", "\napple");

		// CRLF input is split into lines, then joined with LF
		tester.testEncoder("apple\r\nbanana\r\napple", "apple\nbanana");
	}
}
