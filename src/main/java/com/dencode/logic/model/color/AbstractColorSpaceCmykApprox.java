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

public abstract class AbstractColorSpaceCmykApprox extends AbstractColorSpaceCmykProfile {
	// Approximation source:
	// This class represents approximate CMYK color spaces generated from public characterization data.
	//
	// Forward model:
	// Neugebauer primaries are selected in the mask order Paper, C, M, CM, Y, CY, MY, CMY, K, CK, MK, CMK, YK, CYK, MYK, CMYK.
	// Tone curves are derived from single-channel patches where exactly one CMYK component is greater than 0.
	// Source XYZ values are normalized to PCS D50 white before the tone-curve fit.
	// Lab-only source data is converted to D50 XYZ before selecting primaries or fitting tone curves.
	// Each tone value is projected as t = dot(patch - paper, solid - paper) / dot(solid - paper, solid - paper).
	// Tone values are clamped to [0, 1], duplicate values are averaged per channel/input, and endpoints are fixed to 0 and 1.
	//
	// Inverse solver:
	// The inverse solver uses deterministic coordinate descent over normalized CMYK components.

	// The 42 iteration cap is enough to reduce the initial 0.25 step below INVERSE_MIN_STEP for four channels.
	private static final int INVERSE_MAX_ITERATIONS = 42;

	// The minimum step is 1/65536 so the solver can converge near 16-bit component precision without excessive work.
	private static final double INVERSE_MIN_STEP = 1.0 / 65536.0;

	// Coarse seed values cover the CMYK cube corners, midpoints, and quarter points before local refinement.
	private static final double[] INVERSE_SEED_VALUES = {0.0, 0.25, 0.5, 0.75, 1.0};

	// Lab error is the primary perceptual term for selecting the inverse CMYK candidate.
	private static final double LAB_ERROR_WEIGHT = 1.0;

	// XYZ error keeps near-neutral and low-chroma colors numerically stable when Lab differences are small.
	private static final double XYZ_ERROR_WEIGHT = 1200.0;

	// Separation penalties are intentionally secondary so the inverse search prioritizes color roundtrip accuracy.
	// These weights are 0.01 times the earlier 85/18 values that favored natural separations over roundtrip accuracy.
	private static final double NATURAL_SEPARATION_WEIGHT = 0.85;
	private static final double NEUTRAL_SEPARATION_WEIGHT = 0.18;

	private final double[][] neugebauerPrimariesXyzD50;
	private final double[][][] toneCurves;
	private final boolean normalizePaperWhite;
	private final double yuleNielsenN;

	protected AbstractColorSpaceCmykApprox(String cssColorSpaceName, double[][] neugebauerPrimariesXyzD50, double[][][] toneCurves, boolean normalizePaperWhite) {
		this(cssColorSpaceName, neugebauerPrimariesXyzD50, toneCurves, normalizePaperWhite, 1.0);
	}

	protected AbstractColorSpaceCmykApprox(String cssColorSpaceName, double[][] neugebauerPrimariesXyzD50, double[][][] toneCurves, boolean normalizePaperWhite, double yuleNielsenN) {
		super(cssColorSpaceName);
		this.neugebauerPrimariesXyzD50 = clone2d(neugebauerPrimariesXyzD50);
		this.toneCurves = clone3d(toneCurves);
		this.normalizePaperWhite = normalizePaperWhite;
		this.yuleNielsenN = yuleNielsenN;
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		// D65-to-D50 adaptation
		double[] target = xyzD65ToD50(xyz);

		// Non-negative XYZ clamp
		target = new double[] {
				Math.max(target[0], 0.0),
				Math.max(target[1], 0.0),
				Math.max(target[2], 0.0)
		};

		// Target Lab conversion
		double[] targetLab = xyzD50ToLab(target);

		// Naive RGB-derived CMYK seed
		double[] targetRgb = clampRgb(xyzToRgb(xyzD50ToD65(target)));
		double[] naturalCmyk = naiveCmykFromRgb(targetRgb);
		double saturation = rgbSaturation(targetRgb);
		double blackPreference = 1.0 - saturation;

		// Coarse grid seed search
		double[] cmyk = initialInverseSeed(target, targetLab, naturalCmyk, saturation, blackPreference);

		// Iterative coordinate descent
		double bestError = inverseError(target, targetLab, naturalCmyk, saturation, blackPreference, cmyk);
		double step = 0.25;

		for (int iteration = 0; iteration < INVERSE_MAX_ITERATIONS && step >= INVERSE_MIN_STEP; iteration++) {
			boolean improved = false;

			for (int component = 0; component < 4; component++) {
				for (int direction = -1; direction <= 1; direction += 2) {
					double[] candidate = cmyk.clone();
					candidate[component] = clamp01(candidate[component] + (direction * step));

					double error = inverseError(target, targetLab, naturalCmyk, saturation, blackPreference, candidate);
					if (error < bestError) {
						cmyk = candidate;
						bestError = error;
						improved = true;
					}
				}
			}

			if (!improved) {
				step *= 0.5;
			}
		}

		return cmyk;
	}

