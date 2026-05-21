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

public class ColorSpaceOklch extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_OKLCH = Pattern.compile("^oklch\\s*\\(\\s*([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	// CSS Color 4: OkLCh powerless hue threshold.
	private static final double OKLCH_POWERLESS_HUE_CHROMA_EPSILON = 0.000004;

	protected ColorSpaceOklch() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] oklab = OKLAB.convertFromXyz(xyz);
		double ol = oklab[0];
		double oa = oklab[1];
		double ob = oklab[2];

		double oc = Math.sqrt(oa * oa + ob * ob);
		double oh = Math.atan2(ob, oa) * 180.0 / Math.PI;

		oh = normalizeHue(oh);

		return new double[] {ol, oc, oh};
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double ol = components[0];
		double oc = components[1];
		double oh = components[2];

		oh = normalizeHue(oh);

		double oa = oc * Math.cos(oh * Math.PI / 180.0);
		double ob = oc * Math.sin(oh * Math.PI / 180.0);

		double[] oklab = new double[] {ol, oa, ob};

		return OKLAB.convertToXyz(oklab);
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("oklch")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_OKLCH.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double ol = parseToRatio(matcher.group(1), 1.0);
		double oc = parseScaledValue(matcher.group(2), 0.4);
		double oh = Double.parseDouble(matcher.group(3));
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] oklch = {ol, oc, oh};

		return newColor(oklch, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double ol = components[0];
		double oc = components[1];
		double oh = components[2];

		StringBuilder sb = new StringBuilder();
		sb.append("oklch(");
		appendRoundString(sb, ol * 100.0, 2, RoundingMode.HALF_UP);
		sb.append("% ");
		appendRoundString(sb, oc, 4, RoundingMode.HALF_UP);
		sb.append(' ');
		appendRoundString(sb, oh, 2, RoundingMode.HALF_UP);
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
		double ol = clamp01(components[0]);
		double oc = snapToZero(Math.max(components[1], 0.0), OKLCH_POWERLESS_HUE_CHROMA_EPSILON);
		double oh = normalizeHue(components[2]);
		if (oc == 0.0) {
			oh = 0.0;
		}
		return new double[] {ol, oc, oh};
	}
}
