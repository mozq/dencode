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

import com.dencode.logic.model.color.Color;
import com.dencode.logic.model.color.ColorSpace;

public class ColorParser {
	
	private static final int COLOR_MAX_LENGTH = 50;
	
	private ColorParser() {
		// NOP
	}
	
	public static Color parseColor(String val) {
		if (val == null || val.isEmpty()) {
			return null;
		}
		
		if (COLOR_MAX_LENGTH < val.length()) {
			return null;
		}
		
		String v = val.trim().toLowerCase();
		
		try {
			Color color;
			if ((color = ColorSpace.RGB_NAME.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.RGB.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.HSL.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.HSV.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.HWB.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.LAB.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.LCH.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.OKLAB.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.OKLCH.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.XYZ.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.XYZ_D50.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.CMYK.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.CMYK_ECI.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.CMY.parseColor(v)) != null) { return color; }
		} catch (NumberFormatException e) {
			return null;
		}
		
		return null;
	}
}
