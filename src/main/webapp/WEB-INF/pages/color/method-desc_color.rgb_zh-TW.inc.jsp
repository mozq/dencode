<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於 RGB 顏色</h3>
<p>RGB 顏色是透過組合紅、綠、藍三種光的成分來表示顏色的顏色模型。它廣泛用於顯示器、網頁、影像資料等螢幕上的顏色表示。</p>

<p>在 RGB 中，各成分的強度以數值指定。通常使用 0 到 255 的整數，或 0% 到 100% 的百分比表示。所有成分為 0 時為黑色，所有成分為最大值時為白色。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>RGB 表示</th><th>十六進位表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>綠色</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>藍色</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>白色</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>黑色</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGB 顏色有函數形式和十六進位形式。例如，紅色可以表示為 <code>rgb(255 0 0)</code>、<code>rgb(100% 0% 0%)</code>、<code>#ff0000</code>、<code>#f00</code>。</p>

<p>若要包含透明度，請加入 Alpha 值。例如，半透明紅色可以表示為 <code>rgb(255 0 0 / 50%)</code> 或 <code>#ff000080</code>。</p>

<p>DenCode 的 RGB 顏色轉換支援以下表示選項。</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGB 顏色（十六進位）</caption>
		<thead>
			<tr><th>表示選項</th><th>格式</th><th>範例</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB 顏色</caption>
		<thead>
			<tr><th>表示選項</th><th>格式</th><th>範例</th></tr>
		</thead>
		<tbody>
			<tr><td>數值</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>百分比</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> 不是 CSS 的標準十六進位顏色表示，但它是有時用於程式或應用程式設定的 ARGB 格式。開頭的 <code>AA</code> 表示 Alpha，後續的 <code>RR</code>、<code>GG</code>、<code>BB</code> 表示紅、綠、藍成分。</p>

<h4>sRGB 和其他 RGB 色彩空間</h4>
<p>RGB 是使用紅、綠、藍三個成分表示顏色的顏色模型。不過，即使 RGB 值相同，實際顏色也會因使用哪個色彩空間解釋而不同。Web 中常見的 <code>rgb()</code> 和 <code>#RRGGBB</code> 通常作為 sRGB 色彩空間的顏色處理。</p>

<p>CSS Color Module Level 4 還定義了 Display P3、ProPhoto RGB 等與 sRGB 可表示顏色範圍不同的 RGB 色彩空間。DenCode 也支援這些色彩空間的轉換。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色彩空間</th><th>格式</th><th>範例</th><th>特點</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Web 和 CSS 中常見的 RGB 色彩空間。十六進位顏色代碼和普通 <code>rgb()</code> 基本作為 sRGB 處理。<code>color(srgb ...)</code> 是 CSS Color Module Level 4 的格式。</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>使用與 sRGB 相同色域，但以線性化成分值表示的色彩空間。用於顏色計算和合成。</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>比 sRGB 色域更廣的色彩空間，可能用於廣色域顯示器和行動裝置。</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>比 sRGB 色域更廣，可能用於相片編輯和面向印刷的工作流程。</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>可處理比 Adobe RGB 更廣色域的 RGB 色彩空間，作為相片編輯的工作色彩空間使用。</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>具有非常廣色域的 RGB 色彩空間，用於 UHDTV 和 HDR 影片標準。</td></tr>
		</tbody>
	</table>
</div>

<p>使用廣色域 RGB 色彩空間指定的顏色，可能無法在 sRGB 螢幕或普通十六進位顏色代碼中準確表示。DenCode 轉換為 <code>#RRGGBB</code> 或數值 <code>rgb(R G B)</code> 時，超出 sRGB 可表示範圍的成分會按適合 <code>0</code> 到 <code>255</code> 範圍的方式處理。另一方面，選擇 <code>color(display-p3 ...)</code> 或 <code>color(a98-rgb ...)</code> 等色彩空間時，可以顯示為所選色彩空間的成分值。</p>
