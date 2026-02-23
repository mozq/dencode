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

@Dencoder(type="string", method="string.hieroglyphs", hasEncoder=true, hasDecoder=true)
public class StringHieroglyphsDencoder {
	// See: [ISBN 978-0-7141-1976-2] Angela McDonald. Write Your Own Egyptian Hieroglyphs: Names, Greetings, Insults, Sayings. London, UK : The British Museum Press, 2007.
	//      https://www.britishmuseumshoponline.org/write-your-own-egyptian-hieroglyphs.html
	// See: https://preview.memphis.edu/egypt/events/familyday2022/name_hieroglyphs.php
	// See: https://en.wikipedia.org/wiki/Transliteration_of_Ancient_Egyptian
	// See: https://en.wikipedia.org/wiki/List_of_Egyptian_hieroglyphs
	// See: https://www.britishmuseum.org/exhibitions/hieroglyphs-unlocking-ancient-egypt/egyptian-hieroglyphs-decipherment-timeline
	
	private StringHieroglyphsDencoder() {
		// NOP
	}
	
	@DencoderFunction
	public static String encStrHieroglyphs(DencodeCondition cond) {
		return encStrHieroglyphs(cond.value());
	}
	
	@DencoderFunction
	public static String decStrHieroglyphs(DencodeCondition cond) {
		return decStrHieroglyphs(cond.value());
	}
	
	private static String encStrHieroglyphs(String value) {
		if (value == null || value.isEmpty()) {
			return "";
		}
		
		StringBuilder sb = null;
		
		int len = value.length();
		for (int i = 0; i < len; i++) {
			char ch = value.charAt(i);
			
			String hieroglyph = switch (ch) {
				case 'A', 'a', 'Ａ', 'ａ' -> "𓄿"; // 𓄿 (G1)
				case 'B', 'b', 'Ｂ', 'ｂ' -> "𓃀"; // 𓃀 (D58)
				case 'C', 'c', 'Ｃ', 'ｃ' -> "𓎡"; // 𓎡 (V31)
				case 'D', 'd', 'Ｄ', 'ｄ' -> "𓂧"; // 𓂧 (D46)
				case 'E', 'e', 'Ｅ', 'ｅ' -> "𓇋"; // 𓇋 (M17)
				case 'F', 'f', 'Ｆ', 'ｆ' -> "𓆑"; // 𓆑 (I9)
				case 'G', 'g', 'Ｇ', 'ｇ' -> "𓎼"; // 𓎼 (W11)
				case 'H', 'h', 'Ｈ', 'ｈ' -> "𓉔"; // 𓉔 (O4)
				case 'I', 'i', 'Ｉ', 'ｉ' -> "𓇋"; // 𓇋 (M17)
				case 'J', 'j', 'Ｊ', 'ｊ' -> "𓆓"; // 𓆓 (I10)
				case 'K', 'k', 'Ｋ', 'ｋ' -> "𓎡"; // 𓎡 (V31)
				case 'L', 'l', 'Ｌ', 'ｌ' -> "𓃭"; // 𓃭 (E23)
				case 'M', 'm', 'Ｍ', 'ｍ' -> "𓅓"; // 𓅓 (G17)
				case 'N', 'n', 'Ｎ', 'ｎ' -> "𓈖"; // 𓈖 (N35)
				case 'O', 'o', 'Ｏ', 'ｏ' -> "𓍯"; // 𓍯 (V4)
				case 'P', 'p', 'Ｐ', 'ｐ' -> "𓊪"; // 𓊪 (Q3)
				case 'Q', 'q', 'Ｑ', 'ｑ' -> "𓈎"; // 𓈎 (N29)
				case 'R', 'r', 'Ｒ', 'ｒ' -> "𓂋"; // 𓂋 (D21)
				case 'S', 's', 'Ｓ', 'ｓ' -> "𓋴"; // 𓋴 (S29)
				case 'T', 't', 'Ｔ', 'ｔ' -> "𓏏"; // 𓏏 (X1)
				case 'U', 'u', 'Ｕ', 'ｕ' -> "𓏲"; // 𓏲 (Z7)
				case 'V', 'v', 'Ｖ', 'ｖ' -> "𓆑"; // 𓆑 (I9)
				case 'W', 'w', 'Ｗ', 'ｗ' -> "𓅱"; // 𓅱 (G43)
				case 'X', 'x', 'Ｘ', 'ｘ' -> "𓎡𓋴"; // 𓎡𓋴 (V31+S29)
				case 'Y', 'y', 'Ｙ', 'ｙ' -> "𓇌"; // 𓇌 (M17A)
				case 'Z', 'z', 'Ｚ', 'ｚ' -> "𓊃"; // 𓊃 (O34)
				default -> null;
			};
			
			if (hieroglyph != null) {
				if (sb == null) {
					sb = new StringBuilder(value.length() * 2);
					sb.append(value, 0, i);
				}
				sb.append(hieroglyph);
			} else {
				if (sb != null) {
					sb.append(ch);
				}
			}
		}
		
		return (sb != null) ? sb.toString() : value;
	}

