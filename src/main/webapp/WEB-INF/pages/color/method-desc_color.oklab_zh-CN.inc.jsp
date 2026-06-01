<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于 Oklab 颜色</h3>
<p>Oklab 颜色是使用明度和两个颜色成分来表示颜色的知觉基础色彩空间。它像 Lab 一样分离明度和色味，并作为较新的模型，让颜色变化更接近视觉感受。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>含义</th><th>示例值</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度</td><td>表示颜色的明亮程度。0% 为黑色，100% 为白色。</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>表示从绿色到红色的方向。负值偏绿，正值偏红。</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>表示从蓝色到黄色的方向。负值偏蓝，正值偏黄。</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，红色等主要颜色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>Oklab 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>绿色</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮绿色</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>蓝色</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>要包含透明度，请添加 Alpha 值。例如，半透明红色可以表示为 <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>明度、a、b 的处理</h4>
<p>明度按 0% 到 100% 的范围处理。低于 0% 的值按 0% 处理，高于 100% 的值会限制在 100%。</p>

<p><code>a</code> 和 <code>b</code> 使用正数或负数指定。它们的值不会被截断到固定范围，而是作为指定的 Oklab 成分处理。</p>

<h4>Oklab 和 Oklch 的区别</h4>
<p>Oklab 使用 <code>a</code> 和 <code>b</code> 的直角坐标表示颜色。<a href="${dc:h(basePath)}/color/oklch">Oklch</a> 使用与 Oklab 相同的知觉基础，但用彩度和色相表示色味。</p>

<h4>Oklab 和 Lab 的区别</h4>
<p>与 <a href="${dc:h(basePath)}/color/lab">Lab</a> 相比，Oklab 在改变色相或彩度时的视觉变化更接近均匀。由于明度和颜色成分被调整为更接近人类知觉，相同幅度的成分变化通常会产生更一致的视觉变化。例如，在插值颜色生成渐变，或只调整彩度时，明亮度和色相不容易出现不自然的偏移。</p>
