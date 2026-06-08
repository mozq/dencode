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
package com.dencode.logic.model.color;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class ColorFormattersTest {

	@Test
	public void test_functionRatio() {
		ColorFormatter formatter = ColorFormatters.functionRatio("color", 3, "srgb");
		assertEquals("color(srgb 0.123 1.235 -0.5)", formatter.format(new double[] {0.1234, 1.2345, -0.5}, 1.0));
		assertEquals("color(srgb 0.123 1.235 -0.5 / 0.5)", formatter.format(new double[] {0.1234, 1.2345, -0.5}, 0.5));
	}

	@Test
	public void test_functionNumber255() {
		ColorFormatter formatter = ColorFormatters.functionNumber255("rgb", 0);
		assertEquals("rgb(0 128 255)", formatter.format(new double[] {-0.1, 0.5, 1.2}, 1.0));
		assertEquals("rgb(0 128 255 / 0.25)", formatter.format(new double[] {-0.1, 0.5, 1.2}, 0.25));
	}

	@Test
	public void test_functionPercentage() {
		ColorFormatter formatter = ColorFormatters.functionPercentage("color", 1, "srgb");
		assertEquals("color(srgb 12.3% 50% 100%)", formatter.format(new double[] {0.1234, 0.5, 1.0}, 1.0));
		assertEquals("color(srgb 12.3% 50% 100% / 0.75)", formatter.format(new double[] {0.1234, 0.5, 1.0}, 0.75));
	}

	@Test
	public void test_functionHuePercentage() {
		ColorFormatter formatter = ColorFormatters.functionHuePercentage("hsl", 2, 1);
		assertEquals("hsl(12.35deg 50% 100%)", formatter.format(new double[] {12.345, 0.5, 1.0}, 1.0));
		assertEquals("hsl(12.35deg 50% 100% / 0.33)", formatter.format(new double[] {12.345, 0.5, 1.0}, 0.333));
	}
}