	private static String decStrHieroglyphs(String value) {
		if (value == null || value.isEmpty()) {
			return "";
		}
		
		int len = value.length();
		StringBuilder sb = null;
		
		for (int i = 0; i < len; ) {
			int lastIdx = i;
			int cp = value.codePointAt(i);
			cp = normalizeHieroglyph(cp);
			i += Character.charCount(cp);
			
			int dcp = switch (cp) {
				case 0x1313F, 0x1309D -> 'A'; // 𓄿 (G1), 𓂝 (D36)
				case 0x130C0 -> 'B'; // 𓃀 (D58)
				case 0x130A7, 0x130BD -> 'D'; // 𓂧 (D46), 𓂽 (D55)
				case 0x13191 -> 'F';  // 𓆑 (I9)
				case 0x133BC, 0x133BD, 0x1317C -> 'G'; // 𓎼 (W11), 𓎽 (W12), 𓅼 (G52)
				case 0x13254, 0x1339B -> 'H'; // 𓉔 (O4), 𓎛 (V28)
				case 0x131CB -> 'I';  // 𓇋 (M17)
				case 0x13193 -> 'J'; // 𓆓 (I10)
				case 0x133A1 -> {
					int ncp = (i < len) ? value.codePointAt(i) : -1;
					ncp = normalizeHieroglyph(ncp);
					if (ncp == 0x132F4 || ncp == 0x13283) {
						i += Character.charCount(ncp);
						yield 'X'; // 𓎡𓋴 (V31+S29), 𓎡𓊃 (V31+O34)
					} else {
						yield 'K'; // 𓎡 (V31)
					}
				}
				case 0x133A2 -> 0x133A1; // K : 𓎢 (V31A) -> 𓎡(V31)
				case 0x130ED -> 'L'; // 𓃭 (E23)
				case 0x13153, 0x1341D -> 'M'; // 𓅓 (G17), 𓐝 (Aa15)
				case 0x13216, 0x132D4 -> 'N'; // 𓈖 (N35), 𓋔 (S3)
				case 0x1336F -> 'O'; // 𓍯 (V4)
				case 0x132AA -> 'P'; // 𓊪 (Q3)
				case 0x1320E -> {
					int ncp = (i < len) ? value.codePointAt(i) : -1;
					ncp = normalizeHieroglyph(ncp);
					if (ncp == 0x13283) {
						i += Character.charCount(ncp);
						yield 'X'; // 𓈎𓊃 (N29+O34)
					} else {
						yield 'Q'; // 𓈎 (N29)
					}
				}
				case 0x1308B -> 'R'; // 𓂋 (D21)
				case 0x132F4, 0x13219 -> 'S'; // 𓋴 (S29), 𓈙 (N37)
				case 0x133CF, 0x1337F -> 'T'; // 𓏏 (X1), 𓍿 (V13)
				case 0x133F2 -> 'U'; // 𓏲 (Z7)
				case 0x13171 -> 'W'; // 𓅱 (G43)
				case 0x1340D, 0x13121 -> 'X'; // 𓐍 (Aa1), 𓄡 (F32)
				case 0x131CC, 0x133ED -> 'Y'; // 𓇌 (M17A), 𓏭 (Z4)
				case 0x13283 -> 'Z'; // 𓊃 (O34)
				default -> cp;
			};
			
			if (dcp != cp && sb == null) {
				sb = new StringBuilder(len);
				sb.append(value, 0, lastIdx);
			}
			if (sb != null) {
				sb.appendCodePoint(dcp);
			}
		}
		
		return (sb != null) ? sb.toString() : value;
	}
	
	private static final int normalizeHieroglyph(int cp) {
		return switch (cp) {
			//  Convert variant symbols to standard ones
			case 0x133A2 -> 0x133A1; // C, K : 𓎢 (V31A) -> 𓎡 (V31)
			case 0x1321A, 0x1321B, 0x1321C -> 0x13219; // S : 𓈚 (N37A), 𓈛 (N38), 𓈜 (N39) -> 𓈙 (N37)
			
			// Convert incorrect symbols to correct ones
			case 0x130BE -> 0x130C0; // B : 𓂾 (D56) -> 𓃀 (D58)
			case 0x130EC -> 0x130ED; // L : 𓃬 (E22) -> 𓃭 (E23)
			case 0x133E4 -> 0x132AA; // P : 𓏤 (Z1) -> 𓊪 (Q3)
			case 0x133D8 -> 0x1320E; // Q : 𓏘 (X7) -> 𓈎 (N29)
			case 0x13362 -> 0x133F2; // U : 𓍢 (V1) -> 𓏲 (Z7)
			case 0x1331F -> 0x1340D; // X : 𓌟 (T19) -> 𓐍 (Aa1)
			
			default -> cp;
		};
	}
}
