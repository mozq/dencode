<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About CMYK Color</h3>
<p>CMYK color is a color model that represents colors with four components: cyan, magenta, yellow, and black (key plate). It is mainly used in printing and desktop publishing, and is based on subtractive color mixing, where colors are produced by layering inks.</p>

<p>In CMYK, each component is represented in the range from 0% to 100%. In general, <code>C</code>, <code>M</code>, and <code>Y</code> represent the color tone, while <code>K</code> represents the amount of black. When all components are 0%, the color is white; when <code>K</code> is 100%, the color is close to black.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>CMYK notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Cyan</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Yellow</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>White</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Black</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>To include transparency, add an alpha value. For example, semi-transparent red can be represented as <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Color profiles</h4>
<p>DenCode lets you choose from several color profiles. The supported color profiles are listed below.</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYK color</caption>
		<thead>
			<tr><th>Color profile</th><th>CMYK notation example</th><th>Notes</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>A simple RGB and CMYK conversion. It does not depend on specific printing conditions or ICC profiles.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>A CMYK color profile approximating U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>A CMYK conversion using the SWOP 2013 C3 ICC profile.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>A CMYK conversion using the GRACoL 2013 ICC profile.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>A CMYK conversion using the FOGRA39 ICC profile.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>A CMYK color profile approximating FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>A CMYK color profile approximating FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>CMYK colors using an “ICC profile” or “approximate color profile” are represented in the CSS custom color space format <code>color(--profile C% M% Y% K%)</code>. To use them in actual CSS, specify the corresponding ICC profile with <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Approximate color profiles calculate approximate CMYK colors based on published Characterization data. Therefore, even when a similar ICC profile is used with CSS <code>@color-profile</code>, the displayed color may differ slightly.</p>

<h4>Difference between CMYK and RGB</h4>
<p>CMYK is a subtractive color model for printing inks. In contrast, <a href="${dc:h(basePath)}/color/rgb">RGB</a> is an additive color model for light, such as displays. Even for colors that look the same, CMYK and RGB component values can differ greatly.</p>
