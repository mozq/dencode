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
package com.dencode.logic.model;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;

import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;

public class DencodeConditionTest {
	private static final ZoneId UTC = ZoneId.of("UTC");

	@Test
	public void test_constructor() {
		assertThrows(NullPointerException.class, () -> new DencodeCondition(null, StandardCharsets.UTF_8, "\n", UTC, Map.of()));

		DencodeCondition cond = condition("a\r\nb", "\r\n");
		assertEquals("a\r\nb", cond.value());
		assertEquals(List.of("a", "b"), cond.valueAsLines());
		assertEquals(-1, cond.textLengthDiff());
		assertArrayEquals("a\r\nb".getBytes(StandardCharsets.UTF_8), cond.valueAsBinary());
		assertArrayEquals(new int[] {'a', '\n', 'b'}, cond.valueAsCodePointsWithLf());
	}

	@Test
	public void test_options() {
		DencodeCondition cond = new DencodeCondition("x", StandardCharsets.UTF_8, "\n", UTC, Map.of(
				"k", "v",
				"number", "123",
				"invalid-number", "x",
				"empty", ""
				));
		assertEquals("v", cond.option("k", "default"));
		assertEquals("default", cond.option("missing", "default"));
		assertEquals(123, cond.optionAsInt("number", 0));
		assertEquals(0, cond.optionAsInt("missing-number", 0));
		assertEquals(0, cond.optionAsInt("invalid-number", 0));
		assertEquals(9, cond.optionAsInt("empty", 0, 9));
		assertEquals(0, cond.optionAsInt("missing-empty-number", 0, 9));
		assertEquals(Map.of(
				"k", "v",
				"number", "123",
				"invalid-number", "x",
				"empty", ""
				), cond.options());
		assertThrows(UnsupportedOperationException.class, () -> cond.options().put("x", "y"));

		DencodeCondition noOptions = new DencodeCondition("x", StandardCharsets.UTF_8, "\n", UTC, null);
		assertEquals("default", noOptions.option("k", "default"));
		assertEquals(Map.of(), noOptions.options());
	}

	@Test
	public void test_valueAsNumber() {
		assertEquals(new BigDecimal("1"), condition("1", "\n").valueAsNumber());

		DencodeCondition cond = condition("1\n\n0x10", "\n");
		assertNull(cond.valueAsNumber());
		assertEquals(3, cond.valueAsNumbers().size());
		assertEquals(new BigDecimal("1"), cond.valueAsNumbers().get(0));
		assertNull(cond.valueAsNumbers().get(1));
		assertEquals(new BigDecimal("16"), cond.valueAsNumbers().get(2));
		assertNull(condition("1\nx", "\n").valueAsNumbers());
		assertNull(condition("\n", "\n").valueAsNumbers());
	}

	@Test
	public void test_valueAsDate() {
		assertEquals(ZonedDateTime.parse("1970-01-01T00:00:00Z[UTC]"), condition("0", "\n").valueAsDate());

		DencodeCondition cond = condition("0\n\n1", "\n");
		assertNull(cond.valueAsDate());
		assertEquals(3, cond.valueAsDates().size());
		assertEquals(ZonedDateTime.parse("1970-01-01T00:00:00Z[UTC]"), cond.valueAsDates().get(0));
		assertNull(cond.valueAsDates().get(1));
		assertEquals(ZonedDateTime.parse("1970-01-01T00:00:01Z[UTC]"), cond.valueAsDates().get(2));
		assertNull(condition("0\ninvalid", "\n").valueAsDates());
	}

	@Test
	public void test_valueAsColor() {
		assertArrayEquals(new double[] {1.0, 0.0, 0.0}, condition("red", "\n").valueAsColor().rgb(), 0.001);

		DencodeCondition cond = condition("red\n\nblue", "\n");
		assertNull(cond.valueAsColor());
		assertEquals(3, cond.valueAsColors().size());
		assertArrayEquals(new double[] {1.0, 0.0, 0.0}, cond.valueAsColors().get(0).rgb(), 0.001);
		assertNull(cond.valueAsColors().get(1));
		assertArrayEquals(new double[] {0.0, 0.0, 1.0}, cond.valueAsColors().get(2).rgb(), 0.001);
		assertNull(condition("red\ninvalid", "\n").valueAsColors());
	}

	private static DencodeCondition condition(String value, String lineBreak) {
		return new DencodeCondition(value, StandardCharsets.UTF_8, lineBreak, UTC, Map.of());
	}
}
