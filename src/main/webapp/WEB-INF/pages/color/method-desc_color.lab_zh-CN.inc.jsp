<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于 Lab 颜色</h3>
<p>Lab 颜色是使用明度、从绿色到红色的轴以及从蓝色到黄色的轴来表示颜色的色彩空间。它不像 RGB 那样直接指定显示设备的红、绿、蓝成分，而是以更接近人类视觉的方式分离明度和色味。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>含义</th><th>示例值</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度</td><td>表示颜色的明亮程度。0% 为黑色，100% 为白色。</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>表示从绿色到红色的方向。负值偏绿，正值偏红。</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>表示从蓝色到黄色的方向。负值偏蓝，正值偏黄。</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，红色等主要颜色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>Lab 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>绿色</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮绿色</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>蓝色</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>要包含透明度，请添加 Alpha 值。例如，半透明红色可以表示为 <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>明度、a、b 的处理</h4>
<p>明度按 0% 到 100% 的范围处理。低于 0% 的值按 0% 处理，高于 100% 的值会限制在 100%。</p>

<p><code>a</code> 和 <code>b</code> 使用正数或负数指定。它们的值不会被截断到固定范围，而是作为指定的 Lab 成分处理。</p>

<h4>Lab 和 LCH 的区别</h4>
<p>Lab 使用 <code>a</code> 和 <code>b</code> 的直角坐标表示颜色。<a href="${dc:h(basePath)}/color/lch">LCH</a> 使用与 Lab 相同的知觉基础，但用彩度和色相表示色味。</p>
