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

public abstract class AbstractColorSpaceCmykProfile extends AbstractColorSpaceXyz {
	private final String cssColorSpaceName;
	private final Pattern colorPatternCmyk;
	private ColorFormatter defaultFormatter;

	protected AbstractColorSpaceCmykProfile(String cssColorSpaceName) {
		this.cssColorSpaceName = cssColorSpaceName;
		this.colorPatternCmyk = Pattern.compile("^color\\s*\\(\\s*" + Pattern.quote(cssColorSpaceName) + "\\s+(\\+?[0-9\\.]+%?)\\s+(\\+?[0-9\\.]+%?)\\s+(\\+?[0-9\\.]+%?)\\s+(\\+?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	}

	@Override
	public double[] convertToXyz(double[] components) {
		return xyzD50ToD65(convertToXyzD50(computeComponents(components)));
	}

	protected abstract double[] convertToXyzD50(double[] cmyk);

	private ColorFormatter formatter() {
		if (defaultFormatter == null) {
			defaultFormatter = ColorFormatters.functionPercentage("color", 2, cssColorSpaceName);
		}

		return defaultFormatter;
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("color")) {
			return null;
		}

		Matcher matcher = colorPatternCmyk.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double c = parseToRatio(matcher.group(1), 1.0);
		double m = parseToRatio(matcher.group(2), 1.0);
		double y = parseToRatio(matcher.group(3), 1.0);
		double k = parseToRatio(matcher.group(4), 1.0);
		double alpha = parseToRatio(matcher.group(5), 1.0, 1.0);

		return newColor(new double[] {c, m, y, k}, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		return formatter().format(components, alpha);
	}

	@Override
	protected double[] computeComponents(double[] components) {
		// CSS Color 5 device-cmyk-compatible behavior: clamp at computed-value time
		return new double[] {
				clamp01(components[0]),
				clamp01(components[1]),
				clamp01(components[2]),
				clamp01(components[3])
		};
	}
}
