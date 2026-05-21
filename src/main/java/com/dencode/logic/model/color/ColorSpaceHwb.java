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

public class ColorSpaceHwb extends AbstractColorSpaceRgb {
	private static final Pattern COLOR_PATTERN_HWB = Pattern.compile("^hwba?\\s*\\(\\s*([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	protected ColorSpaceHwb() {
	}

	@Override
	public double[] convertFromRgb(double[] rgb) {
		double[] hsl = HSL.convertFromRgb(rgb);
		double h = hsl[0];
		double w = Math.min(Math.min(rgb[0], rgb[1]), rgb[2]);
		double b = 1.0 - Math.max(Math.max(rgb[0], rgb[1]), rgb[2]);

		return new double[] {h, w, b};
	}

	@Override
	public double[] convertToRgb(double[] components) {
		double h = components[0];
		double w = components[1];
		double b = components[2];

		h = normalizeHue(h);

		if (w + b >= 1.0) {
			double gray = w / (w + b);
			return new double[] {gray, gray, gray};
		}

		double d = 1.0 - w - b;

		double[] rgb = HSL.convertToRgb(new double[] {h, 1.0, 0.5});
		rgb[0] = clamp01(rgb[0] * d + w);
		rgb[1] = clamp01(rgb[1] * d + w);
		rgb[2] = clamp01(rgb[2] * d + w);

		return rgb;
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("hwb")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_HWB.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double h = Double.parseDouble(matcher.group(1));
		double w = parseToRatio(matcher.group(2), 1.0);
		double b = parseToRatio(matcher.group(3), 1.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] hwb = {h, w, b};

		return newColor(hwb, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double h = components[0];
		double w = components[1];
		double bl = components[2];

		StringBuilder sb = new StringBuilder();
		sb.append("hwb(");
		appendRoundString(sb, h, 2, RoundingMode.HALF_UP);
		sb.append("deg ");
		appendRoundString(sb, w * 100.0, 2, RoundingMode.HALF_UP);
		sb.append("% ");
		appendRoundString(sb, bl * 100.0, 2, RoundingMode.HALF_UP);
		sb.append("%");
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
				normalizeHue(components[0]),
				clamp01(components[1]),
				clamp01(components[2])
		};
	}
}
