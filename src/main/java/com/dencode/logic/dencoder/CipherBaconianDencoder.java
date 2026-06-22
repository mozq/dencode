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

import java.util.Map;

import com.dencode.logic.dencoder.annotation.Dencoder;
import com.dencode.logic.dencoder.annotation.DencoderFunction;
import com.dencode.logic.model.DencodeCondition;

@Dencoder(type="cipher", method="cipher.baconian", hasEncoder=true, hasDecoder=true)
public class CipherBaconianDencoder {
	private static final int CODE_LEN = 5;

	private static final String DEFAULT_VARIANT = "26";
	private static final String DEFAULT_NOTATION = "ab";
	private static final String DEFAULT_GROUPING = "space";
	private static final char GROUPING_NONE_CHAR = '\0';
	private static final Map<String, char[]> VARIANT_CHARS = Map.of(
			DEFAULT_VARIANT, "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray(),
			"24", "ABCDEFGHIKLMNOPQRSTUWXYZ".toCharArray()
			);
	private static final Map<String, char[]> NOTATION_CHARS = Map.of(
			DEFAULT_NOTATION, new char[] {'A', 'B'},
			"01", new char[] {'0', '1'}
			);
	private static final Map<String, Character> GROUPING_CHARS = Map.of(
			DEFAULT_GROUPING, ' ',
			"none", GROUPING_NONE_CHAR
			);

	private CipherBaconianDencoder() {
		// NOP
	}


	@DencoderFunction
	public static String encCipherBaconian(DencodeCondition cond) {
		return encCipherBaconian(
				cond.value(),
				cond.option("cipher.baconian.variant", DEFAULT_VARIANT),
				cond.option("cipher.baconian.notation", DEFAULT_NOTATION),
				cond.option("cipher.baconian.grouping", DEFAULT_GROUPING)
				);
	}

	@DencoderFunction
	public static String decCipherBaconian(DencodeCondition cond) {
		return decCipherBaconian(
				cond.value(),
				cond.option("cipher.baconian.variant", DEFAULT_VARIANT)
				);
	}

	private static String encCipherBaconian(String val, String variant, String notation, String grouping) {
		if (val == null || val.isEmpty()) {
			return val;
		}

		char[] variantChars = VARIANT_CHARS.getOrDefault(variant, VARIANT_CHARS.get(DEFAULT_VARIANT));
		char[] notationChars = NOTATION_CHARS.getOrDefault(notation, NOTATION_CHARS.get(DEFAULT_NOTATION));
		char groupingCh = GROUPING_CHARS.getOrDefault(grouping, GROUPING_CHARS.get(DEFAULT_GROUPING));

		int len = val.length();
		StringBuilder sb = new StringBuilder(len * ((groupingCh == GROUPING_NONE_CHAR) ? CODE_LEN : CODE_LEN + 1));
		boolean hasPrev = false;
		boolean prevSupported = false;

		for (int i = 0; i < len; i++) {
			char ch = val.charAt(i);
			int index = charIndex(ch, variantChars);
			boolean supported = (index != -1);

			if (groupingCh != GROUPING_NONE_CHAR && hasPrev && (prevSupported || supported)) {
				sb.append(groupingCh);
			}

			if (!supported) {
				sb.append(ch);
			} else {
				appendCode(sb, index, notationChars);
			}

			hasPrev = true;
			prevSupported = supported;
		}

		return sb.toString();
	}

	private static String decCipherBaconian(String val, String variant) {
		if (val == null || val.isEmpty()) {
			return val;
		}

		char[] decodeChars = VARIANT_CHARS.getOrDefault(variant, VARIANT_CHARS.get(DEFAULT_VARIANT));

		int len = val.length();
		StringBuilder sb = new StringBuilder(len / CODE_LEN);
		boolean prevDecodedCode = false;
		for (int i = 0; i < len;) {
			char ch = val.charAt(i);
			String notation = notationOf(ch);
			if (notation != null) {
				char[] notationChars = NOTATION_CHARS.get(notation);
				int start = i;
				do {
					i++;
				} while (i < len && isNotationChar(val.charAt(i), notationChars));
				prevDecodedCode = decodeRun(val, start, i, notation, notationChars, decodeChars, sb);
			} else if (ch == ' ') {
				int start = i;
				do {
					i++;
				} while (i < len && val.charAt(i) == ' ');
				int spaces = i - start;
				int decodedSpaces = (prevDecodedCode || startsDecodableRun(val, i, decodeChars)) ? (spaces / 2) : spaces;
				for (int j = 0; j < decodedSpaces; j++) {
					sb.append(' ');
				}
				prevDecodedCode = false;
			} else {
				sb.append(ch);
				prevDecodedCode = false;
				i++;
			}
		}

		return sb.toString();
	}

