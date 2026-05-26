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

import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ColorSpaceA98Rgb extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_COLOR_A98_RGB = Pattern.compile("^color\\s*\\(\\s*a98-rgb\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	public static final ColorFormatter FORMATTER_RATIO = ColorFormatters.functionRatio("color", 5, "a98-rgb");
	public static final ColorFormatter FORMATTER_PERCENTAGE = ColorFormatters.functionPercentage("color", 2, "a98-rgb");

	private static final double A98_TRANSFER_GAMMA = 563.0 / 256.0;

	// CSS Color 4: linear-light A98 RGB to XYZ (D65).
	private static final double[][] LINEAR_A98_RGB_TO_XYZ_D65_MATRIX = {
			{0.5766690429101305, 0.1855582379065463, 0.1882286462349947},
			{0.29734497525053605, 0.6273635662554661, 0.07529145849399788},
			{0.02703136138641234, 0.07068885253582723, 0.9913375368376388}
	};

	// CSS Color 4: XYZ (D65) to linear-light A98 RGB.
	private static final double[][] XYZ_D65_TO_LINEAR_A98_RGB_MATRIX = {
			{2.0415879038107465, -0.5650069742788596, -0.34473135077832956},
			{-0.9692436362808798, 1.8759675015077202, 0.04155505740717559},
			{0.013444280632031142, -0.11836239223101838, 1.0151749943912054}
	};

	protected ColorSpaceA98Rgb() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] linearA98Rgb = multiplyMatrix(XYZ_D65_TO_LINEAR_A98_RGB_MATRIX, xyz);
		return linearA98RgbToA98Rgb(linearA98Rgb);
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double[] linearA98Rgb = a98RgbToLinearA98Rgb(components);
		return multiplyMatrix(LINEAR_A98_RGB_TO_XYZ_D65_MATRIX, linearA98Rgb);
	}

	@Override
	protected Color parse(String color) {
		Matcher matcher = COLOR_PATTERN_COLOR_A98_RGB.matcher(color);
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

	private static double[] a98RgbToLinearA98Rgb(double[] rgb) {
		return Arrays.stream(rgb)
				.map(ColorSpaceA98Rgb::a98RgbToLinearA98Rgb)
				.toArray();
	}

	private static double a98RgbToLinearA98Rgb(double c) {
		double sign = (c < 0.0) ? -1.0 : 1.0;
		return sign * Math.pow(Math.abs(c), A98_TRANSFER_GAMMA);
	}

	private static double[] linearA98RgbToA98Rgb(double[] linearRgb) {
		return Arrays.stream(linearRgb)
				.map(ColorSpaceA98Rgb::linearA98RgbToA98Rgb)
				.toArray();
	}

	private static double linearA98RgbToA98Rgb(double c) {
		double sign = (c < 0.0) ? -1.0 : 1.0;
		return sign * Math.pow(Math.abs(c), 1.0 / A98_TRANSFER_GAMMA);
	}
}
