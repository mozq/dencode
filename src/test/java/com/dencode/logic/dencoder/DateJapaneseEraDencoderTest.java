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

public class DateJapaneseEraDencoderTest {
	private static final ZoneId UTC = ZoneId.of("UTC");
	private static final ZoneId TOKYO = ZoneId.of("Asia/Tokyo");
	private static final ZoneId NEW_YORK = ZoneId.of("America/New_York");

	private final DencoderTester tester = new DencoderTester(
			DateJapaneseEraDencoder::encDateJapaneseEra);

	@Test
	public void test() {
		// Method description example
		tester.testEncoder("444972896.789", "昭和59年02月07日12時34分56.789秒 JST", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56.789+09:00", "昭和59年02月07日12時34分56.789秒 JST", tester.options(), TOKYO);

		// Fractional seconds
		tester.testEncoder("444972896", "昭和59年02月07日12時34分56秒 JST", tester.options(), TOKYO);
		tester.testEncoder("444972896.789123", "昭和59年02月07日12時34分56.789123秒 JST", tester.options(), TOKYO);
		tester.testEncoder("444972896.789123456", "昭和59年02月07日12時34分56.789123456秒 JST", tester.options(), TOKYO);
	}

	@Test
	public void test_zone() {
		tester.testEncoder("1984-02-07T12:34:56+09:00", "昭和59年02月07日03時34分56秒 UTC", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56+09:00", "昭和59年02月06日22時34分56秒 EST", tester.options(), NEW_YORK);

		// Local input is interpreted in the selected zone
		tester.testEncoder("1984-02-07T12:34:56", "昭和59年02月07日12時34分56秒 JST", tester.options(), TOKYO);
		tester.testEncoder("1984-02-07T12:34:56", "昭和59年02月07日12時34分56秒 UTC", tester.options(), UTC);
		tester.testEncoder("1984-02-07T12:34:56", "昭和59年02月07日12時34分56秒 EST", tester.options(), NEW_YORK);
	}

	@Test
	public void test_era() {
		// First year is rendered as 元年
		tester.testEncoder("1989-01-08T00:00:00+09:00", "平成元年01月08日00時00分00秒 JST", tester.options(), TOKYO);
		tester.testEncoder("2019-05-01T00:00:00+09:00", "令和元年05月01日00時00分00秒 JST", tester.options(), TOKYO);

		// Era boundaries
		tester.testEncoder("1989-01-07T23:59:59+09:00", "昭和64年01月07日23時59分59秒 JST", tester.options(), TOKYO);
		tester.testEncoder("2019-04-30T23:59:59+09:00", "平成31年04月30日23時59分59秒 JST", tester.options(), TOKYO);
	}

	@Test
	public void test_beforeMeiji6() {
		// 1872 in Asia/Tokyo uses the historical +09:18:59 offset, and dates before Meiji 6 fall back to the Gregorian era.
		tester.testEncoder("1872-12-31T00:00:00+09:00", "西暦1872年12月31日00時18分59秒 JST", tester.options(), TOKYO);
	}

	@Test
	public void test_lines() {
		tester.testEncoder("1989-01-08T00:00:00+09:00\n2019-05-01T00:00:00+09:00", "平成元年01月08日00時00分00秒 JST\n令和元年05月01日00時00分00秒 JST", tester.options(), TOKYO);
		tester.testEncoder("1989-01-08T00:00:00+09:00\r\n2019-05-01T00:00:00+09:00", "平成元年01月08日00時00分00秒 JST\n令和元年05月01日00時00分00秒 JST", tester.options(), TOKYO);
		tester.testEncoder("1989-01-08T00:00:00+09:00\n\n2019-05-01T00:00:00+09:00", "平成元年01月08日00時00分00秒 JST\n\n令和元年05月01日00時00分00秒 JST", tester.options(), TOKYO);
	}

	@Test
	public void test_unsupported() {
		tester.testEncoder("", null, tester.options(), TOKYO);
		tester.testEncoder("invalid", null, tester.options(), TOKYO);
	}
}
