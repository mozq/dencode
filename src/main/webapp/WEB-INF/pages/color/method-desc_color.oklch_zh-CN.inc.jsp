<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于 Oklch 颜色</h3>
<p>Oklch 颜色是使用明度、彩度和色相来表示颜色的知觉基础色彩空间。它采用与 Oklab 相同的思路，并以彩度和角度表示色味，因此更容易分别调整颜色强度和色相。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>含义</th><th>示例值</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度</td><td>表示颜色的明亮程度。0% 为黑色，100% 为白色。</td><td><code>60%</code></td></tr>
			<tr><td>C: 彩度</td><td>表示颜色的强度。0 为无彩色，值越大颜色越鲜艳。</td><td><code>0.2</code></td></tr>
			<tr><td>H: 色相</td><td>以角度表示色相。</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，红色等主要颜色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>Oklch 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>绿色</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮绿色</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>蓝色</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>要包含透明度，请添加 Alpha 值。例如，半透明红色可以表示为 <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>明度、彩度、色相的处理</h4>
<p>明度按 0% 到 100% 的范围处理。低于 0% 的值按 0% 处理，高于 100% 的值会限制在 100%。</p>

<p>彩度按 0 以上的值处理。负的彩度按 0 处理。彩度为 0 时，颜色变为无彩色，色相按 0deg 处理。</p>

<p>色相按角度处理，超过 360deg 的值或负值会标准化到 0deg 到 360deg 的范围。例如，<code>oklch(62.8% 0.2577 389.23deg)</code> 会作为与 <code>oklch(62.8% 0.2577 29.23deg)</code> 相同的颜色处理。</p>

<h4>Oklch 和 Oklab 的区别</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> 使用 <code>a</code> 和 <code>b</code> 的直角坐标表示颜色。Oklch 将 Oklab 的色味转换为彩度和色相。因此，在保持相同明度的同时调整彩度或色相时，Oklch 可能更直观。</p>

<h4>Oklch 和 LCH 的区别</h4>
<p>与 <a href="${dc:h(basePath)}/color/lch">LCH</a> 相比，Oklch 在改变色相或彩度时的视觉变化更接近均匀。由于明度、彩度和色相成分被调整为更接近人类知觉，相同幅度的成分变化通常会产生更一致的视觉变化。例如，在相同明度下旋转色相，或只调整彩度时，明亮度和色味不容易出现不自然的偏移。</p>
