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

public class ColorSpaceDisplayP3 extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_COLOR_DISPLAY_P3 = Pattern.compile("^color\\s*\\(\\s*display-p3\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	public static final ColorFormatter FORMATTER_RATIO = ColorFormatters.functionRatio("color", 5, "display-p3");
	public static final ColorFormatter FORMATTER_PERCENTAGE = ColorFormatters.functionPercentage("color", 2, "display-p3");

	// CSS Color 4: linear-light Display P3 to XYZ (D65).
	private static final double[][] LINEAR_DISPLAY_P3_TO_XYZ_D65_MATRIX = {
			{0.4865709486482162, 0.26566769316909306, 0.1982172852343625},
			{0.2289745640697488, 0.6917385218365064, 0.079286914093745},
			{0.0, 0.04511338185890264, 1.043944368900976}
	};

	// CSS Color 4: XYZ (D65) to linear-light Display P3.
	private static final double[][] XYZ_D65_TO_LINEAR_DISPLAY_P3_MATRIX = {
			{2.493496911941425, -0.9313836179191239, -0.40271078445071684},
			{-0.8294889695615747, 1.7626640603183463, 0.023624685841943577},
			{0.03584583024378447, -0.07617238926804182, 0.9568845240076872}
	};

	protected ColorSpaceDisplayP3() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] linearDisplayP3 = multiplyMatrix(XYZ_D65_TO_LINEAR_DISPLAY_P3_MATRIX, xyz);
		return linearRgbToRgb(linearDisplayP3);
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double[] linearDisplayP3 = rgbToLinearRgb(components);
		return multiplyMatrix(LINEAR_DISPLAY_P3_TO_XYZ_D65_MATRIX, linearDisplayP3);
	}

	@Override
	protected Color parse(String color) {
		Matcher matcher = COLOR_PATTERN_COLOR_DISPLAY_P3.matcher(color);
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
