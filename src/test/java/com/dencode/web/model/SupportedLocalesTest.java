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
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;
import java.util.Locale;

import org.junit.jupiter.api.Test;

public class SupportedLocalesTest {
	
	@Test
	public void test_ids() {
		assertEquals(List.of(
				"en",
				"de",
				"es",
				"fr",
				"hi",
				"id",
				"it",
				"ja",
				"ko",
				"nl",
				"pl",
				"pt",
				"ru",
				"vi",
				"zh-CN",
				"zh-HK",
				"zh-TW"
				), SupportedLocales.ids());
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
}
