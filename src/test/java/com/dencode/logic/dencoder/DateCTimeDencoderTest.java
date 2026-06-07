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

public class DateCTimeDencoderTest {
	private static final ZoneId UTC = ZoneId.of("UTC");
	private static final ZoneId TOKYO = ZoneId.of("Asia/Tokyo");
	private static final ZoneId NEW_YORK = ZoneId.of("America/New_York");

	private final DencoderTester tester = new DencoderTester(
			DateCTimeDencoder::encDateCTime);

	@Test
	public void test() {
		// Method description example
		tester.testEncoder("444972896.789", "Tue Feb 07 12:34:56 1984", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56.789+09:00", "Tue Feb 07 12:34:56 1984", tester.options(), TOKYO);

		// Fractional seconds are not emitted by ctime formatter
		tester.testEncoder("444972896", "Tue Feb 07 12:34:56 1984", tester.options(), TOKYO);
		tester.testEncoder("444972896.789123456", "Tue Feb 07 12:34:56 1984", tester.options(), TOKYO);
	}

	@Test
	public void test_zone() {
		tester.testEncoder("1984-02-07T12:34:56+09:00", "Tue Feb 07 03:34:56 1984", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56+09:00", "Mon Feb 06 22:34:56 1984", tester.options(), NEW_YORK);

		// Local input is interpreted in the selected zone
		tester.testEncoder("1984-02-07T12:34:56", "Tue Feb 07 12:34:56 1984", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56", "Tue Feb 07 12:34:56 1984", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56", "Tue Feb 07 12:34:56 1984", tester.options(), NEW_YORK);
	}

	@Test
	public void test_unixTimeInput() {
		tester.testEncoder("0", "Thu Jan 01 00:00:00 1970", tester.options(), UTC);
		tester.testEncoder("0", "Thu Jan 01 09:00:00 1970", tester.options(), TOKYO);
		tester.testEncoder("-1", "Wed Dec 31 23:59:59 1969", tester.options(), UTC);
	}

	@Test
	public void test_lines() {
		tester.testEncoder("444972896\n444972897", "Tue Feb 07 12:34:56 1984\nTue Feb 07 12:34:57 1984", tester.options(), TOKYO);
		tester.testEncoder("444972896\r\n444972897", "Tue Feb 07 12:34:56 1984\nTue Feb 07 12:34:57 1984", tester.options(), TOKYO);
		tester.testEncoder("444972896\n\n444972897", "Tue Feb 07 12:34:56 1984\n\nTue Feb 07 12:34:57 1984", tester.options(), TOKYO);
	}

	@Test
	public void test_unsupported() {
		tester.testEncoder("", null, tester.options(), TOKYO);
		tester.testEncoder("invalid", null, tester.options(), TOKYO);
	}
}
