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

public class HashSHA512DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashSHA512Dencoder::encHashSHA512);

	@Test
	public void test() {
		tester.testEncoder("", "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e", tester.options());
		tester.testEncoder("Hello, world!", "c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421", tester.options());
		tester.testEncoder("ア", "b59a1c81fecab32893e705deb479814a08c1a70c38c8077899dfac3e8e5323de2eeedd8bceef74ee9593bd307e20af33d32867c37cf1a32cc5cba6c4d31ad7f3", tester.options());
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "6700df6600b118ab0432715a7e8a68b0bf37cdf4adaf0fb9e2b3ebe04ad19c7032cbad55e932792af360bafaa09962e2e690652bc075b2dad0c30688ba2f31a3", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "377f7c6560b237d3b88f734faf092fe88f4b2067e048277223748881569ce7b2237c3e3a3fbeef319eea1ccab853b42ff2a7b8791308342ae383579f4420cba0", tester.options(), "\n");
		tester.testEncoder("a\nb", "28812982bf1a0b46a2900c05b800808c3268b41e90b06fba3ad4711aa12e30be4e040e35f918ceb5ecd4cc6b8bf9d5955d47d2904ae59753f319455805bb346d", tester.options(), "\r\n");
	}
}
