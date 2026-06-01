<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於 HSL 顏色</h3>
<p>HSL 顏色是使用色相、飽和度和明度來表示顏色的顏色模型。它不像 RGB 那樣直接指定紅、綠、藍光的強度，而是將色味、鮮豔程度和明亮程度分開，因此常用於顏色調整和 CSS 設計。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意義</th><th>範例值</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 色相</td><td>以角度表示色味。紅色約為 0deg，綠色約為 120deg，藍色約為 240deg。</td><td><code>90deg</code></td></tr>
			<tr><td>S: 飽和度</td><td>表示顏色的鮮豔程度。0% 為無彩色，100% 為最鮮豔的顏色。</td><td><code>50%</code></td></tr>
			<tr><td>L: 明度</td><td>表示顏色的明亮程度。0% 為黑色，50% 為標準明度，100% 為白色。</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，紅色等主要顏色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>HSL 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>綠色</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮綠色</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>藍色</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>若要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>hsl(0deg 100% 50% / 0.5)</code>。</p>

<p>輸入時，可以使用 <code>hsl(0deg 100% 50%)</code> 這種空格分隔表示，也可以使用 <code>hsl(0deg, 100%, 50%)</code> 這種傳統逗號分隔表示。</p>

<h4>色相、飽和度、明度的處理</h4>
<p>色相按角度處理，超過 360deg 的值或負值會標準化到 0deg 到 360deg 的範圍。例如，<code>hsl(360deg 100% 50%)</code> 會作為與 <code>hsl(0deg 100% 50%)</code> 相同的顏色處理，<code>hsl(-120deg 100% 50%)</code> 會作為與 <code>hsl(240deg 100% 50%)</code> 相同的顏色處理。</p>

<p>飽和度和明度按 0% 到 100% 的範圍處理。飽和度為 0% 時，無論色相如何，顏色都會變成灰色系的無彩色。明度為 0% 時為黑色，100% 時為白色。</p>

<h4>HSL 和 RGB 的差異</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> 直接指定紅、綠、藍成分，因此更接近螢幕顯示和影像資料。HSL 將色相、飽和度和明度分開，因此更容易進行「保持相同色相並變亮」或「只降低飽和度」等調整。</p>

<p>不過，HSL 並不是在人類知覺上完全均勻的色彩空間。若要更容易處理視覺明亮度或色差，可以使用 <a href="${dc:h(basePath)}/color/lab">Lab</a>、<a href="${dc:h(basePath)}/color/lch">LCH</a>、<a href="${dc:h(basePath)}/color/oklab">Oklab</a>、<a href="${dc:h(basePath)}/color/oklch">Oklch</a> 等色彩空間。</p>
