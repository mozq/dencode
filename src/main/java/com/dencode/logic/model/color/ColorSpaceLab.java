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

public class ColorSpaceLab extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_LAB = Pattern.compile("^lab\\s*\\(\\s*([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	// CSS Color 4 Lab conversion uses the CIE Lab constants:
	// epsilon = 216 / 24389, kappa = 24389 / 27.
	private static final double CIELAB_EPSILON = 216.0 / 24389.0;
	private static final double CIELAB_KAPPA = 24389.0 / 27.0;
	private static final double CIELAB_LIGHTNESS_OFFSET = 16.0;
	private static final double CIELAB_LIGHTNESS_SCALE = 116.0;
	private static final double CIELAB_A_SCALE = 500.0;
	private static final double CIELAB_B_SCALE = 200.0;
	private static final double CIELAB_LINEAR_LIGHTNESS_THRESHOLD = 8.0;

	protected ColorSpaceLab() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		// XYZ (D65) to XYZ (D50)
		double[] xyzD50 = xyzD65ToD50(xyz);

		// CSS Color 4: D50 = [0.3457 / 0.3585, 1.0, (1.0 - 0.3457 - 0.3585) / 0.3585].
		// Matches the Bradford adaptation matrices used by ColorSpace.
		double x = xyzD50[0] / CSS_D50_WHITE_X;
		double y = xyzD50[1] / CSS_D50_WHITE_Y;
		double z = xyzD50[2] / CSS_D50_WHITE_Z;

		// XYZ (D50) to CIELab
		double fx = (x > CIELAB_EPSILON)
				? Math.cbrt(x)
				: (CIELAB_KAPPA * x + CIELAB_LIGHTNESS_OFFSET) / CIELAB_LIGHTNESS_SCALE;
		double fy = (y > CIELAB_EPSILON)
				? Math.cbrt(y)
				: (CIELAB_KAPPA * y + CIELAB_LIGHTNESS_OFFSET) / CIELAB_LIGHTNESS_SCALE;
		double fz = (z > CIELAB_EPSILON)
				? Math.cbrt(z)
				: (CIELAB_KAPPA * z + CIELAB_LIGHTNESS_OFFSET) / CIELAB_LIGHTNESS_SCALE;

		double l = CIELAB_LIGHTNESS_SCALE * fy - CIELAB_LIGHTNESS_OFFSET;
		double a = CIELAB_A_SCALE * (fx - fy);
		double b = CIELAB_B_SCALE * (fy - fz);

		return new double[] {l, a, b};
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double l = components[0];
		double a = components[1];
		double b = components[2];

		// CIELab to XYZ (D50)
		double y = (l + CIELAB_LIGHTNESS_OFFSET) / CIELAB_LIGHTNESS_SCALE;
		double x = a / CIELAB_A_SCALE + y;
		double z = y - b / CIELAB_B_SCALE;

		double x3 = x * x * x;
		double z3 = z * z * z;

		double xr = (x3 > CIELAB_EPSILON)
				? x3
				: (CIELAB_LIGHTNESS_SCALE * x - CIELAB_LIGHTNESS_OFFSET) / CIELAB_KAPPA;
		double yr = (l > CIELAB_LINEAR_LIGHTNESS_THRESHOLD)
				? (y * y * y)
				: l / CIELAB_KAPPA;
		double zr = (z3 > CIELAB_EPSILON)
				? z3
				: (CIELAB_LIGHTNESS_SCALE * z - CIELAB_LIGHTNESS_OFFSET) / CIELAB_KAPPA;

		// CSS Color 4: D50 white point (see convertFromXyz).
		x = xr * CSS_D50_WHITE_X;
		y = yr * CSS_D50_WHITE_Y;
		z = zr * CSS_D50_WHITE_Z;
		double[] xyzD50 = new double[] {x, y, z};

		// XYZ (D50) to XYZ (D65)
		double[] xyz = xyzD50ToD65(xyzD50);

		return xyz;
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("lab")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_LAB.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double l = parseToRatio(matcher.group(1), 100.0) * 100.0;
		double a = parseScaledValue(matcher.group(2), 125.0);
		double b = parseScaledValue(matcher.group(3), 125.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] lab = {l, a, b};

		return newColor(lab, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double l = components[0];
		double a = components[1];
		double b = components[2];

		StringBuilder sb = new StringBuilder();
		sb.append("lab(");
		appendRoundString(sb, l, 2, RoundingMode.HALF_UP);
		sb.append("% ");
		appendRoundString(sb, a, 4, RoundingMode.HALF_UP);
		sb.append(' ');
		appendRoundString(sb, b, 4, RoundingMode.HALF_UP);
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
				clamp100(components[0]),
				components[1],
				components[2]
		};
	}
}
