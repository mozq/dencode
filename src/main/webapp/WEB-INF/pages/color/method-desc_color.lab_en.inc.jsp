<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About Lab Color</h3>
<p>Lab color is a color space that represents colors with lightness, a green-to-red axis, and a blue-to-yellow axis. Unlike RGB, which directly specifies the red, green, and blue components of a display, Lab separates brightness and color in a way that is closer to human vision.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Meaning</th><th>Example value</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Represents the brightness of the color. 0% is black and 100% is white.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Represents the direction from green to red. Negative values are greener, and positive values are redder.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Represents the direction from blue to yellow. Negative values are bluer, and positive values are yellower.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>For example, major colors such as red can be represented as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Lab notation</th><th>RGB notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Green</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blue</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>White</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Black</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Handling of lightness, a, and b</h4>
<p>Lightness is handled in the range from 0% to 100%. Values below 0% are treated as 0%, and values above 100% are clamped to 100%.</p>

<p><code>a</code> and <code>b</code> are specified as positive or negative numbers. Their values are not clipped to a fixed range, and are handled as the specified Lab components.</p>

<h4>Difference between Lab and LCH</h4>
<p>Lab represents colors with the rectangular coordinates <code>a</code> and <code>b</code>. <a href="${dc:h(basePath)}/color/lch">LCH</a> uses the same perception-based idea as Lab, but represents the color tone with chroma and hue.</p>
