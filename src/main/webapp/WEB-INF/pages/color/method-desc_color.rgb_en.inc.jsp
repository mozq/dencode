<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About RGB Color</h3>
<p>RGB color is a color model that represents colors by combining three light components: red, green, and blue. It is widely used for colors handled on screens, such as displays, web pages, and image data.</p>

<p>In RGB, the intensity of each component is specified with a numeric value. It is commonly represented as an integer from 0 to 255, or as a percentage from 0% to 100%. When all components are 0, the color is black; when all components are at their maximum, the color is white.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>RGB notation</th><th>Hex notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Green</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Blue</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>White</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Black</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGB colors can be written in function notation or hexadecimal notation. For example, red can be represented as <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code>, or <code>#f00</code>.</p>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>rgb(255 0 0 / 50%)</code> or <code>#ff000080</code>.</p>

<p>DenCode RGB color conversion supports the following notation options.</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGB color (hex)</caption>
		<thead>
			<tr><th>Notation option</th><th>Format</th><th>Example</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB color</caption>
		<thead>
			<tr><th>Notation option</th><th>Format</th><th>Example</th></tr>
		</thead>
		<tbody>
			<tr><td>Number</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Percentage</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> is not standard CSS hexadecimal color notation, but it is an ARGB format sometimes used in programs and application settings. The leading <code>AA</code> represents alpha, followed by <code>RR</code>, <code>GG</code>, and <code>BB</code> for red, green, and blue.</p>

<h4>sRGB and Other RGB Color Spaces</h4>
<p>RGB is a color model that represents colors with three components: red, green, and blue. However, even with the same RGB values, the actual color differs depending on which color space is used for interpretation. Common web <code>rgb()</code> and <code>#RRGGBB</code> values are normally handled as colors in the sRGB color space.</p>

<p>CSS Color Module Level 4 also defines RGB color spaces whose gamuts differ from sRGB, such as Display P3 and ProPhoto RGB. DenCode also supports conversion for these color spaces.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color space</th><th>Format</th><th>Example</th><th>Characteristics</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>The common RGB color space for the web and CSS. Hex color codes and ordinary <code>rgb()</code> values are basically handled as sRGB. <code>color(srgb ...)</code> is a CSS Color Module Level 4 format.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>A color space that uses the same gamut as sRGB but represents values with linearized components. It is used for color calculation and compositing.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>A wider-gamut color space than sRGB, used on wide-gamut displays and some mobile devices.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>A wider-gamut color space than sRGB, sometimes used in photo editing and print-oriented workflows.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>An RGB color space with an even wider gamut than Adobe RGB, used as a working color space in photo editing.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>An RGB color space with a very wide gamut, used in UHDTV and HDR video standards.</td></tr>
		</tbody>
	</table>
</div>

<p>Colors specified in wide-gamut RGB color spaces may not be represented accurately on sRGB screens or with ordinary hexadecimal color codes. When DenCode converts to <code>#RRGGBB</code> or numeric <code>rgb(R G B)</code>, components outside the sRGB representable range are handled so that they fit within the range from <code>0</code> to <code>255</code>. On the other hand, selecting a color space such as <code>color(display-p3 ...)</code> or <code>color(a98-rgb ...)</code> allows the color to be displayed as component values in the selected color space.</p>
