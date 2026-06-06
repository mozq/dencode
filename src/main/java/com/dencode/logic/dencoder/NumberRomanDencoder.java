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
import com.dencode.logic.util.RomanNumberUtils;

@Dencoder(type="number", method="number.roman", hasEncoder=true, hasDecoder=true)
public class NumberRomanDencoder {
	
	private NumberRomanDencoder() {
		// NOP
	}
	
	
	@DencoderFunction
	public static String encNumRoman(DencodeCondition cond) {
		return encNumRoman(cond.valueAsNumbers());
	}
	
	@DencoderFunction
	public static String decNumRoman(DencodeCondition cond) {
		return decNumRoman(cond.valueAsLines());
	}
	
	
	private static String encNumRoman(List<BigDecimal> vals) {
		return DencodeUtils.dencodeLines(vals, (bigDec) -> {
			try {
				return RomanNumberUtils.toRomanNum(bigDec);
			} catch (IllegalArgumentException e) {
				return null;
			}
		});
	}
	
	private static String decNumRoman(List<String> vals) {
		return DencodeUtils.dencodeLines(vals, (val) -> {
			BigDecimal bigDec;
			try {
				bigDec = RomanNumberUtils.parseRomanNum(val);
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
