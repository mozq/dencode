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

public class HashSHA384DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashSHA384Dencoder::encHashSHA384);

	@Test
	public void test() {
		tester.testEncoder("", "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b", tester.options());
		tester.testEncoder("Hello, world!", "55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb", tester.options());
		tester.testEncoder("ア", "ee3af90591f3726c1a36d2d21d18c546276ab71219958c7b0eb661b863e609d193aae9c5e9e95edc1ece0394a7d7b6a1", tester.options());
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "43950796d9883503655e35b5190aee687a2dd99f265012625b95753978e4efff3e8414d178a6e2318480d8eb6ddee643", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "ced84cf901a39ae41d42dad2ab7b0f23990aeace44ae812052d96053083f693989fc05a8ae60f406e49deaf20a347c46", tester.options(), "\n");
		tester.testEncoder("a\nb", "3e48d062cf3a916a59153d75c5a86ae0390b7e04c59cbe871621ff51101c0af31b63aff1f42cc6895b8a314bb2f29846", tester.options(), "\r\n");
	}
}
