<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於 CMYK 顏色</h3>
<p>CMYK 顏色是使用青色、洋紅、黃色和黑色（Key plate）四個成分表示顏色的顏色模型。它主要用於印刷和桌上出版領域，基於透過疊加油墨產生顏色的減色混合。</p>

<p>在 CMYK 中，各成分的量以 0% 到 100% 的範圍表示。通常，<code>C</code>、<code>M</code>、<code>Y</code> 表示色調，<code>K</code> 表示黑色的量。所有成分為 0% 時為白色，<code>K</code> 為 100% 時接近黑色。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>CMYK 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>青色</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>洋紅</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>黃色</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>白色</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>黑色</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>若要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>。</p>

<h4>顏色設定檔</h4>
<p>DenCode 可以選擇多個顏色設定檔。支援的顏色設定檔如下。</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYK 顏色</caption>
		<thead>
			<tr><th>顏色設定檔</th><th>CMYK 表示範例</th><th>特點</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>簡單的 RGB 與 CMYK 轉換。不依賴特定印刷條件或 ICC 設定檔。</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>近似 U.S. Web Coated (SWOP) v2 的 CMYK 顏色設定檔。</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>使用 SWOP 2013 C3 ICC 設定檔的 CMYK 轉換。</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>使用 GRACoL 2013 ICC 設定檔的 CMYK 轉換。</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>使用 FOGRA39 ICC 設定檔的 CMYK 轉換。</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>近似 FOGRA51 的 CMYK 顏色設定檔。</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>近似 FOGRA52 的 CMYK 顏色設定檔。</td></tr>
		</tbody>
	</table>
</div>

<p>使用「ICC 設定檔」或「近似顏色設定檔」的 CMYK 顏色，會以 CSS 自訂色彩空間格式 <code>color(--profile C% M% Y% K%)</code> 表示。在實際 CSS 中使用時，請透過 <code>@color-profile</code> 指定對應的 ICC 設定檔。</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>近似顏色設定檔會根據公開的 Characterization data 計算近似的 CMYK 顏色。因此，即使在 CSS 的 <code>@color-profile</code> 中使用相近的 ICC 設定檔，顯示出的色調也可能略有不同。</p>

<h4>CMYK 和 RGB 的差異</h4>
<p>CMYK 是處理印刷油墨的減色混合顏色模型。另一方面，<a href="${dc:h(basePath)}/color/rgb">RGB</a> 是處理顯示器等光的加色混合顏色模型。即使看起來是相同的顏色，CMYK 和 RGB 的成分值也可能大不相同。</p>
