<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>HSLカラーについて</h3>
<p>HSLカラーは、色相 (Hue)、彩度 (Saturation)、明度 (Lightness) の3つの成分で色を表すカラーモデルです。RGBのように赤、緑、青の光の強さを直接指定するのではなく、色味、鮮やかさ、明るさを分けて指定できるため、色の調整やCSSでのデザイン作業でよく使われます。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意味</th><th>値の例</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 色相 (Hue)</td><td>色味を角度で表します。赤は 0deg、緑は 120deg、青は 240deg 付近です。</td><td><code>90deg</code></td></tr>
			<tr><td>S: 彩度 (Saturation)</td><td>色の鮮やかさを表します。0% は無彩色、100% は最も鮮やかな色です。</td><td><code>50%</code></td></tr>
			<tr><td>L: 明度 (Lightness)</td><td>色の明るさを表します。0% は黒、50% は標準的な明るさ、100% は白です。</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>例えば、赤などの主要な色は以下のように表せます。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>HSL表記</th><th>RGB表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>緑</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>ライム</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>青</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黒</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>透明度を含める場合は、アルファ値を追加します。例えば、半透明の赤は <code>hsl(0deg 100% 50% / 0.5)</code> のように表せます。</p>

<p>入力では、<code>hsl(0deg 100% 50%)</code> のようなスペース区切り表記のほか、<code>hsl(0deg, 100%, 50%)</code> のような従来のカンマ区切り表記も使用できます。</p>

<h4>色相・彩度・明度の扱い</h4>
<p>色相は角度として扱い、360deg を超える値や負の値は 0deg から 360deg の範囲に正規化します。例えば、<code>hsl(360deg 100% 50%)</code> は <code>hsl(0deg 100% 50%)</code>、<code>hsl(-120deg 100% 50%)</code> は <code>hsl(240deg 100% 50%)</code> と同じ色として扱います。</p>

<p>彩度と明度は 0% から 100% の範囲で扱います。彩度が 0% の場合は、色相に関係なくグレー系の無彩色になります。明度が 0% の場合は黒、100% の場合は白になります。</p>

<h4>HSLとRGBの違い</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a>は赤、緑、青の成分を直接指定するため、画面表示や画像データに近い表現です。一方、HSLは色相、彩度、明度を分けて指定できるため、「同じ色相のまま明るくする」「彩度だけを下げる」といった調整がしやすい表現です。</p>

<p>ただし、HSLは人間の知覚に完全に均等なカラースペースではありません。見た目の明るさや色差をより扱いやすくしたい場合は、<a href="${dc:h(basePath)}/color/lab">Lab</a>、<a href="${dc:h(basePath)}/color/lch">LCH</a>、<a href="${dc:h(basePath)}/color/oklab">Oklab</a>、<a href="${dc:h(basePath)}/color/oklch">Oklch</a>などのカラースペースを使うことがあります。</p>
