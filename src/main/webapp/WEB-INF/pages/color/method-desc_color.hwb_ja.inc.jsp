<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>HWBカラーについて</h3>
<p>HWBカラーは、色相 (Hue)、白色度 (Whiteness)、黒色度 (Blackness) の3つの成分で色を表すカラーモデルです。色相で基本となる色味を指定し、そこに白と黒をどれだけ混ぜるかを指定するため、色を薄くする、暗くする、グレーに近づけるといった調整を直感的に行いやすい表現です。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意味</th><th>値の例</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 色相 (Hue)</td><td>色味を角度で表します。赤は 0deg、緑は 120deg、青は 240deg 付近です。</td><td><code>90deg</code></td></tr>
			<tr><td>W: 白色度 (Whiteness)</td><td>色に混ぜる白の量を表します。値が大きいほど白っぽくなります。</td><td><code>20%</code></td></tr>
			<tr><td>B: 黒色度 (Blackness)</td><td>色に混ぜる黒の量を表します。値が大きいほど黒っぽくなります。</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>例えば、赤などの主要な色は以下のように表せます。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>HWB表記</th><th>RGB表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>緑</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>ライム</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>青</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黒</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>透明度を含める場合は、アルファ値を追加します。例えば、半透明の赤は <code>hwb(0deg 0% 0% / 0.5)</code> のように表せます。</p>

<h4>色相・白色度・黒色度の扱い</h4>
<p>色相は角度として扱い、360deg を超える値や負の値は 0deg から 360deg の範囲に正規化します。例えば、<code>hwb(360deg 0% 0%)</code> は <code>hwb(0deg 0% 0%)</code>、<code>hwb(-120deg 0% 0%)</code> は <code>hwb(240deg 0% 0%)</code> と同じ色として扱います。</p>

<p>白色度と黒色度は 0% から 100% の範囲で扱います。白色度が大きいほど白に近づき、黒色度が大きいほど黒に近づきます。白色度と黒色度の合計が 100% 以上の場合は、色相に関係なくグレー系の色として扱います。</p>

<h4>HWBとHSLの違い</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a>は彩度と明度で色を調整する表現で、色の鮮やかさや明るさを指定するのに向いています。一方、HWBは白と黒を混ぜる量で色を調整するため、「同じ色相のまま白っぽくする」「黒を足して暗くする」といった操作を説明しやすい表現です。</p>

<p>ただし、HWBも人間の知覚に完全に均等なカラースペースではありません。見た目の明るさや色差をより扱いやすくしたい場合は、<a href="${dc:h(basePath)}/color/lab">Lab</a>、<a href="${dc:h(basePath)}/color/lch">LCH</a>、<a href="${dc:h(basePath)}/color/oklab">Oklab</a>、<a href="${dc:h(basePath)}/color/oklch">Oklch</a>などのカラースペースを使うことがあります。</p>
