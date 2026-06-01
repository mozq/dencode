<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About Color Names</h3>
<p>Color names are a way to represent colors using named colors defined in CSS. Because colors can be specified with keywords such as <code>red</code>, <code>blue</code>, and <code>orange</code>, common colors used in HTML and CSS can be written readably.</p>

<p>For example, major colors such as red can be represented as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Color name</th><th>RGB notation</th><th>Hex notation</th></tr>
		</thead>
		<tbody>
			<tr><td>Red</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lime</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Blue</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>White</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Black</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Orange</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Transparent</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> is a special color name that represents transparent black.</p>

<p>Color names, except for <code>transparent</code>, do not contain transparency information. In DenCode, when a color with transparency can be represented as a named color, it is displayed using CSS relative color syntax. For example, semi-transparent <code>red</code> is represented as <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Difference between color names and RGB</h4>
<p>Color names represent common colors with human-readable keywords. In contrast, <a href="${dc:h(basePath)}/color/rgb">RGB</a> specifies red, green, and blue component values and can represent many more colors numerically. Color names are often used when readability in CSS or HTML is important, while RGB notation is often used for detailed color specification or color conversion.</p>
