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

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ColorSpaceHsv extends AbstractColorSpaceRgb {
	private static final ColorFormatter FORMATTER = ColorFormatters.functionHuePercentage("hsv", 2, 2);

	private static final Pattern COLOR_PATTERN_HSV = Pattern.compile("^hs[vb]a?\\s*\\(\\s*(\\+?[0-9\\.]+)(?:deg)?(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	protected ColorSpaceHsv() {
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
		double v = max;

		double d = max - min;
		s = max == 0 ? 0 : d / max;

		if (max == min) {
			h = 0;
		} else {
			if (max == r) {
				h = (g - b) / d + (g < b ? 6 : 0);
			} else if (max == g) {
				h = (b - r) / d + 2;
			} else {
				h = (r - g) / d + 4;
			}
			h /= 6;
		}

		return new double[] {h * 360.0, s, v};
	}

	@Override
	public double[] convertToRgb(double[] components) {
		double h = components[0];
		double s = components[1];
		double v = components[2];

		h = normalizeHue(h);

		int i = (int) (h / 60.0);
		double f = h / 60.0 - (double) i;
		double p = v * (1 - s);
		double q = v * (1 - f * s);
		double t = v * (1 - (1 - f) * s);

		return switch (i) {
			case 0, 6 -> new double[] {v, t, p};
			case 1 -> new double[] {q, v, p};
			case 2 -> new double[] {p, v, t};
			case 3 -> new double[] {p, q, v};
			case 4 -> new double[] {t, p, v};
			case 5 -> new double[] {v, p, q};
			default -> throw new IllegalStateException();
		};
	}

	@Override
	protected Color parse(String color) {
		// hsb() / hsba() is an alias for hsv (Brightness = Value)
		if (!color.startsWith("hsv") && !color.startsWith("hsb")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_HSV.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double h = Double.parseDouble(matcher.group(1));
		double s = parseToRatio(matcher.group(2), 1.0);
		double v = parseToRatio(matcher.group(3), 1.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] hsv = {h, s, v};

		return newColor(hsv, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		return FORMATTER.format(components, alpha);
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
