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

import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class ColorSpaceRgbName extends AbstractColorSpaceRgb {

	private static final Pattern COLOR_PATTERN_RCS_NAME = Pattern.compile("^rgba?\\s*\\(\\s*from\\s+([a-z]+)\\s+r\\s+g\\s+b(?:\\s*/\\s*(\\+?[0-9\\.]+%?))?\\s*\\)$");

	private static class Rgb {
		public int rgb;
		public double r, g, b;
		public Rgb(int rgb) {
			this.rgb = rgb;
			this.r = ((double)((rgb & 0x00ff0000) >> 16)) / 255.0;
			this.g = ((double)((rgb & 0x0000ff00) >> 8)) / 255.0;
			this.b = ((double)((rgb & 0x000000ff))) / 255.0;
		}
	}

	private static final Map<String, String> SYNONYM_NAME_MAP = new HashMap<>() {
		private static final long serialVersionUID = 1L;
		{
			put("cyan", "aqua");
			put("magenta", "fuchsia");
			put("darkgrey", "darkgray");
			put("darkslategrey", "darkslategray");
			put("dimgrey", "dimgray");
			put("lightgrey", "lightgray");
			put("lightslategrey", "lightslategray");
			put("grey", "gray");
			put("slategrey", "slategray");
		}
	};

	private static final Map<String, Rgb> NAME_COLOR_MAP = new HashMap<>() {
		private static final long serialVersionUID = 1L;
		{
			put("black", new Rgb(0x000000));
			put("silver", new Rgb(0xc0c0c0));
			put("gray", new Rgb(0x808080));
			put("white", new Rgb(0xffffff));
			put("maroon", new Rgb(0x800000));
			put("red", new Rgb(0xff0000));
			put("purple", new Rgb(0x800080));
			put("fuchsia", new Rgb(0xff00ff));
			put("green", new Rgb(0x008000));
			put("lime", new Rgb(0x00ff00));
			put("olive", new Rgb(0x808000));
			put("yellow", new Rgb(0xffff00));
			put("navy", new Rgb(0x000080));
			put("blue", new Rgb(0x0000ff));
			put("teal", new Rgb(0x008080));
			put("aqua", new Rgb(0x00ffff));
			put("aliceblue", new Rgb(0xf0f8ff));
			put("antiquewhite", new Rgb(0xfaebd7));
			put("aquamarine", new Rgb(0x7fffd4));
			put("azure", new Rgb(0xf0ffff));
			put("beige", new Rgb(0xf5f5dc));
			put("bisque", new Rgb(0xffe4c4));
			put("blanchedalmond", new Rgb(0xffebcd));
			put("blueviolet", new Rgb(0x8a2be2));
			put("brown", new Rgb(0xa52a2a));
			put("burlywood", new Rgb(0xdeb887));
			put("cadetblue", new Rgb(0x5f9ea0));
			put("chartreuse", new Rgb(0x7fff00));
			put("chocolate", new Rgb(0xd2691e));
			put("coral", new Rgb(0xff7f50));
			put("cornflowerblue", new Rgb(0x6495ed));
			put("cornsilk", new Rgb(0xfff8dc));
			put("crimson", new Rgb(0xdc143c));
			put("darkblue", new Rgb(0x00008b));
			put("darkcyan", new Rgb(0x008b8b));
			put("darkgoldenrod", new Rgb(0xb8860b));
			put("darkgray", new Rgb(0xa9a9a9));
			put("darkgreen", new Rgb(0x006400));
			put("darkkhaki", new Rgb(0xbdb76b));
			put("darkmagenta", new Rgb(0x8b008b));
			put("darkolivegreen", new Rgb(0x556b2f));
			put("darkorange", new Rgb(0xff8c00));
			put("darkorchid", new Rgb(0x9932cc));
			put("darkred", new Rgb(0x8b0000));
			put("darksalmon", new Rgb(0xe9967a));
			put("darkseagreen", new Rgb(0x8fbc8f));
			put("darkslateblue", new Rgb(0x483d8b));
			put("darkslategray", new Rgb(0x2f4f4f));
			put("darkturquoise", new Rgb(0x00ced1));
			put("darkviolet", new Rgb(0x9400d3));
			put("deeppink", new Rgb(0xff1493));
			put("deepskyblue", new Rgb(0x00bfff));
			put("dimgray", new Rgb(0x696969));
			put("dodgerblue", new Rgb(0x1e90ff));
			put("firebrick", new Rgb(0xb22222));
			put("floralwhite", new Rgb(0xfffaf0));
			put("forestgreen", new Rgb(0x228b22));
			put("gainsboro", new Rgb(0xdcdcdc));
			put("ghostwhite", new Rgb(0xf8f8ff));
			put("gold", new Rgb(0xffd700));
			put("goldenrod", new Rgb(0xdaa520));
			put("greenyellow", new Rgb(0xadff2f));
			put("honeydew", new Rgb(0xf0fff0));
			put("hotpink", new Rgb(0xff69b4));
			put("indianred", new Rgb(0xcd5c5c));
			put("indigo", new Rgb(0x4b0082));
			put("ivory", new Rgb(0xfffff0));
			put("khaki", new Rgb(0xf0e68c));
			put("lavender", new Rgb(0xe6e6fa));
			put("lavenderblush", new Rgb(0xfff0f5));
			put("lawngreen", new Rgb(0x7cfc00));
			put("lemonchiffon", new Rgb(0xfffacd));
			put("lightblue", new Rgb(0xadd8e6));
			put("lightcoral", new Rgb(0xf08080));
			put("lightcyan", new Rgb(0xe0ffff));
			put("lightgoldenrodyellow", new Rgb(0xfafad2));
			put("lightgray", new Rgb(0xd3d3d3));
			put("lightgreen", new Rgb(0x90ee90));
			put("lightpink", new Rgb(0xffb6c1));
			put("lightsalmon", new Rgb(0xffa07a));
			put("lightseagreen", new Rgb(0x20b2aa));
			put("lightskyblue", new Rgb(0x87cefa));
			put("lightslategray", new Rgb(0x778899));
			put("lightsteelblue", new Rgb(0xb0c4de));
			put("lightyellow", new Rgb(0xffffe0));
			put("limegreen", new Rgb(0x32cd32));
			put("linen", new Rgb(0xfaf0e6));
			put("mediumaquamarine", new Rgb(0x66cdaa));
			put("mediumblue", new Rgb(0x0000cd));
			put("mediumorchid", new Rgb(0xba55d3));
			put("mediumpurple", new Rgb(0x9370db));
			put("mediumseagreen", new Rgb(0x3cb371));
			put("mediumslateblue", new Rgb(0x7b68ee));
			put("mediumspringgreen", new Rgb(0x00fa9a));
			put("mediumturquoise", new Rgb(0x48d1cc));
			put("mediumvioletred", new Rgb(0xc71585));
			put("midnightblue", new Rgb(0x191970));
			put("mintcream", new Rgb(0xf5fffa));
			put("mistyrose", new Rgb(0xffe4e1));
			put("moccasin", new Rgb(0xffe4b5));
			put("navajowhite", new Rgb(0xffdead));
			put("oldlace", new Rgb(0xfdf5e6));
			put("olivedrab", new Rgb(0x6b8e23));
			put("orange", new Rgb(0xffa500));
			put("orangered", new Rgb(0xff4500));
			put("orchid", new Rgb(0xda70d6));
			put("palegoldenrod", new Rgb(0xeee8aa));
			put("palegreen", new Rgb(0x98fb98));
			put("paleturquoise", new Rgb(0xafeeee));
			put("palevioletred", new Rgb(0xdb7093));
			put("papayawhip", new Rgb(0xffefd5));
			put("peachpuff", new Rgb(0xffdab9));
			put("peru", new Rgb(0xcd853f));
			put("pink", new Rgb(0xffc0cb));
			put("plum", new Rgb(0xdda0dd));
			put("powderblue", new Rgb(0xb0e0e6));
			put("rebeccapurple", new Rgb(0x663399));
			put("rosybrown", new Rgb(0xbc8f8f));
			put("royalblue", new Rgb(0x4169e1));
			put("saddlebrown", new Rgb(0x8b4513));
			put("salmon", new Rgb(0xfa8072));
			put("sandybrown", new Rgb(0xf4a460));
			put("seagreen", new Rgb(0x2e8b57));
			put("seashell", new Rgb(0xfff5ee));
			put("sienna", new Rgb(0xa0522d));
			put("skyblue", new Rgb(0x87ceeb));
			put("slateblue", new Rgb(0x6a5acd));
			put("slategray", new Rgb(0x708090));
			put("snow", new Rgb(0xfffafa));
			put("springgreen", new Rgb(0x00ff7f));
			put("steelblue", new Rgb(0x4682b4));
			put("tan", new Rgb(0xd2b48c));
			put("thistle", new Rgb(0xd8bfd8));
			put("tomato", new Rgb(0xff6347));
			put("turquoise", new Rgb(0x40e0d0));
			put("violet", new Rgb(0xee82ee));
			put("wheat", new Rgb(0xf5deb3));
			put("whitesmoke", new Rgb(0xf5f5f5));
			put("yellowgreen", new Rgb(0x9acd32));
		}
	};

	private static final Map<Integer, String> COLOR_NAME_MAP = NAME_COLOR_MAP.entrySet().stream()
			.collect(Collectors.toMap(el -> el.getValue().rgb, Map.Entry::getKey, (existing, _) -> existing));


	protected ColorSpaceRgbName() {
	}


	@Override
	public double[] convertFromRgb(double[] rgb) {
		return rgb;
	}

	@Override
	public double[] convertToRgb(double[] components) {
		return components;
	}

	@Override
	protected Color parse(String color) {
		if (color.startsWith("rgb")) {
			Matcher matcher = COLOR_PATTERN_RCS_NAME.matcher(color);
			if (matcher.matches()) {
				String baseName = matcher.group(1);
				double alpha = parseToRatio(matcher.group(2), 1.0, 1.0);

				return parseByName(baseName, alpha);
			}
		}

		return parseByName(color, 1.0);
	}

	private Color parseByName(String color, double alpha) {
		if (color.equals("transparent")) {
			return newColor(new double[] {0.0, 0.0, 0.0}, 0.0);
		}

		String n = SYNONYM_NAME_MAP.getOrDefault(color, color);
		Rgb namedRgb = NAME_COLOR_MAP.get(n);
		if (namedRgb == null) {
			return null;
		}

		double[] rgb = {namedRgb.r, namedRgb.g, namedRgb.b};

		return newColor(rgb, alpha);
	}

	@Override
	protected String defaultFormat(double[] components, double alpha) {
		if (alpha == 0.0 && components[0] == 0.0 && components[1] == 0.0 && components[2] == 0.0) {
			return "transparent";
		}

		int r8 = (int) Math.round(components[0] * 255.0);
		int g8 = (int) Math.round(components[1] * 255.0);
		int b8 = (int) Math.round(components[2] * 255.0);

		int rgb24 = (r8 << 16) | (g8 << 8) | b8;

		String name = COLOR_NAME_MAP.get(rgb24);
		if (name != null) {
			if (alpha < 1.0) {
				StringBuilder sb = new StringBuilder();
				sb.append("rgb(from ");
				sb.append(name);
				sb.append(" r g b / ");
				ColorFormatter.appendRoundString(sb, alpha, 2, RoundingMode.HALF_UP);
				sb.append(")");
				return sb.toString();
			} else {
				return name;
			}
		}

		return null;
	}

	@Override
	protected double[] computeComponents(double[] components) {
		return components;
	}
}
