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

public class DateISO8601DencoderTest {
	private static final ZoneId UTC = ZoneId.of("UTC");
	private static final ZoneId TOKYO = ZoneId.of("Asia/Tokyo");
	private static final ZoneId NEW_YORK = ZoneId.of("America/New_York");

	private final DencoderTester basicTester = new DencoderTester(
			DateISO8601Dencoder::encDateISO8601,
			"date.iso8601.decimal-separator");
	private final DencoderTester extTester = new DencoderTester(
			DateISO8601Dencoder::encDateISO8601Ext,
			"date.iso8601.decimal-separator");
	private final DencoderTester weekTester = new DencoderTester(
			DateISO8601Dencoder::encDateISO8601Week,
			"date.iso8601.decimal-separator");
	private final DencoderTester ordinalTester = new DencoderTester(
			DateISO8601Dencoder::encDateISO8601Ordinal,
			"date.iso8601.decimal-separator");

	@Test
	public void test_basic() {
		basicTester.testEncoder("444972896.789", "19840207T123456.789+0900", basicTester.options("."), TOKYO);
		basicTester.testEncoder("444972896", "19840207T123456+0900", basicTester.options("."), TOKYO);
		basicTester.testEncoder("444972896.789123", "19840207T123456.789123+0900", basicTester.options("."), TOKYO);
		basicTester.testEncoder("444972896.789123456", "19840207T123456.789123456+0900", basicTester.options("."), TOKYO);

		// Decimal separator
		basicTester.testEncoder("444972896.789", "19840207T123456,789+0900", basicTester.options(","), TOKYO);
		basicTester.testEncoder("444972896.789", "19840207T123456.789+0900", basicTester.options("unknown"), TOKYO);
	}

	@Test
	public void test_extended() {
		// Method description example
		extTester.testEncoder("444972896.789", "1984-02-07T12:34:56.789+09:00", extTester.options("."), TOKYO);
		extTester.testEncoder("Tue, 07 Feb 1984 12:34:56 JST", "1984-02-07T12:34:56+09:00", extTester.options("."), TOKYO);

		// Time zone conversion
		extTester.testEncoder("1984-02-07T12:34:56+09:00", "1984-02-07T03:34:56Z", extTester.options("."), UTC);
		extTester.testEncoder("1984-02-07T12:34:56+09:00", "1984-02-06T22:34:56-05:00", extTester.options("."), NEW_YORK);

		// Decimal separator
		extTester.testEncoder("444972896.789123456", "1984-02-07T12:34:56,789123456+09:00", extTester.options(","), TOKYO);
	}

	@Test
	public void test_week() {
		weekTester.testEncoder("444972896.789", "1984-W06-2T12:34:56.789+09:00", weekTester.options("."), TOKYO);
		weekTester.testEncoder("1984-01-01T00:00:00Z", "1983-W52-7T00:00:00Z", weekTester.options("."), UTC);
		weekTester.testEncoder("1984-12-31T00:00:00Z", "1985-W01-1T00:00:00Z", weekTester.options("."), UTC);
		weekTester.testEncoder("444972896.789", "1984-W06-2T12:34:56,789+09:00", weekTester.options(","), TOKYO);
	}

	@Test
	public void test_ordinal() {
		ordinalTester.testEncoder("444972896.789", "1984-038T12:34:56.789+09:00", ordinalTester.options("."), TOKYO);
		ordinalTester.testEncoder("1984-12-31T00:00:00Z", "1984-366T00:00:00Z", ordinalTester.options("."), UTC);
		ordinalTester.testEncoder("1985-12-31T00:00:00Z", "1985-365T00:00:00Z", ordinalTester.options("."), UTC);
		ordinalTester.testEncoder("444972896.789", "1984-038T12:34:56,789+09:00", ordinalTester.options(","), TOKYO);
	}

	@Test
	public void test_lines() {
		extTester.testEncoder("444972896\n444972897", "1984-02-07T12:34:56+09:00\n1984-02-07T12:34:57+09:00", extTester.options("."), TOKYO);
		extTester.testEncoder("444972896\r\n444972897", "1984-02-07T12:34:56+09:00\n1984-02-07T12:34:57+09:00", extTester.options("."), TOKYO);
		extTester.testEncoder("444972896\n\n444972897", "1984-02-07T12:34:56+09:00\n\n1984-02-07T12:34:57+09:00", extTester.options("."), TOKYO);
	}

	@Test
	public void test_unsupported() {
		extTester.testEncoder("", null, extTester.options("."), TOKYO);
		extTester.testEncoder("invalid", null, extTester.options("."), TOKYO);
	}
}
