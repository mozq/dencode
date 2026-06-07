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

public class ColorCommonDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			ColorCommonDencoder::encColorRgbHex);

	@Test
	public void test() {
		tester.testEncoder("", null);
		tester.testEncoder("red", "#ff0000");
		tester.testEncoder("rgba(255 0 0 / 0.5)", "#ff000080");
		tester.testEncoder("x", null);
	}
}
