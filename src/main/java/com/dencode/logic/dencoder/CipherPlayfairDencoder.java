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

import com.dencode.logic.dencoder.annotation.Dencoder;
import com.dencode.logic.dencoder.annotation.DencoderFunction;
import com.dencode.logic.model.DencodeCondition;

@Dencoder(type="cipher", method="cipher.playfair", hasEncoder=true, hasDecoder=true)
public class CipherPlayfairDencoder {
	private static final int TABLE_SIZE = 5;
	private static final int ALPHABET_LEN = TABLE_SIZE * TABLE_SIZE;
	private static final char DEFAULT_FILLER_CHAR = 'X';
	private static final String DEFAULT_ALPHABET = "ABCDEFGHIKLMNOPQRSTUVWXYZ";
	private static final PlayfairTable DEFAULT_TABLE = new PlayfairTable(DEFAULT_ALPHABET.toCharArray());

	private CipherPlayfairDencoder() {
		// NOP
	}


	@DencoderFunction
	public static String encCipherPlayfair(DencodeCondition cond) {
		return encCipherPlayfair(
				cond.value(),
				cond.option("cipher.playfair.key", ""),
				DEFAULT_FILLER_CHAR
				);
	}

	@DencoderFunction
	public static String decCipherPlayfair(DencodeCondition cond) {
		return decCipherPlayfair(
				cond.value(),
				cond.option("cipher.playfair.key", ""),
				DEFAULT_FILLER_CHAR
				);
	}

	private static String encCipherPlayfair(String val, String key, char fillerChar) {
		if (val == null || val.isEmpty()) {
			return val;
		}

		PlayfairTable table = table(key);
		StringBuilder sb = new StringBuilder(val.length());
		StringBuilder sep = null;

		boolean hasFirst = false;
		char firstCh = '\0';
		char firstNch = '\0';

		int len = val.length();
		for (int i = 0; i < len; i++) {
			char ch = val.charAt(i);
			char nch = normalize(ch);
			if (nch == '\0') {
				if (hasFirst) {
					if (sep == null) {
						sep = new StringBuilder();
					}
					sep.append(ch);
				} else {
					sb.append(ch);
				}
				continue;
			}

			if (!hasFirst) {
				hasFirst = true;
				firstCh = ch;
				firstNch = nch;
			} else if (firstNch == nch) {
				encPair(sb, firstCh, firstNch, fillerChar, fillerChar, table, null);
				if (sep != null) {
					sb.append(sep);
					sep.setLength(0);
				}
				firstCh = ch;
				firstNch = nch;
			} else {
				encPair(sb, firstCh, firstNch, ch, nch, table, sep);
				if (sep != null) {
					sep.setLength(0);
				}
				hasFirst = false;
			}
		}

		if (hasFirst) {
			encPair(sb, firstCh, firstNch, fillerChar, fillerChar, table, null);
			if (sep != null) {
				sb.append(sep);
			}
		}

		return sb.toString();
	}

	private static String decCipherPlayfair(String val, String key, char fillerChar) {
		if (val == null || val.isEmpty()) {
			return val;
		}

		PlayfairTable table = table(key);
		StringBuilder sb = new StringBuilder(val.length());
		StringBuilder sep = null;

		boolean hasFirst = false;
		char firstCh = '\0';
		char firstNch = '\0';

		int len = val.length();
		for (int i = 0; i < len; i++) {
			char ch = val.charAt(i);
			char nch = normalize(ch);
			if (nch == '\0') {
				if (hasFirst) {
					if (sep == null) {
						sep = new StringBuilder();
					}
					sep.append(ch);
				} else {
					sb.append(ch);
				}
				continue;
			}

			if (!hasFirst) {
				hasFirst = true;
				firstCh = ch;
				firstNch = nch;
			} else {
				decPair(sb, firstCh, firstNch, ch, nch, table, sep);
				if (sep != null) {
					sep.setLength(0);
				}
				hasFirst = false;
			}
		}

		if (hasFirst) {
			sb.append(firstCh);
			if (sep != null) {
				sb.append(sep);
			}
		}

		return sb.toString();
	}

