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

@Dencoder(type="color", method="color.lch", hasEncoder=true, hasDecoder=false)
public class ColorLchDencoder {
	
	private ColorLchDencoder() {
		// NOP
	}
	
	@DencoderFunction
	public static String encColorLch(DencodeCondition cond) {
		return encColorLch(cond.valueAsColors());
	}
	
	private static String encColorLch(List<double[]> vals) {
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
			
			// Linear sRGB to XYZ (D50)
			double x = 0.4360747 * lr + 0.3850649 * lg + 0.1430804 * lb;
			double y = 0.2225045 * lr + 0.7168786 * lg + 0.0606169 * lb;
			double z = 0.0139322 * lr + 0.0971045 * lg + 0.7141733 * lb;
			
			// XYZ to CIELab
			double xr = x / 0.96422;
			double yr = y / 1.00000;
			double zr = z / 0.82521;
			
			double e = 216.0 / 24389.0;
			double k = 24389.0 / 27.0;
			
			double fx = (xr > e) ? Math.cbrt(xr) : (k * xr + 16.0) / 116.0;
			double fy = (yr > e) ? Math.cbrt(yr) : (k * yr + 16.0) / 116.0;
			double fz = (zr > e) ? Math.cbrt(zr) : (k * zr + 16.0) / 116.0;
			
			double cl = 116.0 * fy - 16.0;
			double ca = 500.0 * (fx - fy);
			double cb = 200.0 * (fy - fz);
			
			// CIELab to CIELCH
			double cc = Math.sqrt(ca * ca + cb * cb);
			double ch = Math.atan2(cb, ca) * 180.0 / Math.PI;
			if (ch < 0.0) {
				ch += 360.0;
			}
			
			boolean hasAlpha = (Double.compare(a, 1.0) != 0);
			
			StringBuilder sb = new StringBuilder();
			sb.append("lch(");
			appendRoundString(sb, cl, 2, RoundingMode.HALF_UP);
			sb.append("% ");
			appendRoundString(sb, cc, 4, RoundingMode.HALF_UP);
			sb.append(' ');
			appendRoundString(sb, ch, 2, RoundingMode.HALF_UP);
			
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
