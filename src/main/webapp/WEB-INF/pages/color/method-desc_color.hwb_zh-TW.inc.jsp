<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於 HWB 顏色</h3>
<p>HWB 顏色是使用色相、白色度和黑色度三個成分表示顏色的顏色模型。色相指定基本色味，白色度和黑色度指定混入多少白色和黑色，因此較容易直覺地調整為更淺、更暗或更接近灰色的顏色。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>含義</th><th>範例值</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 色相</td><td>以角度表示色味。紅色約為 0deg，綠色約為 120deg，藍色約為 240deg。</td><td><code>90deg</code></td></tr>
			<tr><td>W: 白色度</td><td>表示混入顏色中的白色量。值越大，顏色越偏白。</td><td><code>20%</code></td></tr>
			<tr><td>B: 黑色度</td><td>表示混入顏色中的黑色量。值越大，顏色越偏黑。</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，紅色等主要顏色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>HWB 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>綠色</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮綠色</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>藍色</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>若要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>hwb(0deg 0% 0% / 0.5)</code>。</p>

<h4>色相、白色度、黑色度的處理</h4>
<p>色相按角度處理，超過 360deg 的值或負值會標準化到 0deg 到 360deg 的範圍。例如，<code>hwb(360deg 0% 0%)</code> 會作為與 <code>hwb(0deg 0% 0%)</code> 相同的顏色處理，<code>hwb(-120deg 0% 0%)</code> 會作為與 <code>hwb(240deg 0% 0%)</code> 相同的顏色處理。</p>

<p>白色度和黑色度按 0% 到 100% 的範圍處理。白色度越大，顏色越接近白色；黑色度越大，顏色越接近黑色。當白色度和黑色度的合計為 100% 以上時，無論色相如何，都會作為灰色系顏色處理。</p>

<h4>HWB 和 HSL 的差異</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> 使用飽和度和明度調整顏色，適合指定顏色的鮮豔程度和明亮程度。HWB 透過混入白色和黑色的量來調整顏色，因此較容易說明「保持相同色相並變白」或「加入黑色使其變暗」等操作。</p>

<p>不過，HWB 也不是在人類知覺上完全均勻的色彩空間。若要較容易處理視覺明亮度或色差，可以使用 <a href="${dc:h(basePath)}/color/lab">Lab</a>、<a href="${dc:h(basePath)}/color/lch">LCH</a>、<a href="${dc:h(basePath)}/color/oklab">Oklab</a>、<a href="${dc:h(basePath)}/color/oklch">Oklch</a> 等色彩空間。</p>
