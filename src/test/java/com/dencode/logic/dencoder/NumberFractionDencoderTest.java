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

public class NumberFractionDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			NumberFractionDencoder::encNumFraction);

	@Test
	public void test() {
		tester.testEncoder("0", "0/1");
		tester.testEncoder("+0", "0/1");
		tester.testEncoder("-0", "0/1");

		tester.testEncoder("0.0", "0/1");
		tester.testEncoder("+0.0", "0/1");
		tester.testEncoder("-0.0", "0/1");

		tester.testEncoder("1", "1/1");
		tester.testEncoder("+1", "1/1");
		tester.testEncoder("-1", "-1/1");

		tester.testEncoder("1.0", "1/1");
		tester.testEncoder("+1.0", "1/1");
		tester.testEncoder("-1.0", "-1/1");

		tester.testEncoder("1.00", "1/1");
		tester.testEncoder("+1.00", "1/1");
		tester.testEncoder("-1.00", "-1/1");

		tester.testEncoder("0.4", "2/5");
		tester.testEncoder("-0.4", "-2/5");

		tester.testEncoder("0.5", "1/2");
		tester.testEncoder("-0.5", "-1/2");

		tester.testEncoder("0.25", "1/4");
		tester.testEncoder("-0.25", "-1/4");

		tester.testEncoder("333.0", "333/1");
		tester.testEncoder("33.0", "33/1");

		tester.testEncoder("0.01234567890", "123456789/10000000000");

		tester.testEncoder("1/0", null);

		tester.testEncoder("0/1", "0/1");
		tester.testEncoder("0/-1", "0/1");
		tester.testEncoder("0/2", "0/1");
		tester.testEncoder("0/-2", "0/1");

		tester.testEncoder("1/3", "1/3");
		tester.testEncoder("+1/3", "1/3");
		tester.testEncoder("1/+3", "1/3");
		tester.testEncoder("+1/+3", "1/3");
		tester.testEncoder("-1/3", "-1/3");
		tester.testEncoder("1/-3", "-1/3");
		tester.testEncoder("-1/-3", "1/3");

		tester.testEncoder("111/333", "1/3");
		tester.testEncoder("333/111", "3/1");

		tester.testEncoder("1234567890/234567890", "123456789/23456789");

		tester.testEncoder("0.5/0.5", "1/1");
		tester.testEncoder("5.0/0.5", "10/1");
		tester.testEncoder("50.0/0.5", "100/1");
		tester.testEncoder("0.5/5.0", "1/10");
		tester.testEncoder("0.5/50.0", "1/100");

		tester.testEncoder("33", "33/1");
		tester.testEncoder("33.0", "33/1");
		tester.testEncoder("33.3", "333/10");
		tester.testEncoder("33.33", "3333/100");
		tester.testEncoder("3.3", "33/10");
		tester.testEncoder("0.3", "3/10");
		tester.testEncoder("0.33", "33/100");
		tester.testEncoder("0.033", "33/1000");
		tester.testEncoder("0.0033", "33/10000");
		tester.testEncoder("-0.33", "-33/100");

		tester.testEncoder("0...", "0/1"); // Zero
		tester.testEncoder("0....", "0/1"); // Zero
		tester.testEncoder("0.0...", "0/1"); // Zero

		tester.testEncoder("0.3...", "3/10"); // Non-repeating number
		tester.testEncoder("0.33...", "1/3"); // Repeating number
		tester.testEncoder("0.333...", "1/3"); // Repeating number

		tester.testEncoder("0.6...", "3/5"); // Non-repeating number
		tester.testEncoder("0.66...", "2/3"); // Repeating number
		tester.testEncoder("0.666...", "2/3"); // Repeating number

		tester.testEncoder("0.67...", "67/100"); // Non-epeating number (round up)
		tester.testEncoder("0.667...", "2/3"); // Repeating number (round up)
		tester.testEncoder("0.6667...", "2/3"); // Repeating number (round up)

		tester.testEncoder("0.8...", "4/5"); // Non-epeating number
		tester.testEncoder("0.88...", "8/9"); // Repeating number
		tester.testEncoder("0.888...", "8/9"); // Repeating number

		tester.testEncoder("0.89...", "89/100"); // Non-epeating number (round up)
		tester.testEncoder("0.889...", "8/9"); // Repeating number (round up)
		tester.testEncoder("0.8889...", "8/9"); // Repeating number (round up)

		tester.testEncoder("0.9...", "9/10"); // Non-epeating number
		tester.testEncoder("0.99...", "1/1"); // Repeating number
		tester.testEncoder("0.999...", "1/1"); // Repeating number

		// Repeating number (3)
		tester.testEncoder("33.3...", "100/3");
		tester.testEncoder("3.3...", "10/3");
		tester.testEncoder("0.33...", "1/3");
		tester.testEncoder("0.033...", "1/30");
		tester.testEncoder("0.0033...", "1/300");
		tester.testEncoder("-0.33...", "-1/3");

		// Repeating number (428571)
		tester.testEncoder("42.8571428571...", "300/7");
		tester.testEncoder("4.28571428571...", "30/7");
		tester.testEncoder("0.428571428571...", "3/7");
		tester.testEncoder("0.0428571428571...", "3/70");
		tester.testEncoder("0.00428571428571...", "3/700");
		tester.testEncoder("-0.428571428571...", "-3/7");

		// Repeating number 1(571428)
		tester.testEncoder("157.1428571428...", "1100/7");
		tester.testEncoder("15.71428571428...", "110/7");
		tester.testEncoder("1.571428571428...", "11/7");
		tester.testEncoder("0.1571428571428...", "11/70");
		tester.testEncoder("0.01571428571428...", "11/700");
		tester.testEncoder("0.001571428571428...", "11/7000");
		tester.testEncoder("-1.571428571428...", "-11/7");

		// Repeating number 58(114)
		tester.testEncoder("581.44144...", "64540/111");
		tester.testEncoder("58.144144...", "6454/111");
		tester.testEncoder("5.8144144...", "3227/555");
		tester.testEncoder("0.58144144...", "3227/5550");
		tester.testEncoder("0.058144144...", "3227/55500");
		tester.testEncoder("0.0058144144...", "3227/555000");
		tester.testEncoder("-5.8144144...", "-3227/555");

		// Repeating number 15(857142)
		tester.testEncoder("1585.71428571428...", "11100/7");
		tester.testEncoder("158.571428571428...", "1110/7");
		tester.testEncoder("15.8571428571428...", "111/7");
		tester.testEncoder("1.58571428571428...", "111/70");
		tester.testEncoder("0.158571428571428...", "111/700");
		tester.testEncoder("0.0158571428571428...", "111/7000");
		tester.testEncoder("0.00158571428571428...", "111/70000");
		tester.testEncoder("-15.8571428571428...", "-111/7");

		// Repeating number 11(1886792452830)
		tester.testEncoder("1118.867924528301886792452830...", "59300/53");
		tester.testEncoder("111.8867924528301886792452830...", "5930/53");
		tester.testEncoder("11.18867924528301886792452830...", "593/53");
		tester.testEncoder("1.118867924528301886792452830...", "593/530");
		tester.testEncoder("0.1118867924528301886792452830...", "593/5300");
		tester.testEncoder("0.01118867924528301886792452830...", "593/53000");
		tester.testEncoder("0.001118867924528301886792452830...", "593/530000");
		tester.testEncoder("-11.18867924528301886792452830...", "-593/53");
	}

	@Test
	public void test_unparsable() {
		// Non-numeric
		tester.testEncoder("abc", null);
		tester.testEncoder("xyz", null);

		// Blank
		tester.testEncoder("", null);

		// Space
		tester.testEncoder(" ", null);
	}
}
