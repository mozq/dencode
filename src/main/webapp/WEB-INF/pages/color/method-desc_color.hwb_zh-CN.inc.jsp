<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于 HWB 颜色</h3>
<p>HWB 颜色是使用色相、白色度和黑色度三个成分表示颜色的颜色模型。色相指定基础色味，白色度和黑色度指定混入多少白色和黑色，因此更容易直观地调整为更浅、更暗或更接近灰色的颜色。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>含义</th><th>示例值</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 色相</td><td>以角度表示色味。红色约为 0deg，绿色约为 120deg，蓝色约为 240deg。</td><td><code>90deg</code></td></tr>
			<tr><td>W: 白色度</td><td>表示混入颜色中的白色量。值越大，颜色越偏白。</td><td><code>20%</code></td></tr>
			<tr><td>B: 黑色度</td><td>表示混入颜色中的黑色量。值越大，颜色越偏黑。</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，红色等主要颜色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>HWB 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>绿色</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮绿色</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>蓝色</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>要包含透明度，请添加 Alpha 值。例如，半透明红色可以表示为 <code>hwb(0deg 0% 0% / 0.5)</code>。</p>

<h4>色相、白色度、黑色度的处理</h4>
<p>色相按角度处理，超过 360deg 的值或负值会标准化到 0deg 到 360deg 的范围。例如，<code>hwb(360deg 0% 0%)</code> 会作为与 <code>hwb(0deg 0% 0%)</code> 相同的颜色处理，<code>hwb(-120deg 0% 0%)</code> 会作为与 <code>hwb(240deg 0% 0%)</code> 相同的颜色处理。</p>

<p>白色度和黑色度按 0% 到 100% 的范围处理。白色度越大，颜色越接近白色；黑色度越大，颜色越接近黑色。当白色度和黑色度的合计为 100% 以上时，无论色相如何，都会作为灰色系颜色处理。</p>

<h4>HWB 和 HSL 的区别</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> 使用饱和度和明度调整颜色，适合指定颜色的鲜艳程度和明亮程度。HWB 通过混入白色和黑色的量来调整颜色，因此更容易说明“保持相同色相并变白”或“加入黑色使其变暗”等操作。</p>

<p>不过，HWB 也不是在人类知觉上完全均匀的色彩空间。若要更容易处理视觉明亮度或色差，可以使用 <a href="${dc:h(basePath)}/color/lab">Lab</a>、<a href="${dc:h(basePath)}/color/lch">LCH</a>、<a href="${dc:h(basePath)}/color/oklab">Oklab</a>、<a href="${dc:h(basePath)}/color/oklch">Oklch</a> 等色彩空间。</p>
