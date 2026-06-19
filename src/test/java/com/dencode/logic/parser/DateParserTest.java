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
package com.dencode.logic.parser;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import java.time.ZoneId;
import java.time.ZonedDateTime;

import org.junit.jupiter.api.Test;

public class DateParserTest {
	private static final ZoneId UTC = ZoneId.of("UTC");
	private static final ZoneId TOKYO = ZoneId.of("Asia/Tokyo");
	private static final ZoneId NEW_YORK = ZoneId.of("America/New_York");

	@Test
	public void test_nullAndBlank() {
		assertNull(DateParser.parseDateAsZonedDateTime(null, UTC));
		assertNull(DateParser.parseDateAsZonedDateTime("", UTC));
		assertNull(DateParser.parseDateAsZonedDateTime(" ".repeat(51), UTC));
		assertNull(DateParser.parseDateAsZonedDateTime("invalid", UTC));
	}

	@Test
	public void test_now() {
		assertNotNull(DateParser.parseDateAsZonedDateTime("now", UTC));
		assertNotNull(DateParser.parseDateAsZonedDateTime("NOW", TOKYO));
	}

	@Test
	public void test_unixTime() {
		assertZonedDateTime("1970-01-01T00:00:00Z[UTC]", DateParser.parseDateAsZonedDateTime("0", UTC));
		assertZonedDateTime("1970-01-01T09:00:00+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("0", TOKYO));
		assertZonedDateTime("1970-01-01T00:00:00.001Z[UTC]", DateParser.parseDateAsZonedDateTime("0.001", UTC));
		assertZonedDateTime("1969-12-31T23:59:59Z[UTC]", DateParser.parseDateAsZonedDateTime("-1", UTC));
	}

	@Test
	public void test_isoDateTime() {
		assertZonedDateTime("1984-02-07T12:34:56+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("1984-02-07T12:34:56+09:00", TOKYO));
		assertZonedDateTime("1984-02-07T03:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("1984-02-07T12:34:56+09:00", UTC));
		assertZonedDateTime("1984-02-07T12:34:56.789+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("1984-02-07T12:34:56.789+09:00", TOKYO));
		assertZonedDateTime("1984-02-07T12:34:56+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("19840207T123456+0900", TOKYO));
		assertZonedDateTime("1984-02-07T12:34:56+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("１９８４-０２-０７T１２:３４:５６+０９:００", TOKYO));
	}

	@Test
	public void test_dateOnly() {
		assertZonedDateTime("1984-02-07T00:00Z[UTC]", DateParser.parseDateAsZonedDateTime("1984-02-07", UTC));
		assertZonedDateTime("1984-02-01T00:00Z[UTC]", DateParser.parseDateAsZonedDateTime("1984-02", UTC));
		assertZonedDateTime("1984-02-07T00:00Z[UTC]", DateParser.parseDateAsZonedDateTime("February 7, 1984", UTC));
		assertZonedDateTime("1984-02-07T00:00Z[UTC]", DateParser.parseDateAsZonedDateTime("7 Feb 1984", UTC));
		assertZonedDateTime("1984-02-07T00:00Z[UTC]", DateParser.parseDateAsZonedDateTime("1984-W06-2", UTC));
		assertZonedDateTime("1984-02-07T00:00Z[UTC]", DateParser.parseDateAsZonedDateTime("1984-038", UTC));
	}

	@Test
	public void test_timeOnly() {
		assertZonedDateTime("1970-01-01T12:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("12:34:56", UTC));
		assertZonedDateTime("1970-01-01T12:34:56+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("12:34:56", TOKYO));
		// Time-only values with a short zone name are interpreted as local time in the selected zone.
		assertZonedDateTime("1970-01-01T12:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("12:34:56 JST", UTC));
		assertZonedDateTime("1970-01-01T12:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("0:34:56 PM", UTC));
		assertZonedDateTime("1970-01-01T12:34:56+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("午後12時34分56秒", TOKYO));
	}

	@Test
	public void test_zone() {
		assertZonedDateTime("1984-02-07T03:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("Tue, 07 Feb 1984 12:34:56 JST", UTC));
		assertZonedDateTime("1984-02-07T03:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("Tue, 07 Feb 1984 12:34:56 +0900", UTC));
		assertZonedDateTime("1984-02-06T22:34:56-05:00[America/New_York]", DateParser.parseDateAsZonedDateTime("1984-02-07T12:34:56+09:00", NEW_YORK));
		assertZonedDateTime("1984-02-07T12:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("1984-02-07T12:34:56 UTC", UTC));
		assertZonedDateTime("1984-02-07T12:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("1984-02-07T12:34:56 GMT", UTC));
		assertZonedDateTime("1984-02-07T17:34:56Z[UTC]", DateParser.parseDateAsZonedDateTime("Tue, 07 Feb 1984 12:34:56 EST", UTC));
	}

	@Test
	public void test_ctime() {
		assertZonedDateTime("1984-02-07T12:34:56+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("Tue Feb  7 12:34:56 1984", TOKYO));
		assertZonedDateTime("2000-01-23T01:23:45+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("Sun Jan 23 01:23:45 2000", TOKYO));
	}

	@Test
	public void test_japaneseEra() {
		assertZonedDateTime("1984-02-07T00:00+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("昭和59年2月7日", TOKYO));
		assertZonedDateTime("1989-01-08T00:00+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("平成元年1月8日", TOKYO));
		assertZonedDateTime("2019-05-01T00:00+09:00[Asia/Tokyo]", DateParser.parseDateAsZonedDateTime("令和元年5月1日", TOKYO));
		assertNull(DateParser.parseDateAsZonedDateTime("明治5年12月31日", TOKYO));
	}

	private static void assertZonedDateTime(String expected, ZonedDateTime actual) {
		assertEquals(ZonedDateTime.parse(expected), actual);
	}
}
