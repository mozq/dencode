<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About LCH Color</h3>
<p>LCH color is a color space that represents colors with lightness, chroma, and hue. It uses the same perception-based idea as Lab color, but represents the color tone with chroma and an angle, making color strength and hue easier to adjust separately.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Meaning</th><th>Example value</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Represents the brightness of the color. 0% is black and 100% is white.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Represents the strength of the color. 0 is achromatic, and larger values produce more vivid colors.</td><td><code>80</code></td></tr>
			<tr><td>H: Hue</td><td>Represents the color tone as an angle.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>For example, major colors such as red can be represented as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>LCH notation</th><th>RGB notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Green</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blue</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>White</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Black</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Handling of lightness, chroma, and hue</h4>
<p>Lightness is handled in the range from 0% to 100%. Values below 0% are treated as 0%, and values above 100% are clamped to 100%.</p>

<p>Chroma is handled as a value of 0 or greater. Negative chroma is handled as 0. When chroma is 0, the color becomes achromatic and hue is handled as 0deg.</p>

<p>Hue is handled as an angle, and values greater than 360deg or negative values are normalized to the range from 0deg to 360deg. For example, <code>lch(54.29% 106.8372 400.86deg)</code> is handled as the same color as <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Difference between LCH and Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> represents colors with the rectangular coordinates <code>a</code> and <code>b</code>. LCH converts the color tone to chroma and hue. Therefore, LCH can be more intuitive when you want to adjust chroma or hue while keeping the same lightness.</p>
