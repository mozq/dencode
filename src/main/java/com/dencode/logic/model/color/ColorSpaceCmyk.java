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

public class ColorSpaceCmyk extends AbstractColorSpaceRgb {
	private static final Pattern COLOR_PATTERN_CMYK = Pattern.compile("^(?:device-)?cmyka?\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final ColorFormatter FORMATTER = ColorFormatters.functionPercentage("device-cmyk", 2);

	protected ColorSpaceCmyk() {
	}

	@Override
	public double[] convertFromRgb(double[] rgb) {
		// Naive CMYK

		double r = rgb[0];
		double g = rgb[1];
		double b = rgb[2];

		double k = 1.0 - Math.max(Math.max(r, g), b);
		if (k == 1.0) {
			return new double[] {0.0, 0.0, 0.0, 1.0};
		}

		double c = (1.0 - r - k) / (1.0 - k);
		double m = (1.0 - g - k) / (1.0 - k);
		double y = (1.0 - b - k) / (1.0 - k);

		c = clamp01(c);
		m = clamp01(m);
		y = clamp01(y);
		k = clamp01(k);

		return new double[] {c, m, y, k};
	}

	@Override
	public double[] convertToRgb(double[] components) {
		// Naive CMYK

		double c = components[0];
		double m = components[1];
		double y = components[2];
		double k = components[3];

		double r = (1.0 - c) * (1.0 - k);
		double g = (1.0 - m) * (1.0 - k);
		double b = (1.0 - y) * (1.0 - k);

		r = clamp01(r);
		g = clamp01(g);
		b = clamp01(b);

		return new double[] {r, g, b};
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("cmyk") && !color.startsWith("device-cmyk")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_CMYK.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double c = parseToRatio(matcher.group(1), 1.0);
		double m = parseToRatio(matcher.group(2), 1.0);
		double y = parseToRatio(matcher.group(3), 1.0);
		double k = parseToRatio(matcher.group(4), 1.0);
		double alpha = parseToRatio(matcher.group(5), 1.0, 1.0);

		double[] cmyk = {c, m, y, k};

		return newColor(cmyk, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		return FORMATTER.format(components, alpha);
	}

	@Override
	protected double[] computeComponents(double[] components) {
		// CSS Color 5 device-cmyk: clamp at computed-value time
		return new double[] {
				clamp01(components[0]),
				clamp01(components[1]),
				clamp01(components[2]),
				clamp01(components[3])
		};
	}
}
