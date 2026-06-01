<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于 RGB 颜色</h3>
<p>RGB 颜色是通过组合红、绿、蓝三种光的成分来表示颜色的颜色模型。它广泛用于显示器、网页、图像数据等屏幕上的颜色表示。</p>

<p>在 RGB 中，各成分的强度用数值指定。通常使用 0 到 255 的整数，或 0% 到 100% 的百分比表示。所有成分为 0 时为黑色，所有成分为最大值时为白色。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>RGB 表示</th><th>十六进制表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>绿色</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>蓝色</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>白色</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>黑色</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGB 颜色有函数形式和十六进制形式。例如，红色可以表示为 <code>rgb(255 0 0)</code>、<code>rgb(100% 0% 0%)</code>、<code>#ff0000</code>、<code>#f00</code>。</p>

<p>要包含透明度，请添加 Alpha 值。例如，半透明红色可以表示为 <code>rgb(255 0 0 / 50%)</code> 或 <code>#ff000080</code>。</p>

<p>DenCode 的 RGB 颜色转换支持以下表示选项。</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGB 颜色（十六进制）</caption>
		<thead>
			<tr><th>表示选项</th><th>格式</th><th>示例</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB 颜色</caption>
		<thead>
			<tr><th>表示选项</th><th>格式</th><th>示例</th></tr>
		</thead>
		<tbody>
			<tr><td>数值</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>百分比</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> 不是 CSS 的标准十六进制颜色表示，但它是有时用于程序或应用设置的 ARGB 格式。开头的 <code>AA</code> 表示 Alpha，后续的 <code>RR</code>、<code>GG</code>、<code>BB</code> 表示红、绿、蓝成分。</p>

<h4>sRGB 和其他 RGB 色彩空间</h4>
<p>RGB 是使用红、绿、蓝三个成分表示颜色的颜色模型。不过，即使 RGB 值相同，实际颜色也会因使用哪个色彩空间解释而不同。Web 中常见的 <code>rgb()</code> 和 <code>#RRGGBB</code> 通常作为 sRGB 色彩空间的颜色处理。</p>

<p>CSS Color Module Level 4 还定义了 Display P3、ProPhoto RGB 等与 sRGB 可表示颜色范围不同的 RGB 色彩空间。DenCode 也支持这些色彩空间的转换。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色彩空间</th><th>格式</th><th>示例</th><th>特点</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Web 和 CSS 中常见的 RGB 色彩空间。十六进制颜色代码和普通 <code>rgb()</code> 基本作为 sRGB 处理。<code>color(srgb ...)</code> 是 CSS Color Module Level 4 的格式。</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>使用与 sRGB 相同色域，但以线性化成分值表示的色彩空间。用于颜色计算和合成。</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>比 sRGB 色域更广的色彩空间，可能用于广色域显示器和移动设备。</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>比 sRGB 色域更广，可能用于照片编辑和面向印刷的工作流程。</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>可处理比 Adobe RGB 更广色域的 RGB 色彩空间，作为照片编辑的工作色彩空间使用。</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>具有非常广色域的 RGB 色彩空间，用于 UHDTV 和 HDR 视频标准。</td></tr>
		</tbody>
	</table>
</div>

<p>使用广色域 RGB 色彩空间指定的颜色，可能无法在 sRGB 屏幕或普通十六进制颜色代码中准确表示。DenCode 转换为 <code>#RRGGBB</code> 或数值 <code>rgb(R G B)</code> 时，超出 sRGB 可表示范围的成分会按适合 <code>0</code> 到 <code>255</code> 范围的方式处理。另一方面，选择 <code>color(display-p3 ...)</code> 或 <code>color(a98-rgb ...)</code> 等色彩空间时，可以显示为所选色彩空间的成分值。</p>
