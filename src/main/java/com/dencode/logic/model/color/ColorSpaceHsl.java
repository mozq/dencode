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

public class ColorSpaceHsl extends AbstractColorSpaceRgb {
	private static final Pattern COLOR_PATTERN_HSL = Pattern.compile("^hsla?\\s*\\(\\s*([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	protected ColorSpaceHsl() {
	}

	@Override
	public double[] convertFromRgb(double[] rgb) {
		double r = rgb[0];
		double g = rgb[1];
		double b = rgb[2];

		double max = Math.max(Math.max(r, g), b);
		double min = Math.min(Math.min(r, g), b);
		double h;
		double s;
		double l = (max + min) / 2.0;

		if (max == min) {
			h = s = 0.0;
		} else {
			double d = max - min;
			s = (l > 0.5) ? d / (2.0 - max - min) : d / (max + min);
			if (max == r) {
				h = (g - b) / d + (g < b ? 6.0 : 0.0);
			} else if (max == g) {
				h = (b - r) / d + 2.0;
			} else {
				h = (r - g) / d + 4.0;
			}
			h /= 6.0;
		}

		return new double[] {h * 360.0, s, l};
	}

	@Override
	public double[] convertToRgb(double[] components) {
		double h = components[0];
		double s = components[1];
		double l = components[2];

		h = normalizeHue(h);

		double q;
		if (l <= 0.5) {
			q = l * (1.0 + s);
		} else {
			q = l + s - l * s;
		}
		double p = 2.0 * l - q;

		double r = hue2rgb(q, p, h + 120.0);
		double g = hue2rgb(q, p, h);
		double b = hue2rgb(q, p, h - 120.0);

		return new double[] {r, g, b};
	}

	private static double hue2rgb(double q, double p, double hue) {
		hue = (hue + 180.0) % 360.0;
		if (hue < 60.0) {
			return q + (p - q) * hue / 60.0;
		} else if (hue < 180.0) {
			return p;
		} else if (hue < 240.0) {
			return q + (p - q) * (240.0 - hue) / 60.0;
		} else {
			return q;
		}
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("hsl")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_HSL.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double h = Double.parseDouble(matcher.group(1));
		double s = parseToRatio(matcher.group(2), 1.0);
		double l = parseToRatio(matcher.group(3), 1.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] hsl = {h, s, l};

		return newColor(hsl, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double h = components[0];
		double s = components[1];
		double l = components[2];

		StringBuilder sb = new StringBuilder();
		sb.append("hsl(");
		appendRoundString(sb, h, 2, RoundingMode.HALF_UP);
		sb.append("deg ");
		appendRoundString(sb, s * 100.0, 2, RoundingMode.HALF_UP);
		sb.append('%');
		sb.append(' ');
		appendRoundString(sb, l * 100.0, 2, RoundingMode.HALF_UP);
		sb.append('%');
		if (alpha < 1.0) {
			sb.append(" / ");
			appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
		}
		sb.append(')');

		return sb.toString();
	}

	@Override
	protected double[] computeComponents(double[] components) {
		return new double[] {
				normalizeHue(components[0]),
				clamp01(components[1]),
				clamp01(components[2])
		};
	}
}
