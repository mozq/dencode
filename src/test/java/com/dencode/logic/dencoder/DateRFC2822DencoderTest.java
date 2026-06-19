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

public class DateRFC2822DencoderTest {
	private static final ZoneId UTC = ZoneId.of("UTC");
	private static final ZoneId TOKYO = ZoneId.of("Asia/Tokyo");
	private static final ZoneId NEW_YORK = ZoneId.of("America/New_York");

	private final DencoderTester tester = new DencoderTester(
			DateRFC2822Dencoder::encDateRFC2822);

	@Test
	public void test() {
		// Method description example
		tester.testEncoder("444972896.789", "Tue, 07 Feb 1984 12:34:56 +0900", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56.789+09:00", "Tue, 07 Feb 1984 12:34:56 +0900", tester.options(), TOKYO);

		// Fractional seconds are not emitted by RFC 2822 formatter
		tester.testEncoder("444972896", "Tue, 07 Feb 1984 12:34:56 +0900", tester.options(), TOKYO);
		tester.testEncoder("444972896.789123456", "Tue, 07 Feb 1984 12:34:56 +0900", tester.options(), TOKYO);
	}

	@Test
	public void test_zone() {
		tester.testEncoder("1984-02-07T12:34:56+09:00", "Tue, 07 Feb 1984 03:34:56 +0000", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56+09:00", "Mon, 06 Feb 1984 22:34:56 -0500", tester.options(), NEW_YORK);

		// Local input is interpreted in the selected zone
		tester.testEncoder("1984-02-07T12:34:56", "Tue, 07 Feb 1984 12:34:56 +0900", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56", "Tue, 07 Feb 1984 12:34:56 +0000", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56", "Tue, 07 Feb 1984 12:34:56 -0500", tester.options(), NEW_YORK);
	}

	@Test
	public void test_unixTimeInput() {
		tester.testEncoder("0", "Thu, 01 Jan 1970 00:00:00 +0000", tester.options(), UTC);
		tester.testEncoder("0", "Thu, 01 Jan 1970 09:00:00 +0900", tester.options(), TOKYO);
		tester.testEncoder("-1", "Wed, 31 Dec 1969 23:59:59 +0000", tester.options(), UTC);
	}

	@Test
	public void test_lines() {
		tester.testEncoder("444972896\n444972897", "Tue, 07 Feb 1984 12:34:56 +0900\nTue, 07 Feb 1984 12:34:57 +0900", tester.options(), TOKYO);
		tester.testEncoder("444972896\r\n444972897", "Tue, 07 Feb 1984 12:34:56 +0900\nTue, 07 Feb 1984 12:34:57 +0900", tester.options(), TOKYO);
		tester.testEncoder("444972896\n\n444972897", "Tue, 07 Feb 1984 12:34:56 +0900\n\nTue, 07 Feb 1984 12:34:57 +0900", tester.options(), TOKYO);
	}

	@Test
	public void test_unsupported() {
		tester.testEncoder("", null, tester.options(), TOKYO);
		tester.testEncoder("invalid", null, tester.options(), TOKYO);
	}
}