	private double[] initialInverseSeed(double[] target, double[] targetLab, double[] naturalCmyk, double saturation, double blackPreference) {
		// White seed
		double[] best = {0.0, 0.0, 0.0, 0.0};
		double bestError = inverseError(target, targetLab, naturalCmyk, saturation, blackPreference, best);

		// Naive CMYK seed
		double naturalError = inverseError(target, targetLab, naturalCmyk, saturation, blackPreference, naturalCmyk);
		if (naturalError < bestError) {
			best = naturalCmyk.clone();
			bestError = naturalError;
		}

		// Coarse grid seed search
		for (double c : INVERSE_SEED_VALUES) {
			for (double m : INVERSE_SEED_VALUES) {
				for (double y : INVERSE_SEED_VALUES) {
					for (double k : INVERSE_SEED_VALUES) {
						double[] candidate = {c, m, y, k};
						double error = inverseError(target, targetLab, naturalCmyk, saturation, blackPreference, candidate);
						if (error < bestError) {
							best = candidate;
							bestError = error;
						}
					}
				}
			}
		}

		return best;
	}

	@Override
	protected double[] convertToXyzD50(double[] cmyk) {
		// Tone curve interpolation
		double c = interpolateTone(toneCurves[0], cmyk[0]);
		double m = interpolateTone(toneCurves[1], cmyk[1]);
		double y = interpolateTone(toneCurves[2], cmyk[2]);
		double k = interpolateTone(toneCurves[3], cmyk[3]);
		double[] areas = {c, m, y, k};

		// Neugebauer primary area weighting
		double x = 0.0;
		double yy = 0.0;
		double z = 0.0;
		for (int mask = 0; mask < neugebauerPrimariesXyzD50.length; mask++) {
			double weight = 1.0;
			for (int component = 0; component < 4; component++) {
				double area = areas[component];
				weight *= ((mask & (1 << component)) == 0) ? (1.0 - area) : area;
			}

			// Yule-Nielsen encoded mixing
			x += weight * yuleNielsenEncode(neugebauerPrimariesXyzD50[mask][0]);
			yy += weight * yuleNielsenEncode(neugebauerPrimariesXyzD50[mask][1]);
			z += weight * yuleNielsenEncode(neugebauerPrimariesXyzD50[mask][2]);
		}

		// Yule-Nielsen inverse transform
		x = yuleNielsenDecode(x);
		yy = yuleNielsenDecode(yy);
		z = yuleNielsenDecode(z);

		if (normalizePaperWhite) {
			// Paper-white normalization
			double[] paper = neugebauerPrimariesXyzD50[0];
			x *= CSS_D50_WHITE_X / paper[0];
			yy *= CSS_D50_WHITE_Y / paper[1];
			z *= CSS_D50_WHITE_Z / paper[2];
		}

		return new double[] {
				Math.max(snapToZero(x, 1e-12), 0.0),
				Math.max(snapToZero(yy, 1e-12), 0.0),
				Math.max(snapToZero(z, 1e-12), 0.0)
		};
	}

	private double yuleNielsenEncode(double value) {
		if (yuleNielsenN == 1.0) {
			return value;
		}
		return Math.pow(Math.max(value, 1e-12), 1.0 / yuleNielsenN);
	}

	private double yuleNielsenDecode(double value) {
		if (yuleNielsenN == 1.0) {
			return value;
		}
		return Math.pow(Math.max(value, 0.0), yuleNielsenN);
	}

