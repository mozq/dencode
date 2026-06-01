<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於 Oklch 顏色</h3>
<p>Oklch 顏色是使用明度、彩度和色相來表示顏色的知覺基礎色彩空間。它採用與 Oklab 相同的思路，並以彩度和角度表示色味，因此更容易分別調整顏色強度和色相。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意思</th><th>範例值</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度</td><td>表示顏色的明亮程度。0% 為黑色，100% 為白色。</td><td><code>60%</code></td></tr>
			<tr><td>C: 彩度</td><td>表示顏色的強度。0 為無彩色，值越大顏色越鮮艷。</td><td><code>0.2</code></td></tr>
			<tr><td>H: 色相</td><td>以角度表示色相。</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，紅色等主要顏色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>Oklch 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>綠色</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮綠色</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>藍色</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>如要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>。</p>

<h4>明度、彩度、色相的處理</h4>
<p>明度按 0% 到 100% 的範圍處理。低於 0% 的值按 0% 處理，高於 100% 的值會限制在 100%。</p>

<p>彩度按 0 以上的值處理。負的彩度按 0 處理。彩度為 0 時，顏色變為無彩色，色相按 0deg 處理。</p>

<p>色相按角度處理，超過 360deg 的值或負值會標準化到 0deg 到 360deg 的範圍。例如，<code>oklch(62.8% 0.2577 389.23deg)</code> 會作為與 <code>oklch(62.8% 0.2577 29.23deg)</code> 相同的顏色處理。</p>

<h4>Oklch 和 Oklab 的差異</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> 使用 <code>a</code> 和 <code>b</code> 的直角座標表示顏色。Oklch 將 Oklab 的色味轉換為彩度和色相。因此，在保持相同明度的同時調整彩度或色相時，Oklch 可能更直觀。</p>

<h4>Oklch 和 LCH 的差異</h4>
<p>與 <a href="${dc:h(basePath)}/color/lch">LCH</a> 相比，Oklch 在改變色相或彩度時的視覺變化更接近均勻。由於明度、彩度和色相成分被調整為更接近人類知覺，相同幅度的成分變化通常會產生更一致的視覺變化。例如，在相同明度下旋轉色相，或只調整彩度時，明亮度和色味不容易出現不自然的偏移。</p>
