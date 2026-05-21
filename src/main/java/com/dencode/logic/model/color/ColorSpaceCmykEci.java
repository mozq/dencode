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

import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.io.IOException;
import java.io.InputStream;
import java.math.RoundingMode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ColorSpaceCmykEci extends AbstractColorSpaceXyz {
	private static final Pattern COLOR_PATTERN_CMYK = Pattern.compile("^color\\s*\\(\\s*--ecicmyk\\s+(\\+?[0-9\\.]+%?)\\s+(\\+?[0-9\\.]+%?)\\s+(\\+?[0-9\\.]+%?)\\s+(\\+?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	private static final ICC_ColorSpace COLOR_SPACE_CMYK;
	static {
		try (InputStream is = ColorSpaceCmykEci.class.getResourceAsStream("/color_profiles/eciCMYK_v2.icc")) {
			COLOR_SPACE_CMYK = new ICC_ColorSpace(ICC_Profile.getInstance(is));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}

	protected ColorSpaceCmykEci() {
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] xyzD50 = xyzD65ToD50(xyz);
		double[] cmyk = f2d(COLOR_SPACE_CMYK.fromCIEXYZ(d2f(xyzD50)));

		return cmyk;
	}

	@Override
	public double[] convertToXyz(double[] components) {
		double[] cmyk = computeComponents(components); // Clamp to ICC profile input range

		double[] xyzD50 = f2d(COLOR_SPACE_CMYK.toCIEXYZ(d2f(cmyk)));
		double[] xyz = xyzD50ToD65(xyzD50);

		return xyz;
	}

	private static float[] d2f(double[] d) {
		int len = d.length;
		float[] f = new float[len];
		for (int i = 0; i < len; i++) {
			f[i] = (float)d[i];
		}
		return f;
	}

	private static double[] f2d(float[] f) {
		int len = f.length;
		double[] d = new double[len];
		for (int i = 0; i < len; i++) {
			d[i] = f[i];
		}
		return d;
	}

	@Override
	protected Color parse(String color) {
		if (!color.startsWith("color")) {
			return null;
		}

		Matcher matcher = COLOR_PATTERN_CMYK.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double c = parseToRatio(matcher.group(1), 1.0);
		double m = parseToRatio(matcher.group(2), 1.0);
		double y = parseToRatio(matcher.group(3), 1.0);
		double k = parseToRatio(matcher.group(4), 1.0);
		double alpha = parseToRatio(matcher.group(5), 1.0, 1.0);

		double[] cmyk = {c, m, y, k};

		return newColor(cmyk, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		double c = components[0];
		double m = components[1];
		double y = components[2];
		double k = components[3];

		StringBuilder sb = new StringBuilder();
		sb.append("color(--ecicmyk ");
		appendRoundString(sb, c, 5, RoundingMode.HALF_UP);
		sb.append(' ');
		appendRoundString(sb, m, 5, RoundingMode.HALF_UP);
		sb.append(' ');
		appendRoundString(sb, y, 5, RoundingMode.HALF_UP);
		sb.append(' ');
		appendRoundString(sb, k, 5, RoundingMode.HALF_UP);
		if (alpha < 1.0) {
			sb.append(" / ");
			appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
		}
		sb.append(')');

		return sb.toString();
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
