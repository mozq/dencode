<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About Oklab Color</h3>
<p>Oklab color is a perception-based color space that represents colors with lightness and two color components. Like Lab color, it separates brightness and color, but as a newer model it is designed so color changes are closer to how they appear visually.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Meaning</th><th>Example value</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Represents the brightness of the color. 0% is black and 100% is white.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Represents the direction from green to red. Negative values are greener, and positive values are redder.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Represents the direction from blue to yellow. Negative values are bluer, and positive values are yellower.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>For example, major colors such as red can be represented as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Oklab notation</th><th>RGB notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Green</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blue</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>White</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Black</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Handling of lightness, a, and b</h4>
<p>Lightness is handled in the range from 0% to 100%. Values below 0% are treated as 0%, and values above 100% are clamped to 100%.</p>

<p><code>a</code> and <code>b</code> are specified as positive or negative numbers. Their values are not clipped to a fixed range, and are handled as the specified Oklab components.</p>

<h4>Difference between Oklab and Oklch</h4>
<p>Oklab represents colors with the rectangular coordinates <code>a</code> and <code>b</code>. <a href="${dc:h(basePath)}/color/oklch">Oklch</a> uses the same perception-based idea as Oklab, but represents the color tone with chroma and hue.</p>

<h4>Difference between Oklab and Lab</h4>
<p>Oklab is designed so that visual changes are closer to uniform than <a href="${dc:h(basePath)}/color/lab">Lab</a> when changing hue or chroma. Because the lightness and color components are adjusted to relate more closely to human perception, changing component values by the same amount tends to produce more even visual changes. For example, when interpolating colors to create a gradient or adjusting only chroma, brightness and hue are less likely to shift unnaturally.</p>
