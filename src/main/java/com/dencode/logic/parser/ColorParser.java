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
import com.dencode.logic.model.color.ColorSpaceCmykApproxFogra51;
import com.dencode.logic.model.color.ColorSpaceCmykApproxFogra52;
import com.dencode.logic.model.color.ColorSpaceCmykApproxSwopV2;
import com.dencode.logic.model.color.ColorSpaceCmykFogra39;
import com.dencode.logic.model.color.ColorSpaceCmykGracol2013;
import com.dencode.logic.model.color.ColorSpaceCmykSwop2013C3;

public class ColorParser {
	
	private static final int COLOR_MAX_LENGTH = 80;

	private static final ColorSpace CMYK_FOGRA39 = ColorSpace.of(ColorSpaceCmykFogra39.class);
	private static final ColorSpace CMYK_GRACOL2013 = ColorSpace.of(ColorSpaceCmykGracol2013.class);
	private static final ColorSpace CMYK_SWOP2013_C3 = ColorSpace.of(ColorSpaceCmykSwop2013C3.class);
	private static final ColorSpace CMYK_APPROX_SWOP_V2 = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class);
	private static final ColorSpace CMYK_APPROX_FOGRA51 = ColorSpace.of(ColorSpaceCmykApproxFogra51.class);
	private static final ColorSpace CMYK_APPROX_FOGRA52 = ColorSpace.of(ColorSpaceCmykApproxFogra52.class);
	
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
			if ((color = ColorSpace.SRGB_LINEAR.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.A98_RGB.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.DISPLAY_P3.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.PROPHOTO_RGB.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.REC2020.parseColor(v)) != null) { return color; }
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
			if ((color = CMYK_FOGRA39.parseColor(v)) != null) { return color; }
			if ((color = CMYK_GRACOL2013.parseColor(v)) != null) { return color; }
			if ((color = CMYK_SWOP2013_C3.parseColor(v)) != null) { return color; }
			if ((color = CMYK_APPROX_SWOP_V2.parseColor(v)) != null) { return color; }
			if ((color = CMYK_APPROX_FOGRA51.parseColor(v)) != null) { return color; }
			if ((color = CMYK_APPROX_FOGRA52.parseColor(v)) != null) { return color; }
			if ((color = ColorSpace.CMY.parseColor(v)) != null) { return color; }
		} catch (NumberFormatException e) {
			return null;
		}
		
		return null;
	}
}
