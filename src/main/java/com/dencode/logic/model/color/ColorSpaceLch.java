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

public class ColorSpaceLch extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_LCH = Pattern.compile("^lch\\s*\\(\\s*([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	// CSS Color 4: LCH powerless hue threshold.
	private static final double LCH_POWERLESS_HUE_CHROMA_EPSILON = 0.0015;

	protected ColorSpaceLch() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] lab = LAB.convertFromXyz(xyz);
		double l = lab[0];
		double a = lab[1];
		double b = lab[2];

		double c = Math.sqrt(a * a + b * b);
		double h = Math.atan2(b, a) * 180.0 / Math.PI;

		h = normalizeHue(h);

		return new double[] {l, c, h};
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double l = components[0];
		double c = components[1];
		double h = components[2];

		h = normalizeHue(h);

		double a = c * Math.cos(h * Math.PI / 180.0);
		double b = c * Math.sin(h * Math.PI / 180.0);

		double[] lab = new double[] {l, a, b};

		return LAB.convertToXyz(lab);
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("lch")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_LCH.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double l = parseToRatio(matcher.group(1), 100.0) * 100.0;
		double c = parseScaledValue(matcher.group(2), 150.0);
		double h = Double.parseDouble(matcher.group(3));
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] lch = {l, c, h};

		return newColor(lch, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double l = components[0];
		double c = components[1];
		double h = components[2];

		StringBuilder sb = new StringBuilder();
		sb.append("lch(");
		appendRoundString(sb, l, 2, RoundingMode.HALF_UP);
		sb.append("% ");
		appendRoundString(sb, c, 4, RoundingMode.HALF_UP);
		sb.append(' ');
		appendRoundString(sb, h, 2, RoundingMode.HALF_UP);
		sb.append("deg");
		if (alpha < 1.0) {
			sb.append(" / ");
			appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
		}
		sb.append(')');

		return sb.toString();
	}

	@Override
	protected double[] computeComponents(double[] components) {
		double l = clamp100(components[0]);
		double c = snapToZero(Math.max(components[1], 0.0), LCH_POWERLESS_HUE_CHROMA_EPSILON);
		double h = normalizeHue(components[2]);
		if (c == 0.0) {
			h = 0.0;
		}
		return new double[] {l, c, h};
	}
}
