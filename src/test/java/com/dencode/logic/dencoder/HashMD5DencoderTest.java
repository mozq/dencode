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

public class HashMD5DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashMD5Dencoder::encHashMD5);

	@Test
	public void test() {
		tester.testEncoder("", "d41d8cd98f00b204e9800998ecf8427e", tester.options());
		tester.testEncoder("Hello, world!", "6cd3556deb0da54bca060b4c39479839", tester.options());
		tester.testEncoder("ア", "b51b28a79559b6fb30682b6602cf8068", tester.options());
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "00594fd4f42ba43fc1ca0427a0576295", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "8cdeb44417f3c26826595d5820cf5700", tester.options(), "\n");
		tester.testEncoder("a\nb", "65d5f03c46e62e3f2babbe712d2ce464", tester.options(), "\r\n");
	}
}
