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

public class ColorSpaceXyzD50 extends AbstractColorSpaceXyz {

	private static final ColorFormatter FORMATTER = ColorFormatters.functionRatio("color", 5, "xyz-d50");

	private static final Pattern COLOR_PATTERN_XYZ = Pattern.compile("^color\\s*\\(\\s*(xyz-d50)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	protected ColorSpaceXyzD50() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		return xyzD65ToD50(xyz);
	}

	@Override
	public double[] convertToXyz(double[] components) {
		return xyzD50ToD65(components);
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("color")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_XYZ.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double x = parseToRatio(matcher.group(2), 1.0);
		double y = parseToRatio(matcher.group(3), 1.0);
		double z = parseToRatio(matcher.group(4), 1.0);
		double alpha = parseToRatio(matcher.group(5), 1.0, 1.0);

		double[] xyzD50 = {x, y, z};

		return newColor(xyzD50, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		return FORMATTER.format(components, alpha);
	}

	@Override
	protected double[] computeComponents(double[] components) {
		return components;
	}
}
