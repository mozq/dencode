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

public abstract class AbstractColorSpaceCmykIcc extends AbstractColorSpaceCmykProfile {
	private final ICC_ColorSpace colorSpaceCmyk;

	protected AbstractColorSpaceCmykIcc(String cssColorSpaceName, String iccProfileResourceName) {
		super(cssColorSpaceName);
		this.colorSpaceCmyk = loadColorSpace(iccProfileResourceName);
	}

	private static ICC_ColorSpace loadColorSpace(String iccProfileResourceName) {
		String resourcePath = "/color_profiles/" + iccProfileResourceName;
		try (InputStream is = AbstractColorSpaceCmykIcc.class.getResourceAsStream(resourcePath)) {
			if (is == null) {
				throw new IllegalStateException("ICC profile resource not found: " + resourcePath);
			}
			return new ICC_ColorSpace(ICC_Profile.getInstance(is));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public double[] convertFromXyz(double[] xyz) {
		double[] xyzD50 = xyzD65ToD50(xyz);
		double[] cmyk = f2d(colorSpaceCmyk.fromCIEXYZ(d2f(xyzD50)));

		return cmyk;
	}

	@Override
	protected double[] convertToXyzD50(double[] cmyk) {
		return f2d(colorSpaceCmyk.toCIEXYZ(d2f(cmyk)));
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

}
