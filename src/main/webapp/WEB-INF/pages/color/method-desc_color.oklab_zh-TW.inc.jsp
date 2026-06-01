<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於 Oklab 顏色</h3>
<p>Oklab 顏色是使用明度和兩個顏色成分來表示顏色的知覺基礎色彩空間。它像 Lab 一樣分離明度和色味，並作為較新的模型，讓顏色變化更接近視覺感受。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意義</th><th>範例值</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度</td><td>表示顏色的明亮程度。0% 為黑色，100% 為白色。</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>表示從綠色到紅色的方向。負值偏綠，正值偏紅。</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>表示從藍色到黃色的方向。負值偏藍，正值偏黃。</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，紅色等主要顏色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>Oklab 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>綠色</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮綠色</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>藍色</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>若要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>。</p>

<h4>明度、a、b 的處理</h4>
<p>明度按 0% 到 100% 的範圍處理。低於 0% 的值按 0% 處理，高於 100% 的值會限制在 100%。</p>

<p><code>a</code> 和 <code>b</code> 使用正數或負數指定。它們的值不會被截斷到固定範圍，而是作為指定的 Oklab 成分處理。</p>

<h4>Oklab 和 Oklch 的差異</h4>
<p>Oklab 使用 <code>a</code> 和 <code>b</code> 的直角座標表示顏色。<a href="${dc:h(basePath)}/color/oklch">Oklch</a> 使用與 Oklab 相同的知覺基礎，但用彩度和色相表示色味。</p>

<h4>Oklab 和 Lab 的差異</h4>
<p>與 <a href="${dc:h(basePath)}/color/lab">Lab</a> 相比，Oklab 在改變色相或彩度時的視覺變化更接近均勻。由於明度和顏色成分被調整為更接近人類知覺，相同幅度的成分變化通常會產生更一致的視覺變化。例如，在插值顏色生成漸變，或只調整彩度時，明亮度和色相不容易出現不自然的偏移。</p>
