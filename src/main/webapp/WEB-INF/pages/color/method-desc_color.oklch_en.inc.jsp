<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About Oklch Color</h3>
<p>Oklch color is a perception-based color space that represents colors with lightness, chroma, and hue. It uses the same idea as Oklab color, but represents the color tone with chroma and an angle, making color strength and hue easier to adjust separately.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Meaning</th><th>Example value</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Represents the brightness of the color. 0% is black and 100% is white.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Represents the strength of the color. 0 is achromatic, and larger values produce more vivid colors.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Hue</td><td>Represents the color tone as an angle.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>For example, major colors such as red can be represented as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Oklch notation</th><th>RGB notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Green</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blue</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>White</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Black</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Handling of lightness, chroma, and hue</h4>
<p>Lightness is handled in the range from 0% to 100%. Values below 0% are treated as 0%, and values above 100% are clamped to 100%.</p>

<p>Chroma is handled as a value of 0 or greater. Negative chroma is handled as 0. When chroma is 0, the color becomes achromatic and hue is handled as 0deg.</p>

<p>Hue is handled as an angle, and values greater than 360deg or negative values are normalized to the range from 0deg to 360deg. For example, <code>oklch(62.8% 0.2577 389.23deg)</code> is handled as the same color as <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Difference between Oklch and Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> represents colors with the rectangular coordinates <code>a</code> and <code>b</code>. Oklch converts the color tone of Oklab to chroma and hue. Therefore, Oklch can be more intuitive when you want to adjust chroma or hue while keeping the same lightness.</p>

<h4>Difference between Oklch and LCH</h4>
<p>Oklch is designed so that visual changes are closer to uniform than <a href="${dc:h(basePath)}/color/lch">LCH</a> when changing hue or chroma. Because the lightness, chroma, and hue components are adjusted to relate more closely to human perception, changing component values by the same amount tends to produce more even visual changes. For example, when rotating hue at the same lightness or adjusting only chroma, brightness and color tone are less likely to shift unnaturally.</p>
