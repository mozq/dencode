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

public abstract class AbstractColorSpaceXyz extends ColorSpace {

	protected AbstractColorSpaceXyz() {
	}

	@Override
	public Color convert(Color color) {
		if (color.colorSpace() == this) {
			return color;
		}
		return newColor(convertFromXyz(color.xyz()), color.alpha());
	}

	@Override
	public double[] convertFromRgb(double[] rgb) {
		return convertFromXyz(rgbToXyz(rgb));
	}

	@Override
	public double[] convertToRgb(double[] components) {
		return xyzToRgb(convertToXyz(components));
	}
}
