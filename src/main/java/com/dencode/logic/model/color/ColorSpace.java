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

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;

public abstract class ColorSpace implements Cloneable {

	public static final ColorSpace RGB = new ColorSpaceRgb();
	public static final ColorSpace RGB_NAME = new ColorSpaceRgbName();
	public static final ColorSpace XYZ = new ColorSpaceXyz();
	public static final ColorSpace XYZ_D50 = new ColorSpaceXyzD50();
	public static final ColorSpace HSL = new ColorSpaceHsl();
	public static final ColorSpace HSV = new ColorSpaceHsv();
	public static final ColorSpace HWB = new ColorSpaceHwb();
	public static final ColorSpace LAB = new ColorSpaceLab();
	public static final ColorSpace LCH = new ColorSpaceLch();
	public static final ColorSpace OKLAB = new ColorSpaceOklab();
	public static final ColorSpace OKLCH = new ColorSpaceOklch();
	public static final ColorSpace CMY = new ColorSpaceCmy();
	public static final ColorSpace CMYK = new ColorSpaceCmyk();
	public static final ColorSpace CMYK_ECI = new ColorSpaceCmykEci();

	// CSS Color 4 lin_sRGB()/gam_sRGB() transfer function constants.
	private static final double SRGB_TRANSFER_ALPHA = 1.055;
	private static final double SRGB_TRANSFER_BETA = 0.055;
	private static final double SRGB_TRANSFER_GAMMA = 2.4;
	private static final double SRGB_LINEAR_SCALE = 12.92;
	private static final double SRGB_TO_LINEAR_THRESHOLD = 0.04045;
	private static final double LINEAR_TO_SRGB_THRESHOLD = 0.0031308;

	// CSS Color 4 standard white point:
	// D50 = [0.3457 / 0.3585, 1.0, (1.0 - 0.3457 - 0.3585) / 0.3585].
	protected static final double CSS_D50_WHITE_X = 0.9642956764295677;
	protected static final double CSS_D50_WHITE_Y = 1.0;
	protected static final double CSS_D50_WHITE_Z = 0.8251046025104602;

	// CSS Color 4 standard white point:
	// D65 = [0.3127 / 0.3290, 1.0, (1.0 - 0.3127 - 0.3290) / 0.3290].
	protected static final double CSS_D65_WHITE_X = 0.9504559270516716;
	protected static final double CSS_D65_WHITE_Y = 1.0;
	protected static final double CSS_D65_WHITE_Z = 1.0890577507598784;

	// CSS Color 4: linear-light sRGB to XYZ (D65).
	// [[506752 / 1228815, 87881 / 245763, 12673 / 70218],
	//  [87098 / 409605, 175762 / 245763, 12673 / 175545],
	//  [7918 / 409605, 87881 / 737289, 1001167 / 1053270]]
	private static final double[][] LINEAR_SRGB_TO_XYZ_D65_MATRIX = {
		{0.41239079926595934, 0.357584339383878, 0.1804807884018343},
		{0.21263900587151027, 0.715168678767756, 0.07219231536073371},
		{0.01933081871559182, 0.11919477979462598, 0.9505321522496607}
	};

	// CSS Color 4: XYZ (D65) to linear-light sRGB.
	// [[12831 / 3959, -329 / 214, -1974 / 3959],
	//  [-851781 / 878810, 1648619 / 878810, 36519 / 878810],
	//  [705 / 12673, -2585 / 12673, 705 / 667]]
	private static final double[][] XYZ_D65_TO_LINEAR_SRGB_MATRIX = {
		{3.2409699419045226, -1.5373831775700935, -0.4986107602930033},
		{-0.9692436362808798, 1.8759675015077202, 0.04155505740717557},
		{0.05563007969699361, -0.20397695888897655, 1.0569715142428786}
	};

	// CSS Color 4: Bradford chromatic adaptation from D65 to D50.
	// Uses CIE four-figure x,y chromaticities for the D65 and D50 white points.
	private static final double[][] XYZ_D65_TO_D50_BRADFORD_MATRIX = {
		{1.0479297925449969, 0.022946870601609652, -0.05019226628920524},
		{0.02962780877005599, 0.9904344267538799, -0.017073799063418826},
		{-0.009243040646204504, 0.015055191490298152, 0.7518742814281371}
	};

	// CSS Color 4: Bradford chromatic adaptation from D50 to D65.
	// Paired inverse matrix for XYZ_D65_TO_D50_BRADFORD_MATRIX.
	private static final double[][] XYZ_D50_TO_D65_BRADFORD_MATRIX = {
		{0.955473421488075, -0.02309845494876471, 0.06325924320057072},
		{-0.0283697093338637, 1.0099953980813041, 0.021041441191917323},
		{0.012314014864481998, -0.020507649298898964, 1.330365926242124}
	};


	protected ColorFormatter formatter = null;


	public abstract Color convert(Color color);

	public abstract double[] convertFromRgb(double[] rgb);

	public abstract double[] convertFromXyz(double[] xyz);

	public abstract double[] convertToRgb(double[] components);

	public abstract double[] convertToXyz(double[] components);

	protected abstract Color parse(String color);

	protected abstract String defaultFormat(double[] components, double alpha);

	protected abstract double[] computeComponents(double[] components);


	public ColorSpace with(ColorFormatter formatter) {
		try {
			ColorSpace clone = (ColorSpace) super.clone();
			clone.formatter = formatter;
			return clone;
		} catch (CloneNotSupportedException e) {
			throw new IllegalStateException(e);
		}
	}

	public Color newColor(double[] components, double alpha) {
		return Color.from(this, components, alpha);
	}

	public Color parseColor(String color) {
		if (color == null) {
			return null;
		}

		return parse(color);
	}

