<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于 HSL 颜色</h3>
<p>HSL 颜色是使用色相、饱和度和明度来表示颜色的颜色模型。它不像 RGB 那样直接指定红、绿、蓝光的强度，而是将色味、鲜艳程度和明亮程度分开，因此常用于颜色调整和 CSS 设计。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>含义</th><th>示例值</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 色相</td><td>以角度表示色味。红色约为 0deg，绿色约为 120deg，蓝色约为 240deg。</td><td><code>90deg</code></td></tr>
			<tr><td>S: 饱和度</td><td>表示颜色的鲜艳程度。0% 为无彩色，100% 为最鲜艳的颜色。</td><td><code>50%</code></td></tr>
			<tr><td>L: 明度</td><td>表示颜色的明亮程度。0% 为黑色，50% 为标准明度，100% 为白色。</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，红色等主要颜色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>HSL 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>绿色</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮绿色</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>蓝色</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>要包含透明度，请添加 Alpha 值。例如，半透明红色可以表示为 <code>hsl(0deg 100% 50% / 0.5)</code>。</p>

<p>输入时，可以使用 <code>hsl(0deg 100% 50%)</code> 这样的空格分隔表示，也可以使用 <code>hsl(0deg, 100%, 50%)</code> 这样的传统逗号分隔表示。</p>

<h4>色相、饱和度、明度的处理</h4>
<p>色相按角度处理，超过 360deg 的值或负值会标准化到 0deg 到 360deg 的范围。例如，<code>hsl(360deg 100% 50%)</code> 会作为与 <code>hsl(0deg 100% 50%)</code> 相同的颜色处理，<code>hsl(-120deg 100% 50%)</code> 会作为与 <code>hsl(240deg 100% 50%)</code> 相同的颜色处理。</p>

<p>饱和度和明度按 0% 到 100% 的范围处理。饱和度为 0% 时，无论色相如何，颜色都会变成灰色系的无彩色。明度为 0% 时为黑色，100% 时为白色。</p>

<h4>HSL 和 RGB 的区别</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> 直接指定红、绿、蓝成分，因此更接近屏幕显示和图像数据。HSL 将色相、饱和度和明度分开，因此更容易进行“保持相同色相并变亮”或“只降低饱和度”等调整。</p>

<p>不过，HSL 并不是在人类知觉上完全均匀的色彩空间。若要更容易处理视觉明亮度或色差，可以使用 <a href="${dc:h(basePath)}/color/lab">Lab</a>、<a href="${dc:h(basePath)}/color/lch">LCH</a>、<a href="${dc:h(basePath)}/color/oklab">Oklab</a>、<a href="${dc:h(basePath)}/color/oklch">Oklch</a> 等色彩空间。</p>
