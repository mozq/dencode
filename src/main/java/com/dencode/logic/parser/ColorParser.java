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
package com.dencode.logic.parser;

import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.dencode.logic.util.ColorNameUtils;

public class ColorParser {
	
	public static final ICC_ColorSpace COLOR_SPACE_CMYK;
	static {
		ICC_ColorSpace cs;
		try (InputStream is = ColorParser.class.getResourceAsStream("/color_profiles/eciCMYK_v2.icc")) {
			cs = new ICC_ColorSpace(ICC_Profile.getInstance(is));
		} catch (IOException e) {
			cs = null;
		}
		COLOR_SPACE_CMYK = cs;
	}
	
	private static final int COLOR_MAX_LENGTH = 50;
	
	private static final Pattern COLOR_RGB_HEX3_PATTERN = Pattern.compile("^#?([0-9a-f])([0-9a-f])([0-9a-f])([0-9a-f])?$");
	private static final Pattern COLOR_RGB_HEX6_PATTERN = Pattern.compile("^#?([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])?$");
	private static final Pattern COLOR_RGB_COMMA_PATTERN = Pattern.compile("^(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?$");
	private static final Pattern COLOR_RGB_FN_PATTERN = Pattern.compile("^rgba?\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_HSL_FN_PATTERN = Pattern.compile("^hsla?\\s*\\(\\s*([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_HSV_FN_PATTERN = Pattern.compile("^hsva?\\s*\\(\\s*([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_HWB_FN_PATTERN = Pattern.compile("^hwba?\\s*\\(\\s*([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_LAB_FN_PATTERN = Pattern.compile("^lab\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_LCH_FN_PATTERN = Pattern.compile("^lch\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_OKLAB_FN_PATTERN = Pattern.compile("^oklab\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_OKLCH_FN_PATTERN = Pattern.compile("^oklch\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)([\\+\\-]?[0-9\\.]+)(?:deg)?(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_GRAY_FN_PATTERN = Pattern.compile("^graya?\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_CMY_FN_PATTERN = Pattern.compile("^(?:device-)?cmya?\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	private static final Pattern COLOR_CMYK_FN_PATTERN = Pattern.compile("^(?:device-)?cmyka?\\s*\\(\\s*(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*,\\s*|\\s+)(\\+?[0-9\\.]+%?)(?:\\s*[,/]\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");
	
	private ColorParser() {
		// NOP
	}
	
	public static double[] parseColor(String val) {
		if (val == null || val.isEmpty()) {
			return null;
		}
		
		if (COLOR_MAX_LENGTH < val.length()) {
			return null;
		}
		
		String lv = val.trim().toLowerCase();
		
		double[] namedColor = ColorNameUtils.toRGBA(lv);
		if (namedColor != null) {
			return namedColor;
		}
		
		try {
			if (lv.startsWith("rgb")) {
				Matcher rgbFnMatcher = COLOR_RGB_FN_PATTERN.matcher(lv);
				if (rgbFnMatcher.matches()) {
					double r = parseToRate(rgbFnMatcher.group(1), 255.0);
					double g = parseToRate(rgbFnMatcher.group(2), 255.0);
					double b = parseToRate(rgbFnMatcher.group(3), 255.0);
					double a = parseToRate(rgbFnMatcher.group(4), 1.0, 1.0);
					
					r = normalizeRate(r);
					g = normalizeRate(g);
					b = normalizeRate(b);
					a = normalizeRate(a);
					
					return new double[] {r, g, b, a};
				}
			} else if (lv.startsWith("hsl")) {
				Matcher hslFnMatcher = COLOR_HSL_FN_PATTERN.matcher(lv);
				if (hslFnMatcher.matches()) {
					double h = Double.parseDouble(hslFnMatcher.group(1));
					double s = parseToRate(hslFnMatcher.group(2), 1.0);
					double l = parseToRate(hslFnMatcher.group(3), 1.0);
					double a = parseToRate(hslFnMatcher.group(4), 1.0, 1.0);
					
					h = normalizeHue(h);
					s = normalizeRate(s);
					l = normalizeRate(l);
					a = normalizeRate(a);
					
					return fromHSL(h, s, l, a);
				}
			} else if (lv.startsWith("hsv")) {
				Matcher hsvFnMatcher = COLOR_HSV_FN_PATTERN.matcher(lv);
				if (hsvFnMatcher.matches()) {
					double h = Double.parseDouble(hsvFnMatcher.group(1));
					double s = parseToRate(hsvFnMatcher.group(2), 1.0);
					double v = parseToRate(hsvFnMatcher.group(3), 1.0);
					double a = parseToRate(hsvFnMatcher.group(4), 1.0, 1.0);
					
					h = normalizeHue(h);
					s = normalizeRate(s);
					v = normalizeRate(v);
					a = normalizeRate(a);
					
					return fromHSV(h, s, v, a);
				}
			} else if (lv.startsWith("hwb")) {
				Matcher hwbFnMatcher = COLOR_HWB_FN_PATTERN.matcher(lv);
				if (hwbFnMatcher.matches()) {
					double h = Double.parseDouble(hwbFnMatcher.group(1));
					double w = parseToRate(hwbFnMatcher.group(2), 1.0);
					double b = parseToRate(hwbFnMatcher.group(3), 1.0);
					double a = parseToRate(hwbFnMatcher.group(4), 1.0, 1.0);
					
					h = normalizeHue(h);
					w = normalizeRate(w);
					b = normalizeRate(b);
					a = normalizeRate(a);
					
					return fromHwb(h, w, b, a);
				}
			} else if (lv.startsWith("lab")) {
				Matcher labFnMatcher = COLOR_LAB_FN_PATTERN.matcher(lv);
				if (labFnMatcher.matches()) {
					double l = parseToRate(labFnMatcher.group(1), 100.0);
					double a = parseToRateWithScale(labFnMatcher.group(2), 125.0);
					double b = parseToRateWithScale(labFnMatcher.group(3), 125.0);
					double alpha = parseToRate(labFnMatcher.group(4), 1.0, 1.0);
					
					l = normalizeRate(l);
					alpha = normalizeRate(alpha);
					
					return fromLab(l, a, b, alpha);
				}
			} else if (lv.startsWith("lch")) {
				Matcher lchFnMatcher = COLOR_LCH_FN_PATTERN.matcher(lv);
				if (lchFnMatcher.matches()) {
					double l = parseToRate(lchFnMatcher.group(1), 100.0);
					double c = parseToRateWithScale(lchFnMatcher.group(2), 150.0);
					double h = Double.parseDouble(lchFnMatcher.group(3));
					double alpha = parseToRate(lchFnMatcher.group(4), 1.0, 1.0);
					
					l = normalizeRate(l);
					h = normalizeHue(h);
					alpha = normalizeRate(alpha);
					
					double a = c * Math.cos(h * Math.PI / 180.0);
					double b = c * Math.sin(h * Math.PI / 180.0);
					
					return fromLab(l, a, b, alpha);
				}
			} else if (lv.startsWith("oklab")) {
				Matcher oklabFnMatcher = COLOR_OKLAB_FN_PATTERN.matcher(lv);
				if (oklabFnMatcher.matches()) {
					double l = parseToRate(oklabFnMatcher.group(1), 1.0);
					double a = parseToRateWithScale(oklabFnMatcher.group(2), 0.4);
					double b = parseToRateWithScale(oklabFnMatcher.group(3), 0.4);
					double alpha = parseToRate(oklabFnMatcher.group(4), 1.0, 1.0);
					
					l = normalizeRate(l);
					alpha = normalizeRate(alpha);
					
					return fromOklab(l, a, b, alpha);
				}
			} else if (lv.startsWith("oklch")) {
				Matcher oklchFnMatcher = COLOR_OKLCH_FN_PATTERN.matcher(lv);
				if (oklchFnMatcher.matches()) {
					double l = parseToRate(oklchFnMatcher.group(1), 1.0);
					double c = parseToRateWithScale(oklchFnMatcher.group(2), 0.4);
					double h = Double.parseDouble(oklchFnMatcher.group(3));
					double alpha = parseToRate(oklchFnMatcher.group(4), 1.0, 1.0);
					
					l = normalizeRate(l);
					h = normalizeHue(h);
					alpha = normalizeRate(alpha);
					
					double a = c * Math.cos(h * Math.PI / 180.0);
					double b = c * Math.sin(h * Math.PI / 180.0);
					
					return fromOklab(l, a, b, alpha);
				}
			} else if (lv.startsWith("gray")) {
				Matcher grayFnMatcher = COLOR_GRAY_FN_PATTERN.matcher(lv);
				if (grayFnMatcher.matches()) {
					double g = parseToRate(grayFnMatcher.group(1), 255.0);
					double a = parseToRate(grayFnMatcher.group(2), 1.0, 1.0);
					
					g = normalizeRate(g);
					a = normalizeRate(a);
					
					return new double[] {g, g, g, a};
				}
			} else if (lv.startsWith("cmyk") || lv.startsWith("device-cmyk")) {
				Matcher cmykFnMatcher = COLOR_CMYK_FN_PATTERN.matcher(lv);
				if (cmykFnMatcher.matches()) {
					double c = parseToRate(cmykFnMatcher.group(1), 1.0);
					double m = parseToRate(cmykFnMatcher.group(2), 1.0);
					double y = parseToRate(cmykFnMatcher.group(3), 1.0);
					double k = parseToRate(cmykFnMatcher.group(4), 1.0);
					double a = parseToRate(cmykFnMatcher.group(5), 1.0, 1.0);
					
					c = normalizeRate(c);
					m = normalizeRate(m);
					y = normalizeRate(y);
					k = normalizeRate(k);
					a = normalizeRate(a);
					
					return fromCMYK(c, m, y, k, a);
				}
			} else if (lv.startsWith("cmy") || lv.startsWith("device-cmy")) {
				Matcher cmyFnMatcher = COLOR_CMY_FN_PATTERN.matcher(lv);
				if (cmyFnMatcher.matches()) {
					double c = parseToRate(cmyFnMatcher.group(1), 1.0);
					double m = parseToRate(cmyFnMatcher.group(2), 1.0);
					double y = parseToRate(cmyFnMatcher.group(3), 1.0);
					double a = parseToRate(cmyFnMatcher.group(4), 1.0, 1.0);

					c = normalizeRate(c);
					m = normalizeRate(m);
					y = normalizeRate(y);
					a = normalizeRate(a);

					return fromCMY(c, m, y, a);
				}
			} else {
				Matcher rgbHex6Matcher= COLOR_RGB_HEX6_PATTERN.matcher(lv);
				if (rgbHex6Matcher.matches()) {
					int r = Integer.parseInt(rgbHex6Matcher.group(1), 16);
					int g = Integer.parseInt(rgbHex6Matcher.group(2), 16);
					int b = Integer.parseInt(rgbHex6Matcher.group(3), 16);
					double a;
					if (rgbHex6Matcher.group(4) != null) {
						a = ((double) Integer.parseInt(rgbHex6Matcher.group(4), 16)) / 255.0;
					} else {
						a = 1.0;
					}
					
					return new double[] {
							((double) r) / 255.0,
							((double) g) / 255.0,
							((double) b) / 255.0,
							a
							};
				}
	
				Matcher rgbHex3Matcher = COLOR_RGB_HEX3_PATTERN.matcher(lv);
				if (rgbHex3Matcher.matches()) {
					int r = Integer.parseInt(rgbHex3Matcher.group(1), 16);
					int g = Integer.parseInt(rgbHex3Matcher.group(2), 16);
					int b = Integer.parseInt(rgbHex3Matcher.group(3), 16);
					
					r = (r << 4) | r;
					g = (g << 4) | g;
					b = (b << 4) | b;

					double a;
					if (rgbHex3Matcher.group(4) != null) {
						int a8 = Integer.parseInt(rgbHex3Matcher.group(4), 16);
						a8 = (a8 << 4) | a8;
						a = ((double) a8) / 255.0;
					} else {
						a = 1.0;
					}
					
					return new double[] {
							((double) r) / 255.0,
							((double) g) / 255.0,
							((double) b) / 255.0,
							a
							};
				}
	
				Matcher rgbCommaMatcher = COLOR_RGB_COMMA_PATTERN.matcher(lv);
				if (rgbCommaMatcher.matches()) {
					double r = parseToRate(rgbCommaMatcher.group(1), 255.0);
					double g = parseToRate(rgbCommaMatcher.group(2), 255.0);
					double b = parseToRate(rgbCommaMatcher.group(3), 255.0);
					double a = parseToRate(rgbCommaMatcher.group(4), 1.0, 1.0);

					r = normalizeRate(r);
					g = normalizeRate(g);
					b = normalizeRate(b);
					a = normalizeRate(a);
					
					return new double[] {r, g, b, a};
				}
				
			}
		} catch (NumberFormatException e) {
			return null;
		}
		
		return null;
	}
	
	private static double parseToRate(String val, double base) {
		return parseToRate(val, base, 0.0);
	}
	
	private static double parseToRate(String val, double base, double defaultVal) {
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
				// rate
				return Double.parseDouble(val);
			} else {
				// value
				return Double.parseDouble(val) / base;
			}
		}
	}
	
	private static double parseToRateWithScale(String val, double scale) {
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
	
	private static double fromLinearRgb(double c) {
		if (0.0031308 <= c) {
			return 1.055 * Math.pow(c, 1.0 / 2.4) - 0.055;
		} else if (0.0 < c) {
			return 12.92 * c;
		} else {
			return 0.0;
		}
	}

	private static double normalizeRate(double c) {
		return Math.min(Math.max(c, 0.0), 1.0);
	}
	
	private static double normalizeHue(double h) {
		double hue = h % 360.0;
		if (hue < 0.0) {
			hue += 360.0;
		}
		return hue;
	}
	
	private static double[] fromHSL(double h, double s, double l, double a) {
		double q;
		if (l <= 0.5) {
			q = l * (1.0 + s);
		} else {
			q = l + s - l * s;
		}
		double p = 2.0 * l - q;
		
		double r = hue2rgb(q, p, h + 120.0);
		double g = hue2rgb(q, p, h);
		double b = hue2rgb(q, p, h - 120.0);
		
		return new double[] {r, g, b, a};
	}
	
	private static double hue2rgb(double p, double q, double hue) {
		hue = (hue + 180.0) % 360.0;
		if (hue < 60.0) {
			return p + (q - p) * hue / 60.0;
		} else if (hue < 180.0) {
			return q;
		} else if (hue < 240.0) {
			return p + (q - p) * (240.0 - hue) / 60.0;
		} else {
			return p;
		}
	}
	
	private static double[] fromHSV(double h, double s, double v, double a) {
		double hue = h % 360.0;
		if (hue < 0) {
			hue += 360.0;
		}
		
		int i = (int) (hue / 60.0);
		double f = hue / 60.0 - (double) i;
		double p = v * (1 - s);
		double q = v * (1 - f * s);
		double t = v * (1 - (1 - f) * s);
		
		return switch (i) {
			case 0 -> new double[] {v, t, p, a};
			case 1 -> new double[] {q, v, p, a};
			case 2 -> new double[] {p, v, t, a};
			case 3 -> new double[] {p, q, v, a};
			case 4 -> new double[] {t, p, v, a};
			case 5 -> new double[] {v, p, q, a};
			default -> throw new IllegalStateException();
		};
	}
	
	private static double[] fromHwb(double h, double w, double b, double a) {
		if (w + b >= 1.0) {
			double gray = w / (w + b);
			return new double[] {gray, gray, gray, a};
		}
		
		double hue = normalizeHue(h);
		double d = 1.0 - w - b;

		double[] rgba = fromHSL(hue, 1.0, 0.5, a);
		rgba[0] = normalizeRate(rgba[0] * d + w);
		rgba[1] = normalizeRate(rgba[1] * d + w);
		rgba[2] = normalizeRate(rgba[2] * d + w);
		
		return rgba;
	}
	
	private static double[] fromLab(double cl, double ca, double cb, double alpha) {
		double l = cl * 100.0;
		
		// CIELab to XYZ (D50)
		double y = (l + 16.0) / 116.0;
		double x = ca / 500.0 + y;
		double z = y - cb / 200.0;
		
		double e = 216.0 / 24389.0;
		double k = 24389.0 / 27.0;
		
		double x3 = x * x * x;
		double z3 = z * z * z;
		
		double xr = (x3 > e) ? x3 : (116.0 * x - 16.0) / k;
		double yr = (l > 8.0) ? (y * y * y) : l / k;
		double zr = (z3 > e) ? z3 : (116.0 * z - 16.0) / k;
		
		x = xr * 0.96422;
		y = yr * 1.00000;
		z = zr * 0.82521;
		
		// XYZ (D50) to Linear sRGB
		double lr =  3.1338561 * x - 1.6168667 * y - 0.4906146 * z;
		double lg = -0.9787684 * x + 1.9161415 * y + 0.0334540 * z;
		double lb =  0.0719453 * x - 0.2289914 * y + 1.4052427 * z;
		
		// Linear sRGB to sRGB
		double r = fromLinearRgb(lr);
		double g = fromLinearRgb(lg);
		double b = fromLinearRgb(lb);
		
		r = normalizeRate(r);
		g = normalizeRate(g);
		b = normalizeRate(b);
		
		return new double[] {r, g, b, alpha};
	}
	
	private static double[] fromOklab(double ol, double oa, double ob, double alpha) {
		// Oklab to LMS
		double l = ol + 0.3963377774 * oa + 0.2158037573 * ob;
		double m = ol - 0.1055613458 * oa - 0.0638541728 * ob;
		double s = ol - 0.0894841775 * oa - 1.2914855480 * ob;
		
		l = l * l * l;
		m = m * m * m;
		s = s * s * s;
		
		// LMS to Linear sRGB
		double lr = 4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s;
		double lg = -1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s;
		double lb = -0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s;
		
		// Linear sRGB to sRGB
		double r = fromLinearRgb(lr);
		double g = fromLinearRgb(lg);
		double b = fromLinearRgb(lb);
		
		r = normalizeRate(r);
		g = normalizeRate(g);
		b = normalizeRate(b);
		
		return new double[] {r, g, b, alpha};
	}
	
	private static double[] fromCMYK(double c, double m, double y, double k, double a) {
		double r, g, b;
		if (COLOR_SPACE_CMYK != null) {
			float[] rgb = COLOR_SPACE_CMYK.toRGB(new float[] {(float)c, (float)m, (float)y, (float)k});
			r = rgb[0];
			g = rgb[1];
			b = rgb[2];
		} else {
			r = 1.0 - Math.min(1.0, c + k);
			g = 1.0 - Math.min(1.0, m + k);
			b = 1.0 - Math.min(1.0, y + k);
		}
		
		return new double[] {r, g, b, a};
	}
	
	private static double[] fromCMY(double c, double m, double y, double a) {
		double r = 1.0 - c;
		double g = 1.0 - m;
		double b = 1.0 - y;
		
		return new double[] {r, g, b, a};
	}
}
