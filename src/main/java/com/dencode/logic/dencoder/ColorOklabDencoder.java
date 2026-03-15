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

import static com.dencode.logic.dencoder.DencodeUtils.appendRoundString;

import java.math.RoundingMode;
import java.util.List;

import com.dencode.logic.dencoder.annotation.Dencoder;
import com.dencode.logic.dencoder.annotation.DencoderFunction;
import com.dencode.logic.model.DencodeCondition;

@Dencoder(type="color", method="color.oklab", hasEncoder=true, hasDecoder=false)
public class ColorOklabDencoder {
	
	private ColorOklabDencoder() {
		// NOP
	}
	
	@DencoderFunction
	public static String encColorOklab(DencodeCondition cond) {
		return encColorOklab(cond.valueAsColors());
	}
	
	private static String encColorOklab(List<double[]> vals) {
		return DencodeUtils.dencodeLines(vals, (rgba) -> {
			if (rgba == null) {
				return null;
			}
			
			double r = rgba[0];
			double g = rgba[1];
			double b = rgba[2];
			double a = rgba[3];
			
			// sRGB to Linear sRGB
			double lr = toLinearRgb(r);
			double lg = toLinearRgb(g);
			double lb = toLinearRgb(b);
			
			// Linear sRGB to LMS
			double ll = 0.4122214708 * lr + 0.5363325363 * lg + 0.0514459929 * lb;
			double lm = 0.2119034982 * lr + 0.6806995451 * lg + 0.1073969566 * lb;
			double ls = 0.0883024619 * lr + 0.2817188376 * lg + 0.6299787005 * lb;
			
			// Non-linear LMS
			double l = Math.cbrt(ll);
			double m = Math.cbrt(lm);
			double s = Math.cbrt(ls);
			
			// LMS to Oklab
			double ol = 0.2104542553 * l + 0.7936177850 * m - 0.0040720468 * s;
			double oa = 1.9779984951 * l - 2.4285922050 * m + 0.4505937099 * s;
			double ob = 0.0259040371 * l + 0.7827717662 * m - 0.8086757660 * s;
			
			boolean hasAlpha = (Double.compare(a, 1.0) != 0);
			
			StringBuilder sb = new StringBuilder();
			sb.append("oklab(");
			appendRoundString(sb, ol * 100.0, 2, RoundingMode.HALF_UP);
			sb.append("% ");
			appendRoundString(sb, oa, 4, RoundingMode.HALF_UP);
			sb.append(' ');
			appendRoundString(sb, ob, 4, RoundingMode.HALF_UP);
			
			if (hasAlpha) {
				sb.append(" / ");
				appendRoundString(sb, a, 2, RoundingMode.HALF_UP);
			}
			sb.append(')');
			
			return sb.toString();
		});
	}
	
	private static double toLinearRgb(double c) {
		if (0.04045 <= c) {
			return Math.pow((c + 0.055) / 1.055, 2.4);
		} else {
			return c / 12.92;
		}
	}
}
