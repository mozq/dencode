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

import java.math.RoundingMode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ColorSpaceCmy extends AbstractColorSpaceRgb {
	private static final Pattern COLOR_PATTERN_CMY = Pattern.compile("^(?:device-)?cmya?\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	protected ColorSpaceCmy() {
	}

	@Override
	public double[] convertFromRgb(double[] rgb) {
		double r = rgb[0];
		double g = rgb[1];
		double b = rgb[2];

		double c = 1.0 - r;
		double m = 1.0 - g;
		double y = 1.0 - b;

		return new double[] {c, m, y};
	}

	@Override
	public double[] convertToRgb(double[] components) {
		double c = components[0];
		double m = components[1];
		double y = components[2];

		double r = 1.0 - c;
		double g = 1.0 - m;
		double b = 1.0 - y;

		return new double[] {r, g, b};
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("cmy") && !color.startsWith("device-cmy")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_CMY.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double c = parseToRatio(matcher.group(1), 1.0);
		double m = parseToRatio(matcher.group(2), 1.0);
		double y = parseToRatio(matcher.group(3), 1.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] cmy = {c, m, y};

		return newColor(cmy, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double c = components[0];
		double m = components[1];
		double y = components[2];

		StringBuilder sb = new StringBuilder();
		sb.append("cmy(");
		ColorFormatter.appendRoundString(sb, c * 100.0, 2, RoundingMode.HALF_UP);
		sb.append('%');
		sb.append(' ');
		ColorFormatter.appendRoundString(sb, m * 100.0, 2, RoundingMode.HALF_UP);
		sb.append('%');
		sb.append(' ');
		ColorFormatter.appendRoundString(sb, y * 100.0, 2, RoundingMode.HALF_UP);
		sb.append('%');
		if (alpha < 1.0) {
			sb.append(" / ");
			ColorFormatter.appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
		}
		sb.append(')');

		return sb.toString();
	}

	@Override
	protected double[] computeComponents(double[] components) {
		// Match device-cmyk: clamp at computed-value time
		return new double[] {
				clamp01(components[0]),
				clamp01(components[1]),
				clamp01(components[2])
		};
	}
}
