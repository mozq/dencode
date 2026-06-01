<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Oklabカラーについて</h3>
<p>Oklabカラーは、明度と2つの色成分で色を表す知覚ベースのカラースペースです。Labカラーと同じように明るさと色味を分けて表しますが、より新しいモデルとして、色の変化が見た目に近くなるように設計されています。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意味</th><th>値の例</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度 (Lightness)</td><td>色の明るさを表します。0% は黒、100% は白です。</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>緑から赤の方向を表します。負の値は緑寄り、正の値は赤寄りです。</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>青から黄の方向を表します。負の値は青寄り、正の値は黄寄りです。</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>例えば、赤などの主要な色は以下のように表せます。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>Oklab表記</th><th>RGB表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>緑</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>ライム</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>青</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黒</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>透明度を含める場合は、アルファ値を追加します。例えば、半透明の赤は <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code> のように表せます。</p>

<h4>明度・a・bの扱い</h4>
<p>明度は 0% から 100% の範囲で扱います。0% 未満の明度は 0%、100% を超える明度は 100% に収まるように扱います。</p>

<p><code>a</code> と <code>b</code> は正または負の数値で指定します。<code>a</code> と <code>b</code> の値は固定範囲に切り詰めず、指定された値をそのままOklab成分として扱います。</p>

<h4>OklabとOklchの違い</h4>
<p>Oklabは <code>a</code> と <code>b</code> の直交座標で色を表します。一方、<a href="${dc:h(basePath)}/color/oklch">Oklch</a>はOklabと同じ知覚ベースの考え方を使いながら、色味を彩度 (Chroma) と色相 (Hue) で表すカラースペースです。</p>

<h4>OklabとLabの違い</h4>
<p>Oklabは<a href="${dc:h(basePath)}/color/lab">Lab</a>よりも、色相や彩度を変えたときの見た目の変化が均一に近くなるように設計されています。明度と色味の成分が人間の知覚に近い関係になるように調整されているため、成分値を同じ量だけ変えたときの見た目の変化も比較的そろいやすくなります。例えば、色を補間してグラデーションを作る場合や、彩度だけを上げ下げする場合に、明るさや色相が不自然にずれにくいことが特徴です。</p>
