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
package com.dencode.logic.util;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JapaneseKanaUtils {

	private static final int HIRAGANA_KATAKANA_DIFF = 'ァ' - 'ぁ';

	public enum Script {
		HIRAGANA,
		KATAKANA,
		ROMAJI_HEPBURN,
		ROMAJI_KUNREI
	}

	private enum Romanization {
		HEPBURN,
		KUNREI
	}

	private static final List<Syllable> SYLLABLES = createSyllables();
	private static final Map<Char, List<Romaji>> ROMAJI_MAP = createRomajiMap(SYLLABLES);
	private static final Map<Char, List<Syllable>> KANA_SYLLABLE_MAP = createKanaSyllableMap(SYLLABLES);

	private JapaneseKanaUtils() {
		// NOP
	}

	public static String convert(String val, Script script) {
		if (val == null) {
			return null;
		}
		if (script == null) {
			script = Script.HIRAGANA;
		}

		String normalized = normalizeNfcIfNeeded(val);

		return switch (script) {
			case HIRAGANA -> toKana(normalized, false);
			case KATAKANA -> toKana(normalized, true);
			case ROMAJI_HEPBURN -> toRomaji(normalized, Romanization.HEPBURN);
			case ROMAJI_KUNREI -> toRomaji(normalized, Romanization.KUNREI);
		};
	}

	private static String normalizeNfcIfNeeded(String val) {
		if (Normalizer.isNormalized(val, Normalizer.Form.NFC)) {
			return val;
		}
		return Normalizer.normalize(val, Normalizer.Form.NFC);
	}

	private static String toKana(String val, boolean katakana) {
		StringBuilder sb = new StringBuilder(val.length());
		RomajiMatcher romajiMatcher = new RomajiMatcher();

		for (int i = 0; i < val.length();) {
			int romajiEnd = romajiRunEnd(val, i);
			if (i < romajiEnd) {
				int mark = sb.length();
				if (tryAppendRomajiAsHiragana(val, i, romajiEnd, sb, romajiMatcher)) {
					if (katakana) {
						hiraganaRangeToKatakana(sb, mark, sb.length());
					}
				} else {
					sb.setLength(mark);
					sb.append(val, i, romajiEnd);
				}
				i = romajiEnd;
				continue;
			}

			int punctuationEnd = appendKanaPunctuation(sb, val, i);
			if (i < punctuationEnd) {
				i = punctuationEnd;
				continue;
			}

			sb.append(toKanaChar(val.charAt(i), katakana));
			i++;
		}

		return sb.toString();
	}

	private static String toRomaji(String val, Romanization romanization) {
		StringBuilder sb = new StringBuilder(val.length());
		RomajiMatcher romajiMatcher = new RomajiMatcher();
		KanaMatcher kanaMatcher = new KanaMatcher();

		for (int i = 0; i < val.length();) {
			int romajiEnd = romajiRunEnd(val, i);
			if (i < romajiEnd) {
				int mark = sb.length();
				if (!tryAppendRomajiAsRomaji(val, i, romajiEnd, sb, romanization, romajiMatcher)) {
					sb.setLength(mark);
					sb.append(val, i, romajiEnd);
				}
				i = romajiEnd;
				continue;
			}

			int punctuationEnd = appendRomajiPunctuation(sb, val, i);
			if (i < punctuationEnd) {
				i = punctuationEnd;
				continue;
			}

			int mark = sb.length();
			int nextIdx = appendKanaAsRomaji(sb, val, i, val.length(), romanization, kanaMatcher);
			if (i < nextIdx) {
				i = nextIdx;
			} else {
				sb.setLength(mark);
				sb.append(val.charAt(i));
				i++;
			}
		}

		return sb.toString();
	}

	private static int romajiRunEnd(String val, int idx) {
		int i = idx;
		while (i < val.length()) {
			char ch = normalizeRomaji(val.charAt(i));
			if (!(('a' <= ch && ch <= 'z') || ch == '\'')) {
				break;
			}
			i++;
		}
		return i;
	}

	private static boolean tryAppendRomajiAsHiragana(String val, int start, int end, StringBuilder sb, RomajiMatcher romajiMatcher) {
		int i = start;

		while (i < end) {
			char ch = normalizeRomaji(val.charAt(i));
			char nch = normalizeRomaji((i + 1 < end) ? val.charAt(i + 1) : '\0');

			if (ch == '\'') {
				return false;
			}

			if (ch == 'n') {
				if (nch == '\0') {
					sb.append('ん');
					i++;
					continue;
				}

				if (nch == '\'') {
					sb.append('ん');
					i += 2;
					continue;
				}

				if (!isVowel(nch) && nch != 'y') {
					sb.append('ん');
					i++;
					continue;
				}
			}

			if (ch == nch && isConsonant(ch) && ch != 'n') {
				sb.append('っ');
				i++;
				continue;
			}

			Romaji romaji = romajiMatcher.find(val, i, end);
			if (romaji == null) {
				return false;
			}
			Syllable syllable = romaji.syllable();
			sb.append(syllable.hiragana());
			i += romaji.value().length();
		}

		return true;
	}

	private static boolean tryAppendRomajiAsRomaji(String val, int start, int end, StringBuilder sb, Romanization romanization, RomajiMatcher romajiMatcher) {
		int i = start;

		while (i < end) {
			char ch = normalizeRomaji(val.charAt(i));
			char nch = normalizeRomaji((i + 1 < end) ? val.charAt(i + 1) : '\0');

			if (ch == '\'') {
				return false;
			}

			if (ch == 'n') {
				if (nch == '\0') {
					sb.append('n');
					i++;
					continue;
				}

				if (nch == '\'') {
					sb.append("n'");
					i += 2;
					continue;
				}

				if (!isVowel(nch) && nch != 'y') {
					sb.append('n');
					i++;
					continue;
				}
			}

			if (ch == nch && isConsonant(ch) && ch != 'n') {
				sb.append(ch);
				i++;
				continue;
			}

			Romaji romaji = romajiMatcher.find(val, i, end);
			if (romaji == null) {
				return false;
			}
			Syllable syllable = romaji.syllable();
			sb.append(syllable.romaji(romanization));
			i += romaji.value().length();
		}

		return true;
	}

	private static boolean romajiMatches(String val, int start, int end, String pattern) {
		if (end - start < pattern.length()) {
			return false;
		}
		for (int i = 0; i < pattern.length(); i++) {
			if (normalizeRomaji(val.charAt(start + i)) != pattern.charAt(i)) {
				return false;
			}
		}
		return true;
	}

	private static int appendKanaAsRomaji(StringBuilder sb, String val, int start, int end, Romanization romanization, KanaMatcher kanaMatcher) {
		char ch = val.charAt(start);
		char hiragana = toHiraganaChar(ch);

		if (hiragana == 'っ') {
			String nextRomaji = findKanaRomaji(val, start + 1, end, romanization, kanaMatcher);
			if (nextRomaji == null || nextRomaji.isEmpty() || isVowel(nextRomaji.charAt(0))) {
				sb.append("xtsu");
			} else if (nextRomaji.startsWith("ch")) {
				sb.append('t');
			} else {
				sb.append(nextRomaji.charAt(0));
			}
			return start + 1;
		}

		if (hiragana == 'ん') {
			String nextRomaji = findKanaRomaji(val, start + 1, end, romanization, kanaMatcher);
			sb.append('n');
			if (nextRomaji != null && !nextRomaji.isEmpty() && (isVowel(nextRomaji.charAt(0)) || nextRomaji.charAt(0) == 'y')) {
				sb.append('\'');
			}
			return start + 1;
		}

		if (ch == 'ー') {
			char vowel = lastVowel(sb);
			sb.append((vowel == 0) ? 'ー' : vowel);
			return start + 1;
		}

		Syllable syllable = kanaMatcher.find(val, start, end);
		if (syllable != null) {
			sb.append(syllable.romaji(romanization));
			return start + syllable.hiragana().length();
		}

		return start;
	}

	private static String findKanaRomaji(String val, int start, int end, Romanization romanization, KanaMatcher kanaMatcher) {
		Syllable syllable = kanaMatcher.find(val, start, end);
		if (syllable == null) {
			return null;
		}
		return syllable.romaji(romanization);
	}

	private static boolean kanaMatches(String val, int start, int end, String hiragana) {
		if (end - start < hiragana.length()) {
			return false;
		}
		for (int i = 0; i < hiragana.length(); i++) {
			if (toHiraganaChar(val.charAt(start + i)) != hiragana.charAt(i)) {
				return false;
			}
		}
		return true;
	}

	private static int appendKanaPunctuation(StringBuilder sb, String val, int idx) {
		char ch = normalizeRomaji(val.charAt(idx));
		char kanaPunctuation = switch (ch) {
			case ',' -> '、';
			case '.' -> '。';
			default -> '\0';
		};
		if (kanaPunctuation == '\0') {
			return idx;
		}

		if (!endsWithKana(sb)) {
			return idx;
		}

		int nextIdx = idx + 1;
		if (nextIdx == val.length() || isLineBreak(val.charAt(nextIdx))) {
			sb.append(kanaPunctuation);
			return nextIdx;
		}
		if (normalizeRomaji(val.charAt(nextIdx)) == ' ') {
			sb.append(kanaPunctuation);
			return nextIdx + 1;
		}

		return idx;
	}

	private static int appendRomajiPunctuation(StringBuilder sb, String val, int idx) {
		char ch = val.charAt(idx);
		char punctuation = switch (ch) {
			case '、', ',', '，' -> ',';
			case '。', '.', '．' -> '.';
			default -> '\0';
		};
		if (punctuation == '\0') {
			return idx;
		}

		int nextIdx = idx + 1;
		sb.append(punctuation);
		if (nextIdx == val.length() || isLineBreak(val.charAt(nextIdx))) {
			return nextIdx;
		}
		if (normalizeRomaji(val.charAt(nextIdx)) == ' ') {
			sb.append(' ');
			return nextIdx + 1;
		}
		if (ch == '、' || ch == '。') {
			sb.append(' ');
		}
		return nextIdx;
	}

	private static void hiraganaRangeToKatakana(StringBuilder sb, int start, int end) {
		for (int i = start; i < end; i++) {
			char ch = sb.charAt(i);
			sb.setCharAt(i, toKatakanaChar(ch));
		}
	}

	private static char toKanaChar(char ch, boolean katakana) {
		return katakana ? toKatakanaChar(ch) : toHiraganaChar(ch);
	}

	private static char toHiraganaChar(char ch) {
		if ('ァ' <= ch && ch <= 'ヶ') {
			return (char)(ch - HIRAGANA_KATAKANA_DIFF);
		}
		return ch;
	}

	private static char toKatakanaChar(char ch) {
		if ('ぁ' <= ch && ch <= 'ゖ') {
			return (char)(ch + HIRAGANA_KATAKANA_DIFF);
		}
		return ch;
	}

	private static char lastVowel(StringBuilder sb) {
		for (int i = sb.length() - 1; 0 <= i; i--) {
			char ch = sb.charAt(i);
			if (isVowel(ch)) {
				return ch;
			}
		}
		return 0;
	}

	private static boolean endsWithKana(StringBuilder sb) {
		if (sb.isEmpty()) {
			return false;
		}
		char ch = sb.charAt(sb.length() - 1);
		return ('ぁ' <= ch && ch <= 'ゖ') || ('ァ' <= ch && ch <= 'ヶ');
	}

	private static boolean isLineBreak(char ch) {
		return ch == '\n' || ch == '\r';
	}

	private static char normalizeRomaji(char ch) {
		if ('Ａ' <= ch && ch <= 'Ｚ') {
			return (char)(ch - 'Ａ' + 'a');
		}
		if ('ａ' <= ch && ch <= 'ｚ') {
			return (char)(ch - 'ａ' + 'a');
		}
		if ('A' <= ch && ch <= 'Z') {
			return (char)(ch - 'A' + 'a');
		}

		return switch (ch) {
		case '’', '＇' -> '\'';
		case '，' -> ',';
		case '．' -> '.';
		case '　' -> ' ';
		default -> ch;
		};
	}

	private static boolean isVowel(char ch) {
		return ch == 'a' || ch == 'i' || ch == 'u' || ch == 'e' || ch == 'o';
	}

	private static boolean isConsonant(char ch) {
		return ('a' <= ch && ch <= 'z') && !isVowel(ch);
	}

	private static List<Syllable> createSyllables() {
		Syllable[] syllables = {
			Syllable.of("きゃ", "kya", "kya"),
			Syllable.of("きゅ", "kyu", "kyu"),
			Syllable.of("きょ", "kyo", "kyo"),
			Syllable.of("ぎゃ", "gya", "gya"),
			Syllable.of("ぎゅ", "gyu", "gyu"),
			Syllable.of("ぎょ", "gyo", "gyo"),
			Syllable.of("しゃ", "sha", "sya"),
			Syllable.of("しゅ", "shu", "syu"),
			Syllable.of("しょ", "sho", "syo"),
			Syllable.of("じゃ", "ja", "zya", "jya"),
			Syllable.of("じゅ", "ju", "zyu", "jyu"),
			Syllable.of("じょ", "jo", "zyo", "jyo"),
			Syllable.of("ちゃ", "cha", "tya", "cya"),
			Syllable.of("ちゅ", "chu", "tyu", "cyu"),
			Syllable.of("ちょ", "cho", "tyo", "cyo"),
			Syllable.of("ぢゃ", "ja", "zya", "dya"),
			Syllable.of("ぢゅ", "ju", "zyu", "dyu"),
			Syllable.of("ぢょ", "jo", "zyo", "dyo"),
			Syllable.of("にゃ", "nya", "nya"),
			Syllable.of("にゅ", "nyu", "nyu"),
			Syllable.of("にょ", "nyo", "nyo"),
			Syllable.of("ひゃ", "hya", "hya"),
			Syllable.of("ひゅ", "hyu", "hyu"),
			Syllable.of("ひょ", "hyo", "hyo"),
			Syllable.of("びゃ", "bya", "bya"),
			Syllable.of("びゅ", "byu", "byu"),
			Syllable.of("びょ", "byo", "byo"),
			Syllable.of("ぴゃ", "pya", "pya"),
			Syllable.of("ぴゅ", "pyu", "pyu"),
			Syllable.of("ぴょ", "pyo", "pyo"),
			Syllable.of("みゃ", "mya", "mya"),
			Syllable.of("みゅ", "myu", "myu"),
			Syllable.of("みょ", "myo", "myo"),
			Syllable.of("りゃ", "rya", "rya"),
			Syllable.of("りゅ", "ryu", "ryu"),
			Syllable.of("りょ", "ryo", "ryo"),
			Syllable.of("ふぁ", "fa", "fa", "fwa"),
			Syllable.of("ふぃ", "fi", "fi", "fyi"),
			Syllable.of("ふぇ", "fe", "fe", "fye"),
			Syllable.of("ふぉ", "fo", "fo", "fwo"),
			Syllable.of("てぃ", "ti", "ti", List.of("thi")),
			Syllable.of("でぃ", "di", "di", List.of("dhi")),
			Syllable.of("ちぇ", "che", "tye", "cye"),
			Syllable.of("じぇ", "je", "zye", "jye"),
			Syllable.of("うぃ", "wi", "wi", "whi"),
			Syllable.of("うぇ", "we", "we", "whe"),
			Syllable.of("うぉ", "wo", "wo", "who"),
			Syllable.of("ゔぁ", "va", "va"),
			Syllable.of("ゔぃ", "vi", "vi"),
			Syllable.of("ゔぇ", "ve", "ve"),
			Syllable.of("ゔぉ", "vo", "vo"),

			Syllable.of("あ", "a", "a"),
			Syllable.of("い", "i", "i"),
			Syllable.of("う", "u", "u"),
			Syllable.of("え", "e", "e"),
			Syllable.of("お", "o", "o"),
			Syllable.of("か", "ka", "ka"),
			Syllable.of("き", "ki", "ki"),
			Syllable.of("く", "ku", "ku"),
			Syllable.of("け", "ke", "ke"),
			Syllable.of("こ", "ko", "ko"),
			Syllable.of("が", "ga", "ga"),
			Syllable.of("ぎ", "gi", "gi"),
			Syllable.of("ぐ", "gu", "gu"),
			Syllable.of("げ", "ge", "ge"),
			Syllable.of("ご", "go", "go"),
			Syllable.of("さ", "sa", "sa"),
			Syllable.of("し", "shi", "si"),
			Syllable.of("す", "su", "su"),
			Syllable.of("せ", "se", "se"),
			Syllable.of("そ", "so", "so"),
			Syllable.of("ざ", "za", "za"),
			Syllable.of("じ", "ji", "zi"),
			Syllable.of("ず", "zu", "zu"),
			Syllable.of("ぜ", "ze", "ze"),
			Syllable.of("ぞ", "zo", "zo"),
			Syllable.of("た", "ta", "ta"),
			Syllable.of("ち", "chi", "ti", "ci"),
			Syllable.of("つ", "tsu", "tu"),
			Syllable.of("て", "te", "te"),
			Syllable.of("と", "to", "to"),
			Syllable.of("だ", "da", "da"),
			Syllable.of("ぢ", "ji", "zi", "di"),
			Syllable.of("づ", "zu", "zu", "du"),
			Syllable.of("で", "de", "de"),
			Syllable.of("ど", "do", "do"),
			Syllable.of("な", "na", "na"),
			Syllable.of("に", "ni", "ni"),
			Syllable.of("ぬ", "nu", "nu"),
			Syllable.of("ね", "ne", "ne"),
			Syllable.of("の", "no", "no"),
			Syllable.of("は", "ha", "ha"),
			Syllable.of("ひ", "hi", "hi"),
			Syllable.of("ふ", "fu", "hu"),
			Syllable.of("へ", "he", "he"),
			Syllable.of("ほ", "ho", "ho"),
			Syllable.of("ば", "ba", "ba"),
			Syllable.of("び", "bi", "bi"),
			Syllable.of("ぶ", "bu", "bu"),
			Syllable.of("べ", "be", "be"),
			Syllable.of("ぼ", "bo", "bo"),
			Syllable.of("ぱ", "pa", "pa"),
			Syllable.of("ぴ", "pi", "pi"),
			Syllable.of("ぷ", "pu", "pu"),
			Syllable.of("ぺ", "pe", "pe"),
			Syllable.of("ぽ", "po", "po"),
			Syllable.of("ま", "ma", "ma"),
			Syllable.of("み", "mi", "mi"),
			Syllable.of("む", "mu", "mu"),
			Syllable.of("め", "me", "me"),
			Syllable.of("も", "mo", "mo"),
			Syllable.of("や", "ya", "ya"),
			Syllable.of("ゆ", "yu", "yu"),
			Syllable.of("よ", "yo", "yo"),
			Syllable.of("ら", "ra", "ra"),
			Syllable.of("り", "ri", "ri"),
			Syllable.of("る", "ru", "ru"),
			Syllable.of("れ", "re", "re"),
			Syllable.of("ろ", "ro", "ro"),
			Syllable.of("わ", "wa", "wa"),
			Syllable.of("ゐ", "wi", "wi"),
			Syllable.of("ゑ", "we", "we"),
			Syllable.of("を", "wo", "wo"),
			Syllable.of("ゔ", "vu", "vu"),
			Syllable.of("ぁ", "xa", "xa"),
			Syllable.of("ぃ", "xi", "xi"),
			Syllable.of("ぅ", "xu", "xu"),
			Syllable.of("ぇ", "xe", "xe"),
			Syllable.of("ぉ", "xo", "xo"),
			Syllable.of("ゃ", "xya", "xya"),
			Syllable.of("ゅ", "xyu", "xyu"),
			Syllable.of("ょ", "xyo", "xyo"),
			Syllable.of("ゎ", "xwa", "xwa"),
			Syllable.of("っ", "xtsu", "xtu")
		};

		Arrays.sort(syllables, (s1, s2) -> {
			int compRomaji = Integer.compare(s2.maxRomajiLength(), s1.maxRomajiLength());
			if (compRomaji != 0) {
				return compRomaji;
			}
			return Integer.compare(s2.hiragana().length(), s1.hiragana().length());
		});
		return List.of(syllables);
	}

	private static Map<Char, List<Romaji>> createRomajiMap(List<Syllable> syllables) {
		Map<Char, List<Romaji>> groups = new HashMap<>();
		Char lookupKey = new Char('\0');
		for (Syllable syllable : syllables) {
			for (Romaji romaji : syllable.romajis()) {
				lookupKey.value = romaji.value().charAt(0);
				List<Romaji> group = groups.get(lookupKey);
				if (group == null) {
					group = new ArrayList<>();
					groups.put(new Char(lookupKey.value), group);
				}
				group.add(romaji);
			}
		}

		Map<Char, List<Romaji>> table = new HashMap<>(groups.size() * 2);
		for (Map.Entry<Char, List<Romaji>> entry : groups.entrySet()) {
			table.put(entry.getKey(), List.copyOf(entry.getValue()));
		}
		return Map.copyOf(table);
	}

	private static Map<Char, List<Syllable>> createKanaSyllableMap(List<Syllable> syllables) {
		Map<Char, List<Syllable>> groups = new HashMap<>();
		Char lookupKey = new Char('\0');
		for (Syllable syllable : syllables) {
			lookupKey.value = syllable.hiragana().charAt(0);
			List<Syllable> group = groups.get(lookupKey);
			if (group == null) {
				group = new ArrayList<>();
				groups.put(new Char(lookupKey.value), group);
			}
			group.add(syllable);
		}

		Map<Char, List<Syllable>> table = new HashMap<>(groups.size() * 2);
		for (Map.Entry<Char, List<Syllable>> entry : groups.entrySet()) {
			table.put(entry.getKey(), List.copyOf(entry.getValue()));
		}
		return Map.copyOf(table);
	}


	private static class RomajiMatcher {
		private final Char lookupKey = new Char('\0');

		private Romaji find(String val, int start, int end) {
			lookupKey.value = normalizeRomaji(val.charAt(start));
			List<Romaji> romajis = ROMAJI_MAP.get(lookupKey);
			if (romajis == null) {
				return null;
			}

			for (Romaji romaji : romajis) {
				if (romajiMatches(val, start, end, romaji.value())) {
					return romaji;
				}
			}
			return null;
		}
	}

	private static class KanaMatcher {
		private final Char lookupKey = new Char('\0');

		private Syllable find(String val, int start, int end) {
			if (end <= start) {
				return null;
			}

			lookupKey.value = toHiraganaChar(val.charAt(start));
			List<Syllable> syllables = KANA_SYLLABLE_MAP.get(lookupKey);
			if (syllables == null) {
				return null;
			}

			for (Syllable syllable : syllables) {
				String kana = syllable.hiragana();
				if (kanaMatches(val, start, end, kana)) {
					return syllable;
				}
			}
			return null;
		}
	}

	private static class Char {
		private char value;

		private Char(char value) {
			this.value = value;
		}

		@Override
		public int hashCode() {
			return value;
		}

		@Override
		public boolean equals(Object obj) {
			return (obj instanceof Char other) && value == other.value;
		}
	}

	private static class Syllable {
		private final String hiragana;
		private final String hepburn;
		private final String kunrei;
		private final List<Romaji> romajis;
		private final int maxRomajiLength;

		private static Syllable of(String hiragana, String hepburn, String kunrei, String... extraRomajiAliases) {
			List<String> romajiAliases = new ArrayList<>();
			romajiAliases.add(hepburn);
			if (!hepburn.equals(kunrei)) {
				romajiAliases.add(kunrei);
			}
			for (String romajiAlias : extraRomajiAliases) {
				romajiAliases.add(romajiAlias);
			}
			return of(hiragana, hepburn, kunrei, romajiAliases);
		}

		private static Syllable of(String hiragana, String hepburn, String kunrei, List<String> romajiAliases) {
			return new Syllable(hiragana, hepburn, kunrei, romajiAliases);
		}

		private Syllable(String hiragana, String hepburn, String kunrei, List<String> romajiAliases) {
			this.hiragana = hiragana;
			this.hepburn = hepburn;
			this.kunrei = kunrei;

			List<Romaji> romajis = new ArrayList<>(romajiAliases.size());
			int maxRomajiLength = 0;
			for (String romajiAlias : romajiAliases) {
				romajis.add(new Romaji(this, romajiAlias));
				maxRomajiLength = Math.max(maxRomajiLength, romajiAlias.length());
			}
			this.romajis = List.copyOf(romajis);
			this.maxRomajiLength = maxRomajiLength;
		}

		String hiragana() {
			return hiragana;
		}

		String romaji(Romanization romanization) {
			return (romanization == Romanization.HEPBURN) ? hepburn : kunrei;
		}

		List<Romaji> romajis() {
			return romajis;
		}

		int maxRomajiLength() {
			return maxRomajiLength;
		}
	}

	private record Romaji(Syllable syllable, String value) {
	}
}
