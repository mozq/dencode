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

public class ColorSpaceSrgbLinear extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_COLOR_SRGB_LINEAR = Pattern.compile("^color\\s*\\(\\s*srgb-linear\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	public static final ColorFormatter FORMATTER_RATIO = ColorFormatters.functionRatio("color", 5, "srgb-linear");
	public static final ColorFormatter FORMATTER_PERCENTAGE = ColorFormatters.functionPercentage("color", 2, "srgb-linear");

	protected ColorSpaceSrgbLinear() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		return xyzToLinearRgb(xyz);
	}

	@Override
	public double[] convertToXyz(double[] components) {
		return linearRgbToXyz(components);
	}

	@Override
	protected Color parse(String color) {
		Matcher matcher = COLOR_PATTERN_COLOR_SRGB_LINEAR.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double r = parseToRatio(matcher.group(1), 1.0);
		double g = parseToRatio(matcher.group(2), 1.0);
		double b = parseToRatio(matcher.group(3), 1.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		return newColor(new double[]{r, g, b}, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		return FORMATTER_RATIO.format(components, alpha);
	}

	@Override
	protected double[] computeComponents(double[] components) {
		return components;
	}
}
