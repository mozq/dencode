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
package com.dencode.web.model;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.junit.jupiter.api.Test;

public class SupportedLocalesTest {
	private static final Pattern MESSAGE_FILE_PATTERN = Pattern.compile("^messages_([A-Za-z]{2}(?:_[A-Za-z]{2})?)\\.properties$");
	
	@Test
	public void test_ids() {
		assertEquals(expectedIds(), SupportedLocales.ids());
	}
	
	@Test
	public void test_defaultLocale() {
		assertEquals("en", SupportedLocales.defaultId());
		assertEquals(Locale.ENGLISH, SupportedLocales.defaultLocale());
	}
	
	@Test
	public void test_locales() {
		assertEquals(SupportedLocales.ids().size(), SupportedLocales.locales().size());
		assertTrue(SupportedLocales.locales().contains(Locale.forLanguageTag("zh-CN")));
	}

	private static List<String> expectedIds() {
		File[] files = new File("src/main/resources").listFiles();
		assertNotNull(files);

		return List.of(files).stream()
				.map(File::getName)
				.map(MESSAGE_FILE_PATTERN::matcher)
				.filter(Matcher::matches)
				.map(matcher -> matcher.group(1).replace('_', '-'))
				.distinct()
				.sorted((id1, id2) -> {
					if (id1.equals("en")) {
						return -1;
					} else if (id2.equals("en")) {
						return 1;
					} else {
						return id1.compareTo(id2);
					}
				})
				.toList();
	}
}