	private static int charIndex(char ch, char[] variantChars) {
		if ('a' <= ch && ch <= 'z') {
			ch = (char)(ch - ('a' - 'A'));
		}

		if (ch < 'A' || 'Z' < ch) {
			return -1;
		}

		// The 26-letter variant maps A-Z directly to indexes 0-25.
		if (variantChars.length == 26) {
			return ch - 'A';
		}

		// The 24-letter variant merges I/J and U/V, then subtracts the omitted letters from the A-Z index.
		if (ch == 'J') {
			ch = 'I';
		} else if (ch == 'V') {
			ch = 'U';
		}

		int index = ch - 'A';
		if ('K' <= ch) {
			index--;
		}
		if ('W' <= ch) {
			index--;
		}

		return (index < variantChars.length) ? index : -1;
	}

	private static void appendCode(StringBuilder sb, int index, char[] notationChars) {
		for (int bit = CODE_LEN - 1; 0 <= bit; bit--) {
			sb.append(notationChars[((index & (1 << bit)) == 0) ? 0 : 1]);
		}
	}

	private static boolean decodeRun(String val, int start, int end, String notation, char[] notationChars, char[] decodeChars, StringBuilder sb) {
		if (!DEFAULT_NOTATION.equals(notation)) {
			if ((end - start) % CODE_LEN != 0) {
				sb.append(val, start, end);
				return false;
			}
		}

		int i = start;
		boolean decoded = false;
		for (; i + CODE_LEN <= end; i += CODE_LEN) {
			int index = codeIndex(val, i, notationChars);
			if (appendDecodedChar(index, decodeChars, sb)) {
				decoded = true;
			} else {
				sb.append(val, i, i + CODE_LEN);
			}
		}

		if (i < end) {
			sb.append(val, i, end);
		}

		return decoded && (i == end);
	}

	private static int codeIndex(String val, int offset, char[] notationChars) {
		int index = 0;
		for (int i = 0; i < CODE_LEN; i++) {
			index <<= 1;
			if (val.charAt(offset + i) == notationChars[1]) {
				index |= 1;
			}
		}
		return index;
	}

	private static boolean appendDecodedChar(int index, char[] decodeChars, StringBuilder sb) {
		if (0 <= index && index < decodeChars.length) {
			sb.append(decodeChars[index]);
			return true;
		}

		return false;
	}

	private static boolean startsDecodableRun(String val, int offset, char[] decodeChars) {
		int len = val.length();
		if (len <= offset) {
			return false;
		}

		String notation = notationOf(val.charAt(offset));
		if (notation == null) {
			return false;
		}

		char[] notationChars = NOTATION_CHARS.get(notation);
		if (!DEFAULT_NOTATION.equals(notation)) {
			if (len < offset + CODE_LEN) {
				return false;
			}

			for (int i = 1; i < CODE_LEN; i++) {
				if (!isNotationChar(val.charAt(offset + i), notationChars)) {
					return false;
				}
			}

			if (offset + CODE_LEN < len && isNotationChar(val.charAt(offset + CODE_LEN), notationChars)) {
				return false;
			}

			int index = codeIndex(val, offset, notationChars);
			return (0 <= index && index < decodeChars.length);
		}

		if (len < offset + CODE_LEN) {
			return false;
		}

		for (int i = 1; i < CODE_LEN; i++) {
			if (!isNotationChar(val.charAt(offset + i), notationChars)) {
				return false;
			}
		}

		int index = codeIndex(val, offset, notationChars);
		return (0 <= index && index < decodeChars.length);
	}

	private static String notationOf(char ch) {
		for (Map.Entry<String, char[]> entry : NOTATION_CHARS.entrySet()) {
			if (isNotationChar(ch, entry.getValue())) {
				return entry.getKey();
			}
		}

		return null;
	}

	private static boolean isNotationChar(char ch, char[] notationChars) {
		return (ch == notationChars[0] || ch == notationChars[1]);
	}
}
