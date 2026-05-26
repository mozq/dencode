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

public final class ColorFormatters {

	private ColorFormatters() {
		// NOP
	}

	public static ColorFormatter functionRatio(String functionName, String... leadingComponents) {
		return functionRatio(functionName, 5, leadingComponents);
	}

	public static ColorFormatter functionRatio(String functionName, int componentScale, String... leadingComponents) {
		return new ColorFormatter() {
			@Override
			public String format(double[] components, double alpha) {
				StringBuilder sb = new StringBuilder();
				sb.append(functionName);
				sb.append('(');

				boolean needsSeparator = false;
				for (String leadingComponent : leadingComponents) {
					if (needsSeparator) {
						sb.append(' ');
					}
					sb.append(leadingComponent);
					needsSeparator = true;
				}
				for (double component : components) {
					if (needsSeparator) {
						sb.append(' ');
					}
					ColorFormatter.appendRoundString(sb, component, componentScale, RoundingMode.HALF_UP);
					needsSeparator = true;
				}
				if (alpha < 1.0) {
					sb.append(" / ");
					ColorFormatter.appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
				}
				sb.append(')');

				return sb.toString();
			}
		};
	}

	public static ColorFormatter functionNumber255(String functionName, String... leadingComponents) {
		return functionNumber255(functionName, 0, leadingComponents);
	}

	public static ColorFormatter functionNumber255(String functionName, int componentScale, String... leadingComponents) {
		return new ColorFormatter() {
			@Override
			public String format(double[] components, double alpha) {
				StringBuilder sb = new StringBuilder();
				sb.append(functionName);
				sb.append('(');

				boolean needsSeparator = false;
				for (String leadingComponent : leadingComponents) {
					if (needsSeparator) {
						sb.append(' ');
					}
					sb.append(leadingComponent);
					needsSeparator = true;
				}
				for (double component : components) {
					if (needsSeparator) {
						sb.append(' ');
					}
					ColorFormatter.appendRoundString(sb, ColorSpace.clamp01(component) * 255.0, componentScale, RoundingMode.HALF_UP);
					needsSeparator = true;
				}
				if (alpha < 1.0) {
					sb.append(" / ");
					ColorFormatter.appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
				}
				sb.append(')');

				return sb.toString();
			}
		};
	}

	public static ColorFormatter functionPercentage(String functionName, String... leadingComponents) {
		return functionPercentage(functionName, 2, leadingComponents);
	}

	public static ColorFormatter functionPercentage(String functionName, int componentScale, String... leadingComponents) {
		return new ColorFormatter() {
			@Override
			public String format(double[] components, double alpha) {
				StringBuilder sb = new StringBuilder();
				sb.append(functionName);
				sb.append('(');

				boolean needsSeparator = false;
				for (String leadingComponent : leadingComponents) {
					if (needsSeparator) {
						sb.append(' ');
					}
					sb.append(leadingComponent);
					needsSeparator = true;
				}
				for (double component : components) {
					if (needsSeparator) {
						sb.append(' ');
					}
					ColorFormatter.appendRoundString(sb, component * 100.0, componentScale, RoundingMode.HALF_UP);
					sb.append('%');
					needsSeparator = true;
				}
				if (alpha < 1.0) {
					sb.append(" / ");
					ColorFormatter.appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
				}
				sb.append(')');

				return sb.toString();
			}
		};
	}

	public static ColorFormatter functionHuePercentage(String functionName, int hueScale, int percentageScale) {
		return new ColorFormatter() {
			@Override
			public String format(double[] components, double alpha) {
				StringBuilder sb = new StringBuilder();
				sb.append(functionName);
				sb.append('(');

				ColorFormatter.appendRoundString(sb, components[0], hueScale, RoundingMode.HALF_UP);
				sb.append("deg");
				for (int i = 1; i < components.length; i++) {
					sb.append(' ');
					ColorFormatter.appendRoundString(sb, components[i] * 100.0, percentageScale, RoundingMode.HALF_UP);
					sb.append('%');
				}
				if (alpha < 1.0) {
					sb.append(" / ");
					ColorFormatter.appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
				}
				sb.append(')');

				return sb.toString();
			}
		};
	}
}
