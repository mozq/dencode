<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於 LCH 顏色</h3>
<p>LCH 顏色是使用明度、彩度和色相來表示顏色的色彩空間。它採用與 Lab 相同的知覺基礎，並以彩度和角度表示色味，因此更容易分別調整顏色強度和色相。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意義</th><th>範例值</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度</td><td>表示顏色的明亮程度。0% 為黑色，100% 為白色。</td><td><code>60%</code></td></tr>
			<tr><td>C: 彩度</td><td>表示顏色的強度。0 為無彩色，值越大顏色越鮮艷。</td><td><code>80</code></td></tr>
			<tr><td>H: 色相</td><td>以角度表示色相。</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，紅色等主要顏色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>LCH 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>綠色</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮綠色</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>藍色</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>若要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>。</p>

<h4>明度、彩度、色相的處理</h4>
<p>明度按 0% 到 100% 的範圍處理。低於 0% 的值按 0% 處理，高於 100% 的值會限制在 100%。</p>

<p>彩度按 0 以上的值處理。負的彩度按 0 處理。彩度為 0 時，顏色變為無彩色，色相按 0deg 處理。</p>

<p>色相按角度處理，超過 360deg 的值或負值會標準化到 0deg 到 360deg 的範圍。例如，<code>lch(54.29% 106.8372 400.86deg)</code> 會作為與 <code>lch(54.29% 106.8372 40.86deg)</code> 相同的顏色處理。</p>

<h4>LCH 和 Lab 的差異</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> 使用 <code>a</code> 和 <code>b</code> 的直角座標表示顏色。LCH 將色味轉換為彩度和色相。因此，在保持相同明度的同時調整彩度或色相時，LCH 可能更直觀。</p>
