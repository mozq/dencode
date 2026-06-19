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

import java.time.ZoneId;

import org.junit.jupiter.api.Test;

public class DateUnixTimeDencoderTest {
	private static final ZoneId UTC = ZoneId.of("UTC");
	private static final ZoneId TOKYO = ZoneId.of("Asia/Tokyo");
	private static final ZoneId NEW_YORK = ZoneId.of("America/New_York");

	private final DencoderTester tester = new DencoderTester(
			DateUnixTimeDencoder::encDateUnixTime);

	@Test
	public void test() {
		// Method description example
		tester.testEncoder("1984-02-07T12:34:56.789+09:00", "444972896.789", tester.options(), TOKYO);
		tester.testEncoder("Tue, 07 Feb 1984 12:34:56 +0900", "444972896", tester.options(), TOKYO);

		// Fractional seconds
		tester.testEncoder("1984-02-07T12:34:56+09:00", "444972896", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56.789123+09:00", "444972896.789123", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56.789123456+09:00", "444972896.789123456", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56.780+09:00", "444972896.78", tester.options(), TOKYO);
	}

	@Test
	public void test_zone() {
		// Zoned input represents the same instant regardless of the selected output zone
		tester.testEncoder("1984-02-07T12:34:56+09:00", "444972896", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56+09:00", "444972896", tester.options(), NEW_YORK);

		// Local input is interpreted in the selected zone
		tester.testEncoder("1984-02-07T12:34:56", "444972896", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56", "445005296", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56", "445023296", tester.options(), NEW_YORK);
	}

	@Test
	public void test_unixTimeInput() {
		tester.testEncoder("0", "0", tester.options(), UTC);
		tester.testEncoder("0.001", "0.001", tester.options(), UTC);
		tester.testEncoder("-1", "-1", tester.options(), UTC);
		tester.testEncoder("-1.25", "-1.25", tester.options(), UTC);
	}

	@Test
	public void test_lines() {
		tester.testEncoder("1984-02-07T12:34:56+09:00\n1984-02-07T12:34:57+09:00", "444972896\n444972897", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56+09:00\r\n1984-02-07T12:34:57+09:00", "444972896\n444972897", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56+09:00\n\n1984-02-07T12:34:57+09:00", "444972896\n\n444972897", tester.options(), TOKYO);
	}

	@Test
	public void test_unsupported() {
		tester.testEncoder("", null, tester.options(), TOKYO);
		tester.testEncoder("invalid", null, tester.options(), TOKYO);
	}
}
