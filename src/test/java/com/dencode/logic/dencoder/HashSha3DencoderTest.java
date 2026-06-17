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

public class HashSha3DencoderTest {
	private final DencoderTester tester = new DencoderTester(
			HashSha3Dencoder::encHashSha3,
			"hash.sha3.function");

	@Test
	public void test() {
		tester.testEncoder("", "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a", tester.options());
		tester.testEncoder("Hello, world!", "f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722", tester.options());
		tester.testEncoder("ア", "238c53652a3fae699b51793c28b369ed6898dc7214a6afd75c0ffabd8c272304", tester.options());
	}

	@Test
	public void test_function() {
		tester.testEncoder("", "6b4e03423667dbb73b6e15454f0eb1abd4597f9a1b078e3f5b5a6bc7", tester.options("SHA3-224"));
		tester.testEncoder("", "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a", tester.options("SHA3-256"));
		tester.testEncoder("", "0c63a75b845e4f7d01107d852e4c2485c51a50aaaa94fc61995e71bbee983a2ac3713831264adb47fb6bd1e058d5f004", tester.options("SHA3-384"));
		tester.testEncoder("", "a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26", tester.options("SHA3-512"));

		tester.testEncoder("Hello, world!", "6a33e22f20f16642697e8bd549ff7b759252ad56c05a1b0acc31dc69", tester.options("SHA3-224"));
		tester.testEncoder("Hello, world!", "f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722", tester.options("SHA3-256"));
		tester.testEncoder("Hello, world!", "6ba9ea268965916f5937228dde678c202f9fe756a87d8b1b7362869583a45901fd1a27289d72fc0e3ff48b1b78827d3a", tester.options("SHA3-384"));
		tester.testEncoder("Hello, world!", "8e47f1185ffd014d238fabd02a1a32defe698cbf38c037a90e3c0a0a32370fb52cbd641250508502295fcabcbf676c09470b27443868c8e5f70e26dc337288af", tester.options("SHA3-512"));
	}

	@Test
	public void test_charset() {
		tester.testEncoder("\u00FF", "444b89ecce395aec5dc98f19defd3a23bca0822fc72226f58ca46a17eeeca442", tester.options(), StandardCharsets.ISO_8859_1); // U+00FF ÿ
	}

	@Test
	public void test_lineBreak() {
		tester.testEncoder("a\nb", "9db1b0837cfe8385e167cae0d38608bd1c2477eb88070443c92aad51a4859a96", tester.options(), "\n");
		tester.testEncoder("a\nb", "ff2ac26f3bb4b44e9f428bce9511fa3c381d580128a45603694c4cec3300e080", tester.options(), "\r\n");
	}

	@Test
	public void test_option() {
		tester.testEncoder("", "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a", tester.options(""));
		tester.testEncoder("", "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a", tester.options("unknown"));
		tester.testEncoder("", "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a", tester.options("SHAKE128-256"));
	}
}
