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

public class ColorSpaceProphotoRgb extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_COLOR_PROPHOTO_RGB = Pattern.compile("^color\\s*\\(\\s*prophoto-rgb\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	public static final ColorFormatter FORMATTER_RATIO = ColorFormatters.functionRatio("color", 5, "prophoto-rgb");
	public static final ColorFormatter FORMATTER_PERCENTAGE = ColorFormatters.functionPercentage("color", 2, "prophoto-rgb");

	private static final double PROPHOTO_LINEAR_TO_GAMMA_THRESHOLD = 1.0 / 512.0;
	private static final double PROPHOTO_GAMMA_TO_LINEAR_THRESHOLD = 16.0 / 512.0;

	// CSS Color 4: linear-light ProPhoto RGB to XYZ (D50).
	private static final double[][] LINEAR_PROPHOTO_RGB_TO_XYZ_D50_MATRIX = {
			{0.7977666449006423, 0.13518129740053308, 0.0313477341283922},
			{0.2880748288194013, 0.711835234241873, 0.00008993693872564},
			{0.0, 0.0, 0.8251046025104602}
	};

	// CSS Color 4: XYZ (D50) to linear-light ProPhoto RGB.
	private static final double[][] XYZ_D50_TO_LINEAR_PROPHOTO_RGB_MATRIX = {
			{1.3457868816471583, -0.25557208737979464, -0.05110186497554526},
			{-0.5446307051249019, 1.5082477428451468, 0.02052744743642139},
			{0.0, 0.0, 1.2119675456389452}
	};

	protected ColorSpaceProphotoRgb() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] xyzD50 = xyzD65ToD50(xyz);
		double[] linearProphotoRgb = multiplyMatrix(XYZ_D50_TO_LINEAR_PROPHOTO_RGB_MATRIX, xyzD50);
		return linearProphotoRgbToProphotoRgb(linearProphotoRgb);
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double[] linearProphotoRgb = prophotoRgbToLinearProphotoRgb(components);
		double[] xyzD50 = multiplyMatrix(LINEAR_PROPHOTO_RGB_TO_XYZ_D50_MATRIX, linearProphotoRgb);
		return xyzD50ToD65(xyzD50);
	}

	@Override
	protected Color parse(String color) {
		Matcher matcher = COLOR_PATTERN_COLOR_PROPHOTO_RGB.matcher(color);
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

	private static double[] prophotoRgbToLinearProphotoRgb(double[] rgb) {
		return Arrays.stream(rgb)
				.map(ColorSpaceProphotoRgb::prophotoRgbToLinearProphotoRgb)
				.toArray();
	}

	private static double prophotoRgbToLinearProphotoRgb(double c) {
		double abs = Math.abs(c);
		if (abs <= PROPHOTO_GAMMA_TO_LINEAR_THRESHOLD) {
			return c / 16.0;
		}

		double sign = (c < 0.0) ? -1.0 : 1.0;
		return sign * Math.pow(abs, 1.8);
	}

	private static double[] linearProphotoRgbToProphotoRgb(double[] linearRgb) {
		return Arrays.stream(linearRgb)
				.map(ColorSpaceProphotoRgb::linearProphotoRgbToProphotoRgb)
				.toArray();
	}

	private static double linearProphotoRgbToProphotoRgb(double c) {
		double abs = Math.abs(c);
		if (abs < PROPHOTO_LINEAR_TO_GAMMA_THRESHOLD) {
			return 16.0 * c;
		}

		double sign = (c < 0.0) ? -1.0 : 1.0;
		return sign * Math.pow(abs, 1.0 / 1.8);
	}
}
