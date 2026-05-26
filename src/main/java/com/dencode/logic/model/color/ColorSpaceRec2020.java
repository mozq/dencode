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

public class ColorSpaceRec2020 extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_COLOR_REC2020 = Pattern.compile("^color\\s*\\(\\s*rec2020\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	public static final ColorFormatter FORMATTER_RATIO = ColorFormatters.functionRatio("color", 5, "rec2020");
	public static final ColorFormatter FORMATTER_PERCENTAGE = ColorFormatters.functionPercentage("color", 2, "rec2020");

	private static final double REC2020_TRANSFER_GAMMA = 2.4;

	// CSS Color 4: linear-light Rec. 2020 to XYZ (D65).
	private static final double[][] LINEAR_REC2020_TO_XYZ_D65_MATRIX = {
			{0.6369580483012914, 0.14461690358620832, 0.1688809751641721},
			{0.26270021201126703, 0.6779980715188708, 0.05930171646986196},
			{0.0, 0.028072693049087428, 1.060985057710791}
	};

	// CSS Color 4: XYZ (D65) to linear-light Rec. 2020.
	private static final double[][] XYZ_D65_TO_LINEAR_REC2020_MATRIX = {
			{1.7166511879712674, -0.35567078377639233, -0.25336628137365974},
			{-0.666684351832489, 1.6164812366349395, 0.01576854581391113},
			{0.017639857445310783, -0.042770613257808524, 0.9421031212354739}
	};

	protected ColorSpaceRec2020() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] linearRec2020 = multiplyMatrix(XYZ_D65_TO_LINEAR_REC2020_MATRIX, xyz);
		return linearRec2020ToRec2020(linearRec2020);
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double[] linearRec2020 = rec2020ToLinearRec2020(components);
		return multiplyMatrix(LINEAR_REC2020_TO_XYZ_D65_MATRIX, linearRec2020);
	}

	@Override
	protected Color parse(String color) {
		Matcher matcher = COLOR_PATTERN_COLOR_REC2020.matcher(color);
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

	private static double[] rec2020ToLinearRec2020(double[] rgb) {
		return Arrays.stream(rgb)
				.map(ColorSpaceRec2020::rec2020ToLinearRec2020)
				.toArray();
	}

	private static double rec2020ToLinearRec2020(double c) {
		double sign = (c < 0.0) ? -1.0 : 1.0;
		return sign * Math.pow(Math.abs(c), REC2020_TRANSFER_GAMMA);
	}

	private static double[] linearRec2020ToRec2020(double[] linearRgb) {
		return Arrays.stream(linearRgb)
				.map(ColorSpaceRec2020::linearRec2020ToRec2020)
				.toArray();
	}

	private static double linearRec2020ToRec2020(double c) {
		double sign = (c < 0.0) ? -1.0 : 1.0;
		return sign * Math.pow(Math.abs(c), 1.0 / REC2020_TRANSFER_GAMMA);
	}
}
