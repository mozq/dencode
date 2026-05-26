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
import com.dencode.logic.model.color.ColorSpaceA98Rgb;
import com.dencode.logic.model.color.ColorSpaceDisplayP3;
import com.dencode.logic.model.color.ColorSpaceProphotoRgb;
import com.dencode.logic.model.color.ColorSpaceRec2020;
import com.dencode.logic.model.color.ColorSpaceRgb;
import com.dencode.logic.model.color.ColorSpaceSrgbLinear;

@Dencoder(type="color", method="color.rgb", hasEncoder=true, hasDecoder=false)
public class ColorRGBDencoder {
	private static final ColorSpace RGB_HEX_RGBA = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_HEX_RGBA);
	private static final ColorSpace RGB_HEX_ARGB = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_HEX_ARGB);
	private static final ColorSpace RGB_PERCENTAGE = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_PERCENTAGE);
	private static final ColorSpace SRGB_RATIO = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_COLOR_SRGB_RATIO);
	private static final ColorSpace SRGB_PERCENTAGE = ColorSpace.RGB.with(ColorSpaceRgb.FORMATTER_COLOR_SRGB_PERCENTAGE);
	private static final ColorSpace SRGB_LINEAR_PERCENTAGE = ColorSpace.SRGB_LINEAR.with(ColorSpaceSrgbLinear.FORMATTER_PERCENTAGE);
	private static final ColorSpace DISPLAY_P3_PERCENTAGE = ColorSpace.DISPLAY_P3.with(ColorSpaceDisplayP3.FORMATTER_PERCENTAGE);
	private static final ColorSpace A98_RGB_PERCENTAGE = ColorSpace.A98_RGB.with(ColorSpaceA98Rgb.FORMATTER_PERCENTAGE);
	private static final ColorSpace PROPHOTO_RGB_PERCENTAGE = ColorSpace.PROPHOTO_RGB.with(ColorSpaceProphotoRgb.FORMATTER_PERCENTAGE);
	private static final ColorSpace REC2020_PERCENTAGE = ColorSpace.REC2020.with(ColorSpaceRec2020.FORMATTER_PERCENTAGE);


	private ColorRGBDencoder() {
		// NOP
	}


	@DencoderFunction
	public static String encColorRGBHex(DencodeCondition cond) {
		return encColorRGBHex(
				cond.valueAsColors(),
				DencodeUtils.getOption(cond.options(), "color.rgb.hex-notation", "rrggbbaa")
				);
	}

	@DencoderFunction
	public static String encColorRGBFn(DencodeCondition cond) {
		return encColorRGBFn(
				cond.valueAsColors(),
				DencodeUtils.getOption(cond.options(), "color.rgb.color-space", "rgb"),
				DencodeUtils.getOption(cond.options(), "color.rgb.notation", "number")
				);
	}


	private static String encColorRGBHex(List<Color> vals, String hexNotation) {
		ColorSpace colorSpace = hexNotation.equals("aarrggbb") ? RGB_HEX_ARGB : RGB_HEX_RGBA;

		return DencodeUtils.dencodeLines(vals, (color) -> {
			if (color == null) {
				return null;
			}

			return colorSpace.convert(color).toString();
		});
	}

	private static String encColorRGBFn(List<Color> vals, String colorSpaceId, String notation) {
		ColorSpace colorSpace = colorSpace(colorSpaceId, notation);

		return DencodeUtils.dencodeLines(vals, (color) -> {
			if (color == null) {
				return null;
			}

			return colorSpace.convert(color).toString();
		});
	}

	private static ColorSpace colorSpace(String colorSpaceId, String notation) {
		boolean percentage = notation.equals("percentage");

		return switch (colorSpaceId) {
			case "srgb" -> percentage ? SRGB_PERCENTAGE : SRGB_RATIO;
			case "srgb-linear" -> percentage ? SRGB_LINEAR_PERCENTAGE : ColorSpace.SRGB_LINEAR;
			case "display-p3" -> percentage ? DISPLAY_P3_PERCENTAGE : ColorSpace.DISPLAY_P3;
			case "a98-rgb" -> percentage ? A98_RGB_PERCENTAGE : ColorSpace.A98_RGB;
			case "prophoto-rgb" -> percentage ? PROPHOTO_RGB_PERCENTAGE : ColorSpace.PROPHOTO_RGB;
			case "rec2020" -> percentage ? REC2020_PERCENTAGE : ColorSpace.REC2020;
			default -> percentage ? RGB_PERCENTAGE : ColorSpace.RGB; // rgb
		};
	}
}
