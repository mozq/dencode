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

public class ColorSpaceOklab extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_OKLAB = Pattern.compile("^oklab\\s*\\(\\s*([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	// CSS Color 4 sample code: XYZ (D65) to cone responses for Oklab.
	private static final double[][] XYZ_D65_TO_OKLAB_LMS_MATRIX = {
		{0.8190224379967030, 0.3619062600528904, -0.1288737815209879},
		{0.0329836539323885, 0.9292868615863434, 0.0361446663506424},
		{0.0481771893596242, 0.2642395317527308, 0.6335478284694309}
	};

	// CSS Color 4 sample code: cube-rooted Oklab LMS to Oklab.
	private static final double[][] OKLAB_LMS_TO_OKLAB_MATRIX = {
		{0.2104542683093140, 0.7936177747023054, -0.0040720430116193},
		{1.9779985324311684, -2.4285922420485799, 0.4505937096174110},
		{0.0259040424655478, 0.7827717124575296, -0.8086757549230774}
	};

	// CSS Color 4 sample code: Oklab to cube-rooted Oklab LMS.
	private static final double[][] OKLAB_TO_OKLAB_LMS_MATRIX = {
		{1.0, 0.3963377773761749, 0.2158037573099136},
		{1.0, -0.1055613458156586, -0.0638541728258133},
		{1.0, -0.0894841775298119, -1.2914855480194092}
	};

	// CSS Color 4 sample code: Oklab cone responses to XYZ (D65).
	private static final double[][] OKLAB_LMS_TO_XYZ_D65_MATRIX = {
		{1.2268798758459243, -0.5578149944602171, 0.2813910456659647},
		{-0.0405757452148008, 1.1122868032803170, -0.0717110580655164},
		{-0.0763729366746601, -0.4214933324022432, 1.5869240198367816}
	};

	protected ColorSpaceOklab() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] lms = multiplyMatrix(XYZ_D65_TO_OKLAB_LMS_MATRIX, xyz);

		// Non-linear step
		lms[0] = Math.cbrt(lms[0]);
		lms[1] = Math.cbrt(lms[1]);
		lms[2] = Math.cbrt(lms[2]);

		return multiplyMatrix(OKLAB_LMS_TO_OKLAB_MATRIX, lms);
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double[] lms = multiplyMatrix(OKLAB_TO_OKLAB_LMS_MATRIX, components);

		// Inverse non-linear step
		lms[0] = lms[0] * lms[0] * lms[0];
		lms[1] = lms[1] * lms[1] * lms[1];
		lms[2] = lms[2] * lms[2] * lms[2];

		return multiplyMatrix(OKLAB_LMS_TO_XYZ_D65_MATRIX, lms);
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("oklab")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_OKLAB.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double ol = parseToRatio(matcher.group(1), 1.0);
		double oa = parseScaledValue(matcher.group(2), 0.4);
		double ob = parseScaledValue(matcher.group(3), 0.4);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] oklab = {ol, oa, ob};

		return newColor(oklab, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double ol = components[0];
		double oa = components[1];
		double ob = components[2];

		StringBuilder sb = new StringBuilder();
		sb.append("oklab(");
		ColorFormatter.appendRoundString(sb, ol * 100.0, 2, RoundingMode.HALF_UP);
		sb.append("% ");
		ColorFormatter.appendRoundString(sb, oa, 4, RoundingMode.HALF_UP);
		sb.append(' ');
		ColorFormatter.appendRoundString(sb, ob, 4, RoundingMode.HALF_UP);
		if (alpha < 1.0) {
			sb.append(" / ");
			ColorFormatter.appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
		}
		sb.append(')');

		return sb.toString();
	}

	@Override
	protected double[] computeComponents(double[] components) {
		return new double[] {
				clamp01(components[0]),
				components[1],
				components[2]
		};
	}
}
