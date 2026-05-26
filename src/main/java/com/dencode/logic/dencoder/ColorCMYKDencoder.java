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
package com.dencode.logic.dencoder;

import java.util.List;

import com.dencode.logic.dencoder.annotation.Dencoder;
import com.dencode.logic.dencoder.annotation.DencoderFunction;
import com.dencode.logic.model.DencodeCondition;
import com.dencode.logic.model.color.Color;
import com.dencode.logic.model.color.ColorSpace;
import com.dencode.logic.model.color.ColorSpaceCmykApproxFogra51;
import com.dencode.logic.model.color.ColorSpaceCmykApproxFogra52;
import com.dencode.logic.model.color.ColorSpaceCmykApproxSwopV2;
import com.dencode.logic.model.color.ColorSpaceCmykFogra39;
import com.dencode.logic.model.color.ColorSpaceCmykGracol2013;
import com.dencode.logic.model.color.ColorSpaceCmykSwop2013C3;

@Dencoder(type="color", method="color.cmyk", hasEncoder=true, hasDecoder=false)
public class ColorCMYKDencoder {
	private static final ColorSpace CMYK_FOGRA39 = ColorSpace.of(ColorSpaceCmykFogra39.class);
	private static final ColorSpace CMYK_GRACOL2013 = ColorSpace.of(ColorSpaceCmykGracol2013.class);
	private static final ColorSpace CMYK_SWOP2013_C3 = ColorSpace.of(ColorSpaceCmykSwop2013C3.class);
	private static final ColorSpace CMYK_APPROX_SWOP_V2 = ColorSpace.of(ColorSpaceCmykApproxSwopV2.class);
	private static final ColorSpace CMYK_APPROX_FOGRA51 = ColorSpace.of(ColorSpaceCmykApproxFogra51.class);
	private static final ColorSpace CMYK_APPROX_FOGRA52 = ColorSpace.of(ColorSpaceCmykApproxFogra52.class);


	private ColorCMYKDencoder() {
		// NOP
	}


	@DencoderFunction
	public static String encColorCMYKFn(DencodeCondition cond) {
		return encColorCMYKFn(
				cond.valueAsColors(),
				DencodeUtils.getOption(cond.options(), "color.cmyk.profile", "naive")
				);
	}


	private static String encColorCMYKFn(List<Color> vals, String profile) {
		ColorSpace colorSpace = colorSpace(profile);

		return DencodeUtils.dencodeLines(vals, (color) -> {
			if (color == null) {
				return null;
			}

			return colorSpace.convert(color).toString();
		});
	}

	private static ColorSpace colorSpace(String profile) {
		return switch (profile) {
			case "fogra39" -> CMYK_FOGRA39;
			case "gracol2013" -> CMYK_GRACOL2013;
			case "swop2013-c3" -> CMYK_SWOP2013_C3;
			case "swop-v2" -> CMYK_APPROX_SWOP_V2;
			case "fogra51" -> CMYK_APPROX_FOGRA51;
			case "fogra52" -> CMYK_APPROX_FOGRA52;
			default -> ColorSpace.CMYK; // naive
		};
	}
}
