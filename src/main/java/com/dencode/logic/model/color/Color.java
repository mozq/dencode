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

import java.util.Objects;

public final class Color {

	private final ColorSpace colorSpace;
	private final double[] components;
	private final double alpha;

	private double[] rgb = null;
	private double[] xyz = null;
	private String str = null;


	private Color(ColorSpace colorSpace, double[] components, double alpha) {
		this.colorSpace = Objects.requireNonNull(colorSpace);
		this.components = Objects.requireNonNull(components).clone();
		this.alpha = alpha;
	}


	static Color from(ColorSpace colorSpace, double[] components) {
		return from(colorSpace, components, 1.0);
	}

	static Color from(ColorSpace colorSpace, double[] components, double alpha) {
		components = colorSpace.computeComponents(components);
		alpha = ColorSpace.normalizeAlpha(alpha);

		return new Color(colorSpace, components, alpha);
	}

	public ColorSpace colorSpace() {
		return colorSpace;
	}

	public double[] components() {
		return components.clone();
	}

	public double alpha() {
		return alpha;
	}

	public double[] rgb() {
		if (rgb == null) {
			rgb = colorSpace.convertToRgb(components);
		}
		return rgb.clone();
	}

	public double[] xyz() {
		if (xyz == null) {
			xyz = colorSpace.convertToXyz(components);
		}
		return xyz.clone();
	}

	@Override
	public String toString() {
		if (str == null) {
			str = colorSpace.format(components, alpha);
		}
		return str;
	}
}
