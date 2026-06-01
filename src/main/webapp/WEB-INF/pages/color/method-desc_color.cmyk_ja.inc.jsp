<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>CMYKカラーについて</h3>
<p>CMYKカラーは、シアン (Cyan)、マゼンタ (Magenta)、イエロー (Yellow)、ブラック (Key plate) の4つの成分で色を表すカラーモデルです。主に印刷やDTPの分野で使われ、インクを重ねて色を作る減法混色の考え方に基づいています。</p>

<p>CMYKでは、各成分の量を 0% から 100% の範囲で表します。一般的には、<code>C</code>、<code>M</code>、<code>Y</code> が色味を、<code>K</code> が黒の量を表します。すべての成分が 0% の場合は白、<code>K</code> が 100% の場合は黒に近い色になります。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>CMYK表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>シアン</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>マゼンタ</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>イエロー</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>白</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>黒</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>透明度を含める場合は、アルファ値を追加します。例えば、半透明の赤は <code>device-cmyk(0% 100% 100% 0% / 0.5)</code> のように表せます。</p>

<h4>カラープロファイル</h4>
<p>DenCodeでは、いくつかのカラープロファイルを選択できます。対応しているカラープロファイルは以下のとおりです。</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYKカラー</caption>
		<thead>
			<tr><th>カラープロファイル</th><th>CMYK表記例</th><th>特徴</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>単純なRGBとCMYKの変換です。特定の印刷条件やICCプロファイルには依存しません。</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>U.S. Web Coated (SWOP) v2 に近似したCMYKカラープロファイルです。</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>SWOP 2013 C3 のICCプロファイルを使用したCMYK変換です。</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>GRACoL 2013 のICCプロファイルを使用したCMYK変換です。</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>FOGRA39 のICCプロファイルを使用したCMYK変換です。</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>FOGRA51 に近似したCMYKカラープロファイルです。</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>FOGRA52 に近似したCMYKカラープロファイルです。</td></tr>
		</tbody>
	</table>
</div>

<p>「ICCプロファイル」や「近似カラープロファイル」のCMYKカラーは、CSSのカスタムカラースペース形式である <code>color(--profile C% M% Y% K%)</code> の形で表します。実際のCSSで使用する場合は、<code>@color-profile</code> で対応するICCプロファイルを指定します。</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>近似カラープロファイルでは、公開されている Characterization data に基づいて、近似値のCMYKカラーを計算します。そのため、CSSの <code>@color-profile</code> で近いICCプロファイルを使用した場合でも、表示される色味が若干異なることがあります。</p>

<h4>CMYKとRGBの違い</h4>
<p>CMYKは印刷インクを扱う減法混色のカラーモデルです。一方、<a href="${dc:h(basePath)}/color/rgb">RGB</a>はディスプレイなどの光を扱う加法混色のカラーモデルです。同じ見た目の色でも、CMYKとRGBでは成分値が大きく異なります。</p>
