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

public class ColorHwbDencoderTest {

	@Test
	public void test() {
		// Blank
		testDencoder("", null);
		
		// Color variations
		testDencoder("red", "hwb(0 0% 0%)");
		testDencoder("blue", "hwb(240 0% 0%)");
		testDencoder("green", "hwb(120 0% 49.8%)");
		testDencoder("yellow", "hwb(60 0% 0%)");
		testDencoder("purple", "hwb(300 0% 49.8%)");
		testDencoder("cyan", "hwb(180 0% 0%)");
		testDencoder("white", "hwb(0 100% 0%)");
		testDencoder("black", "hwb(0 0% 100%)");
		
		testDencoder("hwb(0 0% 0%)", "hwb(0 0% 0%)"); // red
		testDencoder("hwb(240 0% 0%)", "hwb(240 0% 0%)"); // blue
		testDencoder("hwb(120 0% 49.8%)", "hwb(120 0% 49.8%)"); // green
		testDencoder("hwb(60 0% 0%)", "hwb(60 0% 0%)"); // yellow
		testDencoder("hwb(300 0% 49.8%)", "hwb(300 0% 49.8%)"); // purple
		testDencoder("hwb(180 0% 0%)", "hwb(180 0% 0%)"); // cyan
		testDencoder("hwb(0 100% 0%)", "hwb(0 100% 0%)"); // white
		testDencoder("hwb(0 0% 100%)", "hwb(0 0% 100%)"); // black
		
		testDencoder("#ff0000", "hwb(0 0% 0%)");
		testDencoder("rgb(255 0 0)", "hwb(0 0% 0%)");
		
		testDencoder("rgba(255 0 0 / 0.5)", "hwb(0 0% 0% / 0.5)");
		
		testDencoder("x", null);
	}
	
	private void testDencoder(String val, String exp) {
		testDencoder(val, exp, exp);
	}
	
	private void testDencoder(String val, String exp1, String exp2) {
		DencodeCondition cond = new DencodeCondition(val, StandardCharsets.UTF_8, "", null, new HashMap<String, String>(0));
		String encStr = ColorHwbDencoder.encColorHwb(cond);
		assertEquals(exp1, encStr);
	}
}
