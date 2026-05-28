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

import java.util.List;

import com.dencode.logic.dencoder.annotation.Dencoder;
import com.dencode.logic.dencoder.annotation.DencoderFunction;
import com.dencode.logic.model.DencodeCondition;
import com.dencode.logic.model.color.Color;
import com.dencode.logic.model.color.ColorSpace;

@Dencoder(type="color", method="color.hsl", hasEncoder=true, hasDecoder=false)
public class ColorHslDencoder {
	
	private ColorHslDencoder() {
		// NOP
	}
	
	
	@DencoderFunction
	public static String encColorHsl(DencodeCondition cond) {
		return encColorHsl(cond.valueAsColors());
	}
	
	
	private static String encColorHsl(List<Color> vals) {
		return DencodeUtils.dencodeLines(vals, (color) -> {
			if (color == null) {
				return null;
			}
			
			return ColorSpace.HSL.convert(color).toString();
		});
	}
}
