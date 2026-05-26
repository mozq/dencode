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
package com.dencode.logic.model.color;

import java.math.BigDecimal;
import java.math.RoundingMode;

public interface ColorFormatter {
	String format(double[] components, double alpha);

	static void appendRoundString(StringBuilder sb, double d, int scale, RoundingMode roundingMode) {
		double ri = Math.rint(d);
		if (d == ri) {
			// Fast path for integer values: avoid BigDecimal allocation in common formatted output.
			sb.append((long)ri);
		} else {
			BigDecimal bd = BigDecimal.valueOf(d).setScale(scale, roundingMode);
			sb.append(bd.stripTrailingZeros().toPlainString());
		}
	}
}
