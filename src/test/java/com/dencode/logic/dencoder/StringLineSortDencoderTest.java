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

public class StringLineSortDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringLineSortDencoder::encStrLineSort,
			"string.line-sort.order");

	@Test
	public void test() {
		// Blank
		tester.testEncoder("", "");

		// Ascending
		tester.testEncoder("banana\napple\ncherry", "apple\nbanana\ncherry");
		tester.testEncoder("banana\napple\ncherry", "apple\nbanana\ncherry", tester.options("asc"));
		tester.testEncoder("banana\napple\ncherry", "apple\nbanana\ncherry", tester.options("unknown"));

		// Descending
		tester.testEncoder("banana\napple\ncherry", "cherry\nbanana\napple", tester.options("desc"));

		// Reverse
		tester.testEncoder("banana\napple\ncherry", "cherry\napple\nbanana", tester.options("reverse"));
	}

	@Test
	public void test_lines() {
		// Empty lines are sorted as ordinary lines
		tester.testEncoder("banana\n\napple", "\napple\nbanana");
		tester.testEncoder("banana\n\napple", "banana\napple\n", tester.options("desc"));
		tester.testEncoder("banana\n\napple", "apple\n\nbanana", tester.options("reverse"));

		// CRLF input is split into lines, then joined with LF
		tester.testEncoder("banana\r\napple\r\ncherry", "apple\nbanana\ncherry");
	}

	@Test
	public void test_comparison() {
		// Java String natural order
		tester.testEncoder("a\nA\nB\nb\n10\n2", "10\n2\nA\nB\na\nb");
		tester.testEncoder("あ\nア\nい\n漢字\nかな", "あ\nい\nかな\nア\n漢字");
	}
}
