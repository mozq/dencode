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
import com.dencode.logic.util.JapaneseKanaUtils;
import com.dencode.logic.util.JapaneseKanaUtils.Script;

@Dencoder(type="string", method="string.japanese-kana", hasEncoder=true, hasDecoder=false)
public class StringJapaneseKanaDencoder {

	private StringJapaneseKanaDencoder() {
		// NOP
	}


	@DencoderFunction
	public static String encStrJapaneseKana(DencodeCondition cond) {
		return encStrJapaneseKana(cond.value(), cond.option("string.japanese-kana.script", "hiragana"));
	}


	private static String encStrJapaneseKana(String val, String script) {
		return JapaneseKanaUtils.convert(val, script(script));
	}

	private static Script script(String script) {
		return switch (script) {
			case "katakana" -> Script.KATAKANA;
			case "romaji-hepburn" -> Script.ROMAJI_HEPBURN;
			case "romaji-kunrei" -> Script.ROMAJI_KUNREI;
			default -> Script.HIRAGANA;
		};
	}
}
