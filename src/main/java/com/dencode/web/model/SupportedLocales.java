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

import java.io.File;
import java.io.IOException;
import java.net.JarURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SupportedLocales {
	private static final String DEFAULT_LOCALE_ID = "en";
	
	private static final Pattern MESSAGE_FILE_PATTERN = Pattern.compile("^messages_([A-Za-z]{2}(?:_[A-Za-z]{2})?)\\.properties$");
	
	private static final List<String> IDS = Collections.unmodifiableList(loadIds());
	private static final List<Locale> LOCALES = IDS.stream()
			.map(Locale::forLanguageTag)
			.toList();
	
	private SupportedLocales() {
		// NOP
	}
	
	public static List<String> ids() {
		return IDS;
	}
	
	public static List<Locale> locales() {
		return LOCALES;
	}
	
	public static String defaultId() {
		return DEFAULT_LOCALE_ID;
	}
	
	public static Locale defaultLocale() {
		return LOCALES.get(0);
	}
	
	private static List<String> loadIds() {
		List<String> ids = new ArrayList<>();
		
		try {
			Enumeration<URL> urls = Thread.currentThread().getContextClassLoader().getResources("");
			while (urls.hasMoreElements()) {
				URL url = urls.nextElement();
				switch (url.getProtocol()) {
					case "file" -> loadFileIds(url, ids);
					case "jar" -> loadJarIds(url, ids);
					default -> {
						// NOP
					}
				}
			}
		} catch (IOException e) {
			throw new IllegalStateException("Failed to load supported locales.", e);
		}
		
		if (ids.isEmpty()) {
			throw new IllegalStateException("Supported locales are empty.");
		}
		
		return ids.stream()
				.distinct()
				.sorted((id1, id2) -> {
					if (id1.equals(DEFAULT_LOCALE_ID)) {
						return -1;
					} else if (id2.equals(DEFAULT_LOCALE_ID)) {
						return 1;
					} else {
						return id1.compareTo(id2);
					}
				})
				.toList();
	}
	
	private static void loadFileIds(URL url, List<String> ids) {
		File dir;
		try {
			dir = new File(url.toURI());
		} catch (URISyntaxException e) {
			throw new IllegalStateException("Failed to load supported locales.", e);
		}
		
		File[] files = dir.listFiles();
		if (files == null) {
			return;
		}
		
		for (File file : files) {
			addId(file.getName(), ids);
		}
	}
	
	private static void loadJarIds(URL url, List<String> ids) {
		JarURLConnection conn;
		try {
			conn = (JarURLConnection)url.openConnection();
			try (JarFile jarFile = conn.getJarFile()) {
				Enumeration<JarEntry> entries = jarFile.entries();
				while (entries.hasMoreElements()) {
					JarEntry entry = entries.nextElement();
					if (entry.isDirectory() || entry.getName().contains("/")) {
						continue;
					}
					
					addId(entry.getName(), ids);
				}
			}
		} catch (IOException e) {
			throw new IllegalStateException("Failed to load supported locales.", e);
		}
	}
	
	private static void addId(String fileName, List<String> ids) {
		Matcher matcher = MESSAGE_FILE_PATTERN.matcher(fileName);
		if (!matcher.matches()) {
			return;
		}
		
		ids.add(matcher.group(1).replace('_', '-'));
	}
}
