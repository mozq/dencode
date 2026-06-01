<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Oklchカラーについて</h3>
<p>Oklchカラーは、明度 (Lightness)、彩度 (Chroma)、色相 (Hue) の3つの成分で色を表す知覚ベースのカラースペースです。Oklabカラーと同じ考え方を使いながら、色味を彩度と角度で表すため、色の強さや色相を分けて調整しやすい表現です。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意味</th><th>値の例</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度 (Lightness)</td><td>色の明るさを表します。0% は黒、100% は白です。</td><td><code>60%</code></td></tr>
			<tr><td>C: 彩度 (Chroma)</td><td>色の強さを表します。0 は無彩色で、値が大きいほど鮮やかな色になります。</td><td><code>0.2</code></td></tr>
			<tr><td>H: 色相 (Hue)</td><td>色味を角度で表します。</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>例えば、赤などの主要な色は以下のように表せます。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>Oklch表記</th><th>RGB表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>緑</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>ライム</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>青</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黒</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>透明度を含める場合は、アルファ値を追加します。例えば、半透明の赤は <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code> のように表せます。</p>

<h4>明度・彩度・色相の扱い</h4>
<p>明度は 0% から 100% の範囲で扱います。0% 未満の明度は 0%、100% を超える明度は 100% に収まるように扱います。</p>

<p>彩度は 0 以上の値として扱います。負の彩度を指定した場合は 0 として扱います。彩度が 0 の場合は無彩色になり、色相は 0deg として扱います。</p>

<p>色相は角度として扱い、360deg を超える値や負の値は 0deg から 360deg の範囲に正規化します。例えば、<code>oklch(62.8% 0.2577 389.23deg)</code> は <code>oklch(62.8% 0.2577 29.23deg)</code> と同じ色として扱います。</p>

<h4>OklchとOklabの違い</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a>は <code>a</code> と <code>b</code> の直交座標で色を表します。一方、OklchはOklabの色味を彩度 (Chroma) と色相 (Hue) に変換して表します。そのため、同じ明るさのまま彩度や色相を調整したい場合は、Oklchの方が直感的に扱いやすいことがあります。</p>

<h4>OklchとLCHの違い</h4>
<p>Oklchは<a href="${dc:h(basePath)}/color/lch">LCH</a>よりも、色相や彩度を変えたときの見た目の変化が均一に近くなるように設計されています。明度、彩度、色相の成分が人間の知覚に近い関係になるように調整されているため、成分値を同じ量だけ変えたときの見た目の変化も比較的そろいやすくなります。例えば、同じ明度のまま色相を回したり、彩度だけを上げ下げしたりする場合に、明るさや色味が不自然にずれにくいことが特徴です。</p>