	private static double interpolateTone(double[][] curve, double value) {
		value = clamp01(value);
		for (int i = 1; i < curve.length; i++) {
			double x0 = curve[i - 1][0];
			double x1 = curve[i][0];
			if (value <= x1) {
				double y0 = curve[i - 1][1];
				double y1 = curve[i][1];
				if (x1 <= x0) {
					return clamp01(y1);
				}
				double t = (value - x0) / (x1 - x0);
				return clamp01(y0 + (t * (y1 - y0)));
			}
		}
		return clamp01(curve[curve.length - 1][1]);
	}

	private static double xyzD50Error(double[] a, double[] b) {
		double dx = a[0] - b[0];
		double dy = a[1] - b[1];
		double dz = a[2] - b[2];

		return (dx * dx) + (dy * dy) + (dz * dz);
	}

	private double inverseError(double[] targetXyzD50, double[] targetLab, double[] naturalCmyk, double saturation, double blackPreference, double[] cmyk) {
		// Forward model evaluation
		double[] candidateXyzD50 = convertToXyzD50(cmyk);
		double[] candidateLab = xyzD50ToLab(candidateXyzD50);

		// Lab/XYZ error with separation penalties
		return LAB_ERROR_WEIGHT * labError(targetLab, candidateLab)
				+ XYZ_ERROR_WEIGHT * xyzD50Error(targetXyzD50, candidateXyzD50)
				+ naturalSeparationPenalty(naturalCmyk, saturation, cmyk)
				+ neutralSeparationPenalty(naturalCmyk, blackPreference, cmyk);
	}

	private static double[] xyzD50ToLab(double[] xyzD50) {
		return LAB.convertFromXyz(xyzD50ToD65(xyzD50));
	}

	private static double labError(double[] a, double[] b) {
		double dl = a[0] - b[0];
		double da = a[1] - b[1];
		double db = a[2] - b[2];

		return (dl * dl) + (da * da) + (db * db);
	}

	private static double naturalSeparationPenalty(double[] naturalCmyk, double saturation, double[] cmyk) {
		if (saturation <= 0.0) {
			return 0.0;
		}

		double dc = naturalCmyk[0] - cmyk[0];
		double dm = naturalCmyk[1] - cmyk[1];
		double dy = naturalCmyk[2] - cmyk[2];
		double dk = naturalCmyk[3] - cmyk[3];

		return NATURAL_SEPARATION_WEIGHT * saturation * saturation
				* ((dc * dc) + (dm * dm) + (dy * dy) + (0.35 * dk * dk));
	}

	private static double neutralSeparationPenalty(double[] naturalCmyk, double blackPreference, double[] cmyk) {
		if (blackPreference <= 0.0) {
			return 0.0;
		}

		double dk = naturalCmyk[3] - cmyk[3];
		double cmyImbalance = Math.max(Math.max(cmyk[0], cmyk[1]), cmyk[2]) - Math.min(Math.min(cmyk[0], cmyk[1]), cmyk[2]);

		return NEUTRAL_SEPARATION_WEIGHT * blackPreference * ((dk * dk) + (cmyImbalance * cmyImbalance));
	}

	private static double[] naiveCmykFromRgb(double[] rgb) {
		double r = clamp01(rgb[0]);
		double g = clamp01(rgb[1]);
		double b = clamp01(rgb[2]);

		double k = 1.0 - Math.max(Math.max(r, g), b);
		if (k >= 1.0) {
			return new double[] {0.0, 0.0, 0.0, 1.0};
		}

		return new double[] {
				clamp01((1.0 - r - k) / (1.0 - k)),
				clamp01((1.0 - g - k) / (1.0 - k)),
				clamp01((1.0 - b - k) / (1.0 - k)),
				clamp01(k)
		};
	}

	private static double[] clampRgb(double[] rgb) {
		return new double[] {
				clamp01(rgb[0]),
				clamp01(rgb[1]),
				clamp01(rgb[2])
		};
	}

	private static double rgbSaturation(double[] rgb) {
		double max = Math.max(Math.max(rgb[0], rgb[1]), rgb[2]);
		double min = Math.min(Math.min(rgb[0], rgb[1]), rgb[2]);

		return (max <= 0.0) ? 0.0 : (max - min) / max;
	}

	private static double[][] clone2d(double[][] values) {
		double[][] clone = new double[values.length][];
		for (int i = 0; i < values.length; i++) {
			clone[i] = values[i].clone();
		}
		return clone;
	}

	private static double[][][] clone3d(double[][][] values) {
		double[][][] clone = new double[values.length][][];
		for (int i = 0; i < values.length; i++) {
			clone[i] = clone2d(values[i]);
		}
		return clone;
	}
}