	private static void encPair(StringBuilder sb, char ch1, char nch1, char ch2, char nch2, PlayfairTable table, CharSequence sep) {
		convertPair(sb, ch1, nch1, ch2, nch2, table, 1, sep);
	}

	private static void decPair(StringBuilder sb, char ch1, char nch1, char ch2, char nch2, PlayfairTable table, CharSequence sep) {
		convertPair(sb, ch1, nch1, ch2, nch2, table, -1, sep);
	}

	private static void convertPair(StringBuilder sb, char ch1, char nch1, char ch2, char nch2, PlayfairTable table, int offset, CharSequence sep) {
		int index1 = table.index(nch1);
		int index2 = table.index(nch2);
		int row1 = index1 / TABLE_SIZE;
		int col1 = index1 % TABLE_SIZE;
		int row2 = index2 / TABLE_SIZE;
		int col2 = index2 % TABLE_SIZE;

		char cch1;
		char cch2;
		if (row1 == row2) {
			cch1 = table.charAt(row1, shift(col1, offset));
			cch2 = table.charAt(row2, shift(col2, offset));
		} else if (col1 == col2) {
			cch1 = table.charAt(shift(row1, offset), col1);
			cch2 = table.charAt(shift(row2, offset), col2);
		} else {
			cch1 = table.charAt(row1, col2);
			cch2 = table.charAt(row2, col1);
		}

		sb.append(applyCase(cch1, ch1));
		if (sep != null) {
			sb.append(sep);
		}
		sb.append(applyCase(cch2, ch2));
	}

	private static int shift(int value, int offset) {
		int shifted = value + offset;
		if (shifted < 0) {
			return TABLE_SIZE - 1;
		}
		if (TABLE_SIZE <= shifted) {
			return 0;
		}
		return shifted;
	}

	private static char applyCase(char ch, char inputCh) {
		return ('a' <= inputCh && inputCh <= 'z') ? (char)(ch + ('a' - 'A')) : ch;
	}

	private static PlayfairTable table(String key) {
		if (key == null || key.isEmpty()) {
			return DEFAULT_TABLE;
		}

		char[] chars = new char[ALPHABET_LEN];
		int usedBits = appendUnique(chars, 0, key);
		appendUnique(chars, usedBits, DEFAULT_ALPHABET);
		return new PlayfairTable(chars);
	}

	private static int appendUnique(char[] chars, int usedBits, String value) {
		if (value == null || value.isEmpty()) {
			return usedBits;
		}

		int offset = Integer.bitCount(usedBits);
		int len = value.length();
		for (int i = 0; i < len; i++) {
			char ch = normalize(value.charAt(i));
			if (ch == '\0') {
				continue;
			}

			int index = ch - 'A';
			int bit = 1 << index;
			if ((usedBits & bit) == 0) {
				usedBits |= bit;
				chars[offset++] = ch;
			}
		}

		return usedBits;
	}

	private static char normalize(char ch) {
		if ('a' <= ch && ch <= 'z') {
			ch = (char)(ch - ('a' - 'A'));
		}

		if (ch == 'J') {
			return 'I';
		}
		if ('A' <= ch && ch <= 'Z') {
			return ch;
		}

		return '\0';
	}

	private static class PlayfairTable {
		private final char[] chars;
		private final int[] indexes;

		private PlayfairTable(char[] chars) {
			this.chars = chars;
			this.indexes = new int[26];
			for (int i = 0; i < chars.length; i++) {
				this.indexes[chars[i] - 'A'] = i;
			}
			this.indexes['J' - 'A'] = this.indexes['I' - 'A'];
		}

		private int index(char ch) {
			return this.indexes[ch - 'A'];
		}

		private char charAt(int row, int col) {
			return this.chars[(row * TABLE_SIZE) + col];
		}
	}
}
