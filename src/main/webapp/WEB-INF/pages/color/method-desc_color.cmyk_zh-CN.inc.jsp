<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于 CMYK 颜色</h3>
<p>CMYK 颜色是使用青色、品红、黄色和黑色（Key plate）四个成分表示颜色的颜色模型。它主要用于印刷和桌面出版领域，基于通过叠加油墨生成颜色的减色混合。</p>

<p>在 CMYK 中，各成分的量用 0% 到 100% 的范围表示。通常，<code>C</code>、<code>M</code>、<code>Y</code> 表示色调，<code>K</code> 表示黑色的量。所有成分为 0% 时为白色，<code>K</code> 为 100% 时接近黑色。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>CMYK 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>青色</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>品红</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>黄色</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>白色</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>黑色</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>要包含透明度，请添加 Alpha 值。例如，半透明红色可以表示为 <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>。</p>

<h4>颜色配置文件</h4>
<p>DenCode 可以选择多个颜色配置文件。支持的颜色配置文件如下。</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYK 颜色</caption>
		<thead>
			<tr><th>颜色配置文件</th><th>CMYK 表示示例</th><th>特点</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>简单的 RGB 与 CMYK 转换。不依赖特定印刷条件或 ICC 配置文件。</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>近似 U.S. Web Coated (SWOP) v2 的 CMYK 颜色配置文件。</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>使用 SWOP 2013 C3 ICC 配置文件的 CMYK 转换。</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>使用 GRACoL 2013 ICC 配置文件的 CMYK 转换。</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>使用 FOGRA39 ICC 配置文件的 CMYK 转换。</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>近似 FOGRA51 的 CMYK 颜色配置文件。</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>近似 FOGRA52 的 CMYK 颜色配置文件。</td></tr>
		</tbody>
	</table>
</div>

<p>使用“ICC 配置文件”或“近似颜色配置文件”的 CMYK 颜色，会以 CSS 自定义色彩空间格式 <code>color(--profile C% M% Y% K%)</code> 表示。在实际 CSS 中使用时，请通过 <code>@color-profile</code> 指定对应的 ICC 配置文件。</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>近似颜色配置文件会根据公开的 Characterization data 计算近似的 CMYK 颜色。因此，即使在 CSS 的 <code>@color-profile</code> 中使用相近的 ICC 配置文件，显示出的色调也可能略有不同。</p>

<h4>CMYK 和 RGB 的区别</h4>
<p>CMYK 是处理印刷油墨的减色混合颜色模型。另一方面，<a href="${dc:h(basePath)}/color/rgb">RGB</a> 是处理显示器等光的加色混合颜色模型。即使看起来是相同的颜色，CMYK 和 RGB 的成分值也可能大不相同。</p>
