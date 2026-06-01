<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About HSL Color</h3>
<p>HSL color is a color model that represents colors with hue, saturation, and lightness. Unlike RGB, which directly specifies the strength of red, green, and blue light, HSL separates color tone, vividness, and brightness, making it useful for color adjustment and CSS design work.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Meaning</th><th>Example value</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Hue</td><td>Represents the color tone as an angle. Red is around 0deg, green around 120deg, and blue around 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Saturation</td><td>Represents the vividness of the color. 0% is achromatic, and 100% is the most vivid color.</td><td><code>50%</code></td></tr>
			<tr><td>L: Lightness</td><td>Represents the brightness of the color. 0% is black, 50% is a normal brightness, and 100% is white.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>For example, major colors such as red can be represented as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>HSL notation</th><th>RGB notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Green</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blue</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>White</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Black</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>As input, you can use the space-separated notation <code>hsl(0deg 100% 50%)</code> as well as the legacy comma-separated notation <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Handling of hue, saturation, and lightness</h4>
<p>Hue is handled as an angle, and values greater than 360deg or negative values are normalized to the range from 0deg to 360deg. For example, <code>hsl(360deg 100% 50%)</code> is handled as the same color as <code>hsl(0deg 100% 50%)</code>, and <code>hsl(-120deg 100% 50%)</code> as the same color as <code>hsl(240deg 100% 50%)</code>.</p>

<p>Saturation and lightness are handled in the range from 0% to 100%. When saturation is 0%, the color becomes an achromatic gray regardless of hue. When lightness is 0%, the color is black; when it is 100%, the color is white.</p>

<h4>Difference between HSL and RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> directly specifies the red, green, and blue components, so it is close to screen display and image data. HSL separates hue, saturation, and lightness, making operations such as “make it brighter while keeping the same hue” or “lower only the saturation” easier.</p>

<p>However, HSL is not a perceptually uniform color space. When you want to handle visual brightness or color differences more easily, color spaces such as <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a>, and <a href="${dc:h(basePath)}/color/oklch">Oklch</a> may be used.</p>