	public String format(double[] components, double alpha) {
		alpha = normalizeAlpha(alpha);

		if (this.formatter != null) {
			return this.formatter.format(components, alpha);
		}
		return defaultFormat(components, alpha);
	}

	protected static double[] xyzToRgb(double[] xyz) {
		// XYZ (D65) to Linear sRGB
		double lrgb[] = xyzToLinearRgb(xyz);

		// Linear sRGB to sRGB
		return linearRgbToRgb(lrgb);
	}

	protected static double[] rgbToXyz(double[] rgb) {
		// sRGB to Linear sRGB
		double[] lrgb = rgbToLinearRgb(rgb);

		// Linear sRGB to XYZ (D65)
		double[] xyz = linearRgbToXyz(lrgb);

		return xyz;
	}

	protected static double[] rgbToLinearRgb(double[] rgb) {
		return Arrays.stream(rgb)
				.map(ColorSpace::rgbToLinearRgb)
				.toArray();
	}

	private static double rgbToLinearRgb(double c) {
		// CSS Color 4 lin_sRGB(): preserve the sign for extended-gamut sRGB.
		double abs = Math.abs(c);
		if (abs <= SRGB_TO_LINEAR_THRESHOLD) {
			return c / SRGB_LINEAR_SCALE;
		}

		double sign = (c < 0.0) ? -1.0 : 1.0;
		return sign * Math.pow((abs + SRGB_TRANSFER_BETA) / SRGB_TRANSFER_ALPHA, SRGB_TRANSFER_GAMMA);
	}

	protected static double[] linearRgbToRgb(double[] lrgb) {
		return Arrays.stream(lrgb)
				.map(ColorSpace::linearRgbToRgb)
				.toArray();
	}

	private static double linearRgbToRgb(double c) {
		// CSS Color 4 gam_sRGB(): preserve the sign for extended-gamut sRGB.
		double abs = Math.abs(c);
		if (abs > LINEAR_TO_SRGB_THRESHOLD) {
			double sign = (c < 0.0) ? -1.0 : 1.0;
			return sign * (SRGB_TRANSFER_ALPHA * Math.pow(abs, 1.0 / SRGB_TRANSFER_GAMMA) - SRGB_TRANSFER_BETA);
		}

		return SRGB_LINEAR_SCALE * c;
	}

	protected static double[] linearRgbToXyz(double[] lrgb) {
		return multiplyMatrix(LINEAR_SRGB_TO_XYZ_D65_MATRIX, lrgb);
	}

	protected static double[] xyzToLinearRgb(double[] xyz) {
		return multiplyMatrix(XYZ_D65_TO_LINEAR_SRGB_MATRIX, xyz);
	}

	protected static double[] xyzD65ToD50(double[] xyz) {
		return multiplyMatrix(XYZ_D65_TO_D50_BRADFORD_MATRIX, xyz);
	}

	protected static double[] xyzD50ToD65(double[] xyzD50) {
		return multiplyMatrix(XYZ_D50_TO_D65_BRADFORD_MATRIX, xyzD50);
	}

	protected static double[] multiplyMatrix(double[][] matrix, double[] vector) {
		return new double[] {
				(matrix[0][0] * vector[0]) + (matrix[0][1] * vector[1]) + (matrix[0][2] * vector[2]),
				(matrix[1][0] * vector[0]) + (matrix[1][1] * vector[1]) + (matrix[1][2] * vector[2]),
				(matrix[2][0] * vector[0]) + (matrix[2][1] * vector[1]) + (matrix[2][2] * vector[2])
		};
	}

	protected static double clamp(double d, double min, double max) {
		return Math.min(Math.max(d, min), max);
	}

	protected static double clamp01(double d) {
		return clamp(d, 0.0, 1.0);
	}

	protected static double clamp100(double d) {
		return clamp(d, 0.0, 100.0);
	}

	protected static double normalizeHue(double h) {
		double hue = h % 360.0;
		if (hue < 0.0) {
			hue += 360.0;
		}
		return hue;
	}

	protected static double normalizeAlpha(double alpha) {
		return clamp01(alpha);
	}

	protected static double snapToZero(double value, double threshold) {
		if (Math.abs(value) <= threshold) {
			return 0.0;
		}
		return value;
	}

	protected static double parseToRatio(String val, double base) {
		return parseToRatio(val, base, 0.0);
	}

	protected static double parseToRatio(String val, double base, double defaultVal) {
		if (val == null) {
			return defaultVal;
		}

		if (val.endsWith("%")) {
			// percentage
			String v = val.substring(0, val.length() - 1);
			return Double.parseDouble(v) / 100.0;
		} else {
			double d = Double.parseDouble(val);
			if (d < 1.0 || (d == 1.0 && val.indexOf('.') != -1)) {
				// ratio
				return Double.parseDouble(val);
			} else {
				// value
				return Double.parseDouble(val) / base;
			}
		}
	}

	protected static double parseScaledValue(String val, double scale) {
		if (val == null) {
			return 0.0;
		}

		if (val.endsWith("%")) {
			String v = val.substring(0, val.length() - 1);
			return Double.parseDouble(v) * scale / 100.0;
		} else {
			return Double.parseDouble(val);
		}
	}

	protected static void appendRoundString(StringBuilder sb, double d, int scale, RoundingMode roundingMode) {
		double ri = Math.rint(d);
		if (d == ri) {
			// Fast path for integer values: avoid BigDecimal allocation in common formatted output.
			sb.append((long)ri);
		} else {
			BigDecimal bd = BigDecimal.valueOf(d).setScale(scale, roundingMode);
			sb.append(bd.stripTrailingZeros().toPlainString());
		}
	}
}
