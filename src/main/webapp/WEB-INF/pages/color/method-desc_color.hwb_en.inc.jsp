<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About HWB Color</h3>
<p>HWB color is a color model that represents colors with three components: hue, whiteness, and blackness. Hue specifies the base color tone, while whiteness and blackness specify how much white and black are mixed in, making it intuitive to lighten, darken, or move a color toward gray.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Meaning</th><th>Example value</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Hue</td><td>Represents the color tone as an angle. Red is around 0deg, green around 120deg, and blue around 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Whiteness</td><td>Represents the amount of white mixed into the color. Larger values make the color whiter.</td><td><code>20%</code></td></tr>
			<tr><td>B: Blackness</td><td>Represents the amount of black mixed into the color. Larger values make the color darker.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>For example, major colors such as red can be represented as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>HWB notation</th><th>RGB notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Green</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blue</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>White</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Black</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Handling of hue, whiteness, and blackness</h4>
<p>Hue is handled as an angle, and values greater than 360deg or negative values are normalized to the range from 0deg to 360deg. For example, <code>hwb(360deg 0% 0%)</code> is handled as the same color as <code>hwb(0deg 0% 0%)</code>, and <code>hwb(-120deg 0% 0%)</code> as the same color as <code>hwb(240deg 0% 0%)</code>.</p>

<p>Whiteness and blackness are handled in the range from 0% to 100%. Larger whiteness values move the color closer to white, and larger blackness values move it closer to black. When the sum of whiteness and blackness is 100% or more, the color is handled as a grayish color regardless of hue.</p>

<h4>Difference between HWB and HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> adjusts color with saturation and lightness, so it is suitable for specifying vividness and brightness. HWB adjusts color by the amount of white and black mixed in, making operations such as “make it whiter with the same hue” or “add black to darken it” easy to describe.</p>

<p>However, HWB is also not a perceptually uniform color space. When you want to handle visual brightness or color differences more easily, color spaces such as <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a>, and <a href="${dc:h(basePath)}/color/oklch">Oklch</a> may be used.</p>
