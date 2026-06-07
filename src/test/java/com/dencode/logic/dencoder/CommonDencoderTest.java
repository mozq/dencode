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

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

import org.junit.jupiter.api.Test;

import com.dencode.logic.model.DencodeCondition;

public class CommonDencoderTest {

	@Test
	public void test_textLength() {
		assertEquals(0, CommonDencoder.textLength(condition("")));
		assertEquals(3, CommonDencoder.textLength(condition("A😀ア")));
		assertEquals(3, CommonDencoder.textLength(condition("a\r\nb")));
		assertEquals(4, CommonDencoder.textLength(condition("a\nb", StandardCharsets.UTF_8, "\r\n")));
	}

	@Test
	public void test_textByteLength() {
		assertEquals(0, CommonDencoder.textByteLength(condition("")));
		assertEquals(8, CommonDencoder.textByteLength(condition("A😀ア")));
		assertEquals(2, CommonDencoder.textByteLength(condition("ä")));
		assertEquals(1, CommonDencoder.textByteLength(condition("ä", StandardCharsets.ISO_8859_1, "\n")));
		assertEquals(3, CommonDencoder.textByteLength(condition("a\r\nb")));
		assertEquals(4, CommonDencoder.textByteLength(condition("a\nb", StandardCharsets.UTF_8, "\r\n")));
	}

	private static DencodeCondition condition(String value) {
		return condition(value, StandardCharsets.UTF_8, "\n");
	}

	private static DencodeCondition condition(String value, Charset charset, String lineBreak) {
		return new DencodeCondition(value, charset, lineBreak, null, Map.of());
	}
}
