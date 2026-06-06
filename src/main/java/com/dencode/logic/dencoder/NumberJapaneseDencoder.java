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

import java.math.BigDecimal;
import java.util.List;

import com.dencode.logic.dencoder.annotation.Dencoder;
import com.dencode.logic.dencoder.annotation.DencoderFunction;
import com.dencode.logic.model.DencodeCondition;
import com.dencode.logic.util.JapaneseNumberUtils;

@Dencoder(type="number", method="number.japanese", hasEncoder=true, hasDecoder=true)
public class NumberJapaneseDencoder {
	
	private NumberJapaneseDencoder() {
		// NOP
	}
	
	
	@DencoderFunction
	public static String encNumJapanese(DencodeCondition cond) {
		return encNumJapanese(
				cond.valueAsNumbers(),
				DencodeUtils.getOption(cond.options(), "number.japanese.variant", "standard").equals("daiji")
				);
	}
	
	@DencoderFunction
	public static String decNumJapanese(DencodeCondition cond) {
		return decNumJapanese(cond.valueAsLines());
	}
	
	
	private static String encNumJapanese(List<BigDecimal> vals, boolean useDaiji) {
		return DencodeUtils.dencodeLines(vals, (bigDec) -> {
			if (bigDec == null) {
				return null;
			}
			
			try {
				return JapaneseNumberUtils.toJPNum(bigDec, useDaiji, useDaiji, false);
			} catch (IllegalArgumentException e) {
				return null;
			}
		});
	}
	
	private static String decNumJapanese(List<String> vals) {
		return DencodeUtils.dencodeLines(vals, (val) -> {
			BigDecimal bigDec;
			try {
				bigDec = JapaneseNumberUtils.parseJPNum(val);
			} catch (IllegalArgumentException e) {
				return null;
			}
			
			if (bigDec == null) {
				return null;
			}
			return bigDec.toPlainString();
		});
	}
}
