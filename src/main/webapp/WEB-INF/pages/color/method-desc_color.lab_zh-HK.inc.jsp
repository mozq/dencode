<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於 Lab 顏色</h3>
<p>Lab 顏色是使用明度、從綠色到紅色的軸，以及從藍色到黃色的軸來表示顏色的色彩空間。它不像 RGB 那樣直接指定顯示裝置的紅、綠、藍成分，而是以更接近人類視覺的方式分離明度和色味。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意思</th><th>範例值</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度</td><td>表示顏色的明亮程度。0% 為黑色，100% 為白色。</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>表示從綠色到紅色的方向。負值偏綠，正值偏紅。</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>表示從藍色到黃色的方向。負值偏藍，正值偏黃。</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>例如，紅色等主要顏色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>Lab 表示</th><th>RGB 表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>綠色</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>亮綠色</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>藍色</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白色</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黑色</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>如要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>lab(54.29% 80.8049 69.891 / 0.5)</code>。</p>

<h4>明度、a、b 的處理</h4>
<p>明度按 0% 到 100% 的範圍處理。低於 0% 的值按 0% 處理，高於 100% 的值會限制在 100%。</p>

<p><code>a</code> 和 <code>b</code> 使用正數或負數指定。它們的值不會被截斷到固定範圍，而是作為指定的 Lab 成分處理。</p>

<h4>Lab 和 LCH 的差異</h4>
<p>Lab 使用 <code>a</code> 和 <code>b</code> 的直角座標表示顏色。<a href="${dc:h(basePath)}/color/lch">LCH</a> 使用與 Lab 相同的知覺基礎，但用彩度和色相表示色味。</p>
