<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Labカラーについて</h3>
<p>Labカラーは、明度 (Lightness) と、緑から赤の軸、青から黄の軸で色を表すカラースペースです。RGBのようにディスプレイの赤、緑、青の成分を直接指定するのではなく、人間の視覚に近い形で明るさと色味を分けて表します。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>成分</th><th>意味</th><th>値の例</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 明度 (Lightness)</td><td>色の明るさを表します。0% は黒、100% は白です。</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>緑から赤の方向を表します。負の値は緑寄り、正の値は赤寄りです。</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>青から黄の方向を表します。負の値は青寄り、正の値は黄寄りです。</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>例えば、赤などの主要な色は以下のように表せます。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>Lab表記</th><th>RGB表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>緑</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>ライム</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>青</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>白</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>黒</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>透明度を含める場合は、アルファ値を追加します。例えば、半透明の赤は <code>lab(54.29% 80.8049 69.891 / 0.5)</code> のように表せます。</p>

<h4>明度・a・bの扱い</h4>
<p>明度は 0% から 100% の範囲で扱います。0% 未満の明度は 0%、100% を超える明度は 100% に収まるように扱います。</p>

<p><code>a</code> と <code>b</code> は正または負の数値で指定します。<code>a</code> と <code>b</code> の値は固定範囲に切り詰めず、指定された値をそのままLab成分として扱います。</p>

<h4>LabとLCHの違い</h4>
<p>Labは <code>a</code> と <code>b</code> の直交座標で色を表します。一方、<a href="${dc:h(basePath)}/color/lch">LCH</a>はLabと同じ知覚ベースの考え方を使いながら、色味を彩度 (Chroma) と色相 (Hue) で表すカラースペースです。</p>
