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

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.ZoneId;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

import com.dencode.logic.model.DencodeCondition;

class DencoderTester {

	private static final Charset DEFAULT_CHARSET = StandardCharsets.UTF_8;
	private static final String DEFAULT_LINE_BREAK = "\n";
	private static final ZoneId DEFAULT_ZONE = null;
	private static final Map<String, String> DEFAULT_OPTIONS = Map.of();

	private final Function<DencodeCondition, String> encoder;
	private final Function<DencodeCondition, String> decoder;
	private final String[] optionNames;

	DencoderTester(Function<DencodeCondition, String> encoder, String... optionNames) {
		this(encoder, null, optionNames);
	}

	DencoderTester(Function<DencodeCondition, String> encoder, Function<DencodeCondition, String> decoder, String... optionNames) {
		this.encoder = encoder;
		this.decoder = decoder;
		this.optionNames = optionNames.clone();
	}

	Map<String, String> options(Object... optionValues) {
		if (optionNames.length < optionValues.length) {
			throw new IllegalArgumentException("The number of option values must not exceed the number of option names.");
		}

		Map<String, String> options = new HashMap<>();
		for (int i = 0; i < optionValues.length; i++) {
			if (optionValues[i] != null) {
				options.put(optionNames[i], String.valueOf(optionValues[i]));
			}
		}
		return options;
	}

	void test(String value, String expectedEncodedValue) {
		test(value, expectedEncodedValue, value);
	}
	void test(String value, String expectedEncodedValue, Map<String, String> options) {
		test(value, expectedEncodedValue, value, options);
	}
	void test(String value, String expectedEncodedValue, Map<String, String> options, Charset charset) {
		test(value, expectedEncodedValue, value, options, charset);
	}
	void test(String value, String expectedEncodedValue, Map<String, String> options, String lineBreak) {
		String expectedDecodedValue = value;
		if (lineBreak != null && value != null) {
			java.util.List<String> lines = java.util.List.of(value.split("\r?\n", -1));
			if (1 < lines.size()) {
				expectedDecodedValue = String.join(lineBreak, lines);
			}
		}
		test(value, expectedEncodedValue, expectedDecodedValue, options, lineBreak);
	}
	void test(String value, String expectedEncodedValue, Map<String, String> options, ZoneId zone) {
		test(value, expectedEncodedValue, value, options, zone);
	}

	void test(String value, String expectedEncodedValue, String expectedDecodedValue) {
		test(condition(value), expectedEncodedValue, expectedDecodedValue, encoder(), decoder());
	}
	void test(String value, String expectedEncodedValue, String expectedDecodedValue, Map<String, String> options) {
		test(condition(value, options), expectedEncodedValue, expectedDecodedValue, encoder(), decoder());
	}
	void test(String value, String expectedEncodedValue, String expectedDecodedValue, Map<String, String> options, Charset charset) {
		test(condition(value, options, charset, null, null), expectedEncodedValue, expectedDecodedValue, encoder(), decoder());
	}
	void test(String value, String expectedEncodedValue, String expectedDecodedValue, Map<String, String> options, String lineBreak) {
		test(condition(value, options, null, lineBreak, null), expectedEncodedValue, expectedDecodedValue, encoder(), decoder());
	}
	void test(String value, String expectedEncodedValue, String expectedDecodedValue, Map<String, String> options, ZoneId zone) {
		test(condition(value, options, null, null, zone), expectedEncodedValue, expectedDecodedValue, encoder(), decoder());
	}

	void testEncoder(String value, String expectedEncodedValue) {
		testEncoder(condition(value), expectedEncodedValue, encoder());
	}
	void testEncoder(String value, String expectedEncodedValue, Map<String, String> options) {
		testEncoder(condition(value, options), expectedEncodedValue, encoder());
	}
	void testEncoder(String value, String expectedEncodedValue, Map<String, String> options, Charset charset) {
		testEncoder(condition(value, options, charset, null, null), expectedEncodedValue, encoder());
	}
	void testEncoder(String value, String expectedEncodedValue, Map<String, String> options, String lineBreak) {
		testEncoder(condition(value, options, null, lineBreak, null), expectedEncodedValue, encoder());
	}
	void testEncoder(String value, String expectedEncodedValue, Map<String, String> options, ZoneId zone) {
		testEncoder(condition(value, options, null, null, zone), expectedEncodedValue, encoder());
	}

	void testDecoder(String value, String expectedDecodedValue) {
		testDecoder(condition(value), expectedDecodedValue, decoder());
	}
	void testDecoder(String value, String expectedDecodedValue, Map<String, String> options) {
		testDecoder(condition(value, options), expectedDecodedValue, decoder());
	}
	void testDecoder(String value, String expectedDecodedValue, Map<String, String> options, Charset charset) {
		testDecoder(condition(value, options, charset, null, null), expectedDecodedValue, decoder());
	}
	void testDecoder(String value, String expectedDecodedValue, Map<String, String> options, String lineBreak) {
		testDecoder(condition(value, options, null, lineBreak, null), expectedDecodedValue, decoder());
	}
	void testDecoder(String value, String expectedDecodedValue, Map<String, String> options, ZoneId zone) {
		testDecoder(condition(value, options, null, null, zone), expectedDecodedValue, decoder());
	}

	private Function<DencodeCondition, String> encoder() {
		if (encoder == null) {
			throw new IllegalStateException("Encoder is not specified.");
		}
		return encoder;
	}

	private Function<DencodeCondition, String> decoder() {
		if (decoder == null) {
			throw new IllegalStateException("Decoder is not specified.");
		}
		return decoder;
	}

	private static DencodeCondition condition(String value) {
		return condition(value, DEFAULT_OPTIONS);
	}

	private static DencodeCondition condition(String value, Map<String, String> options) {
		return condition(value, options, DEFAULT_CHARSET, DEFAULT_LINE_BREAK, DEFAULT_ZONE);
	}

	private static DencodeCondition condition(String value, Map<String, String> options, Charset charset, String lineBreak, ZoneId zone) {
		if (options == null) {
			options = DEFAULT_OPTIONS;
		}
		if (charset == null) {
			charset = DEFAULT_CHARSET;
		}
		if (lineBreak == null) {
			lineBreak = DEFAULT_LINE_BREAK;
		}
		if (zone == null) {
			zone = DEFAULT_ZONE;
		}

		return new DencodeCondition(value, charset, lineBreak, zone, new HashMap<>(options));
	}

	private static DencodeCondition condition(String value, DencodeCondition base) {
		return condition(value, base.options(), base.charset(), base.lineBreak(), base.zone());
	}

	private static void test(DencodeCondition condition, String expectedEncodedValue, String expectedDecodedValue, Function<DencodeCondition, String> encoder, Function<DencodeCondition, String> decoder) {
		String encodedValue = encoder.apply(condition);
		assertEquals(expectedEncodedValue, encodedValue);

		if (expectedEncodedValue == null) {
			return;
		}

		String decodedValue = decoder.apply(condition(encodedValue, condition));
		assertEquals(expectedDecodedValue, decodedValue);
	}

	private static void testEncoder(DencodeCondition condition, String expectedEncodedValue, Function<DencodeCondition, String> encoder) {
		String encodedValue = encoder.apply(condition);
		assertEquals(expectedEncodedValue, encodedValue);
	}

	private static void testDecoder(DencodeCondition condition, String expectedDecodedValue, Function<DencodeCondition, String> decoder) {
		String decodedValue = decoder.apply(condition);
		assertEquals(expectedDecodedValue, decodedValue);
	}
}
