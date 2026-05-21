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

public class ColorSpaceRgb extends AbstractColorSpaceRgb {
	private static final Pattern COLOR_PATTERN_RGB = Pattern.compile("^rgba?\\s*\\(\\s*([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_PATTERN_COLOR_SRGB = Pattern.compile("^color\\s*\\(\\s*srgb\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)\\s+([\\+\\-]?[0-9\\.]+%?)(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_PATTERN_RGB_HEX3 = Pattern.compile("^#([0-9a-f])([0-9a-f])([0-9a-f])([0-9a-f])?$");
	private static final Pattern COLOR_PATTERN_RGB_HEX6 = Pattern.compile("^#([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])?$");
	private static final Pattern COLOR_PATTERN_RGB_HEX_ARGB = Pattern.compile("^0x([0-9a-f][0-9a-f])?([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])$");
	private static final Pattern COLOR_PATTERN_RGB_BARE = Pattern.compile("^([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?$");
	private static final Pattern COLOR_PATTERN_GRAY = Pattern.compile("^graya?\\s*\\(\\s*([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	public static final ColorFormatter FORMATTER_PERCENTAGE = new ColorFormatter() {
		@Override
		public String format(double[] components, double alpha) {
			double r = components[0];
			double g = components[1];
			double b = components[2];

			StringBuilder sb = new StringBuilder();
			sb.append("rgb(");
			appendRoundString(sb, r * 100.0, 2, RoundingMode.HALF_UP);
			sb.append('%');
			sb.append(' ');
			appendRoundString(sb, g * 100.0, 2, RoundingMode.HALF_UP);
			sb.append('%');
			sb.append(' ');
			appendRoundString(sb, b * 100.0, 2, RoundingMode.HALF_UP);
			sb.append('%');
			if (alpha < 1.0) {
				sb.append(" / ");
				appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
			}
			sb.append(')');

			return sb.toString();
		}
	};

	public static final ColorFormatter FORMATTER_NUMBER = new ColorFormatter() {
		@Override
		public String format(double[] components, double alpha) {
			double r = components[0];
			double g = components[1];
			double b = components[2];

			// Clamp to sRGB gamut: rgb(N N N) can only express 0-255
			r = clamp01(r);
			g = clamp01(g);
			b = clamp01(b);

			StringBuilder sb = new StringBuilder();
			sb.append("rgb(");
			appendRoundString(sb, r * 255.0, 0, RoundingMode.HALF_UP);
			sb.append(' ');
			appendRoundString(sb, g * 255.0, 0, RoundingMode.HALF_UP);
			sb.append(' ');
			appendRoundString(sb, b * 255.0, 0, RoundingMode.HALF_UP);
			if (alpha < 1.0) {
				sb.append(" / ");
				appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
			}
			sb.append(')');

			return sb.toString();
		}
	};

	public static final ColorFormatter FORMATTER_HEX = new ColorFormatter() {
		@Override
		public String format(double[] components, double alpha) {
			double r = components[0];
			double g = components[1];
			double b = components[2];

			// Clamp to sRGB gamut: rgb(N N N) can only express 0-255
			r = clamp01(r);
			g = clamp01(g);
			b = clamp01(b);
			alpha = clamp01(alpha);

			int r8 = (int)Math.round(r * 255.0);
			int g8 = (int)Math.round(g * 255.0);
			int b8 = (int)Math.round(b * 255.0);
			int a8 = (int)Math.round(alpha * 255.0);

			StringBuilder sb = new StringBuilder();
			sb.append('#');
			appendHexByte(sb, r8);
			appendHexByte(sb, g8);
			appendHexByte(sb, b8);
			if (alpha < 1.0) {
				appendHexByte(sb, a8);
			}

			return sb.toString();
		}
	};

	public static final ColorFormatter FORMATTER_HEX_ARGB = new ColorFormatter() {
		@Override
		public String format(double[] components, double alpha) {
			double r = components[0];
			double g = components[1];
			double b = components[2];

			// Clamp to sRGB gamut: 0xAARRGGBB can only express 0x00-0xff
			r = clamp01(r);
			g = clamp01(g);
			b = clamp01(b);
			alpha = clamp01(alpha);

			int r8 = (int)Math.round(r * 255.0);
			int g8 = (int)Math.round(g * 255.0);
			int b8 = (int)Math.round(b * 255.0);
			int a8 = (int)Math.round(alpha * 255.0);

			StringBuilder sb = new StringBuilder();
			sb.append("0x");
			appendHexByte(sb, a8);
			appendHexByte(sb, r8);
			appendHexByte(sb, g8);
			appendHexByte(sb, b8);

			return sb.toString();
		}
	};


	protected ColorSpaceRgb() {
	}


	@Override
	public double[] convertFromRgb(double[] rgb) {
		return rgb;
	}

	@Override
	public double[] convertToRgb(double[] components) {
		return components;
	}

	@Override
	protected Color parse(String color) {
		if (color.startsWith("rgb")) {
			return parseRgbFunction(color);
		}

		if (color.startsWith("color")) {
			return parseColorSrgb(color);
		}

		if (color.startsWith("gray")) {
			return parseGray(color);
		}

		Color hex = parseHex(color);
		if (hex != null) {
			return hex;
		}

		Color hexArgb = parseHexArgb(color);
		if (hexArgb != null) {
			return hexArgb;
		}

		return parseBareRgb(color);
	}

	private Color parseRgbFunction(String color) {
		Matcher matcher = COLOR_PATTERN_RGB.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double r = parseToRatio(matcher.group(1), 255.0);
		double g = parseToRatio(matcher.group(2), 255.0);
		double b = parseToRatio(matcher.group(3), 255.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] rgb = {r, g, b};

		rgb = computeRgbFunctionComponents(rgb);

		return newColor(rgb, alpha);
	}

	private Color parseColorSrgb(String color) {
		Matcher matcher = COLOR_PATTERN_COLOR_SRGB.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double r = parseToRatio(matcher.group(1), 1.0);
		double g = parseToRatio(matcher.group(2), 1.0);
		double b = parseToRatio(matcher.group(3), 1.0);
		double alpha = parseToRatio(matcher.group(4), 1.0, 1.0);

		double[] rgb = {r, g, b};

		return newColor(rgb, alpha);
	}

	private Color parseGray(String color) {
		Matcher matcher = COLOR_PATTERN_GRAY.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		double g = parseToRatio(matcher.group(1), 255.0);
		double alpha = parseToRatio(matcher.group(2), 1.0, 1.0);

		double[] rgb = {g, g, g};

		rgb = computeRgbFunctionComponents(rgb);

		return newColor(rgb, alpha);
	}

	private Color parseHex(String color) {
		Matcher rgbHex6Matcher = COLOR_PATTERN_RGB_HEX6.matcher(color);
		if (rgbHex6Matcher.matches()) {
			int r8 = Integer.parseInt(rgbHex6Matcher.group(1), 16);
			int g8 = Integer.parseInt(rgbHex6Matcher.group(2), 16);
			int b8 = Integer.parseInt(rgbHex6Matcher.group(3), 16);
			int a8 = (rgbHex6Matcher.group(4) != null) ? Integer.parseInt(rgbHex6Matcher.group(4), 16) : 0xFF;

			double r = ((double) r8) / 255.0;
			double g = ((double) g8) / 255.0;
			double b = ((double) b8) / 255.0;
			double alpha = ((double) a8) / 255.0;

			double[] rgb = {r, g, b};

			return newColor(rgb, alpha);
		}

		Matcher rgbHex3Matcher = COLOR_PATTERN_RGB_HEX3.matcher(color);
		if (!rgbHex3Matcher.matches()) {
			return null;
		}

		int r4 = Integer.parseInt(rgbHex3Matcher.group(1), 16);
		int g4 = Integer.parseInt(rgbHex3Matcher.group(2), 16);
		int b4 = Integer.parseInt(rgbHex3Matcher.group(3), 16);
		int a4 = (rgbHex3Matcher.group(4) != null) ? Integer.parseInt(rgbHex3Matcher.group(4), 16) : 0xF;

		int r8 = (r4 << 4) | r4;
		int g8 = (g4 << 4) | g4;
		int b8 = (b4 << 4) | b4;
		int a8 = (a4 << 4) | a4;

		double r = ((double) r8) / 255.0;
		double g = ((double) g8) / 255.0;
		double b = ((double) b8) / 255.0;
		double alpha = ((double) a8) / 255.0;

		double[] rgb = {r, g, b};

		return newColor(rgb, alpha);
	}

	private Color parseHexArgb(String color) {
		Matcher matcher = COLOR_PATTERN_RGB_HEX_ARGB.matcher(color);
		if (!matcher.matches()) {
			return null;
		}

		int a8 = (matcher.group(1) != null) ? Integer.parseInt(matcher.group(1), 16) : 0xFF;
		int r8 = Integer.parseInt(matcher.group(2), 16);
		int g8 = Integer.parseInt(matcher.group(3), 16);
		int b8 = Integer.parseInt(matcher.group(4), 16);

		double r = ((double) r8) / 255.0;
		double g = ((double) g8) / 255.0;
		double b = ((double) b8) / 255.0;
		double alpha = ((double) a8) / 255.0;

		double[] rgb = {r, g, b};

		return newColor(rgb, alpha);
	}

	private Color parseBareRgb(String color) {
		Matcher rgbBareMatcher = COLOR_PATTERN_RGB_BARE.matcher(color);
		if (!rgbBareMatcher.matches()) {
			return null;
		}

		double r = parseToRatio(rgbBareMatcher.group(1), 255.0);
		double g = parseToRatio(rgbBareMatcher.group(2), 255.0);
		double b = parseToRatio(rgbBareMatcher.group(3), 255.0);
		double alpha = parseToRatio(rgbBareMatcher.group(4), 1.0, 1.0);

		double[] rgb = {r, g, b};

		rgb = computeRgbFunctionComponents(rgb);

		return newColor(rgb, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		return FORMATTER_PERCENTAGE.format(components, alpha);
	}

	@Override
	protected double[] computeComponents(double[] components) {
		return components;
	}

	private static double[] computeRgbFunctionComponents(double[] components) {
		return new double[] {
				clamp01(components[0]),
				clamp01(components[1]),
				clamp01(components[2])
		};
	}

	private static void appendHexByte(StringBuilder sb, int value) {
		if (value <= 0xf) {
			sb.append('0');
		}
		sb.append(Integer.toHexString(value));
	}
}
