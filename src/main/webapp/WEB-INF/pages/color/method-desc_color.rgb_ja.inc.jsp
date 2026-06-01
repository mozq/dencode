<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>RGBカラーについて</h3>
<p>RGBカラーは、赤 (Red)、緑 (Green)、青 (Blue) の3つの光の成分を組み合わせて色を表すカラーモデルです。ディスプレイ、Webページ、画像データなど、画面上で扱う色の表現として広く使用されています。</p>

<p>RGBでは、各成分の強さを数値で指定します。一般的には 0 から 255 の整数、または 0% から 100% のパーセンテージで表します。すべての成分が 0 の場合は黒、すべての成分が最大の場合は白になります。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>RGB表記</th><th>16進表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>緑</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>青</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>白</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>黒</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGBカラーには、関数形式と16進形式があります。例えば赤は、<code>rgb(255 0 0)</code>、<code>rgb(100% 0% 0%)</code>、<code>#ff0000</code>、<code>#f00</code> のように表せます。</p>

<p>透明度を含める場合は、アルファ値を追加します。例えば、半透明の赤は <code>rgb(255 0 0 / 50%)</code> や <code>#ff000080</code> のように表せます。</p>

<p>DenCodeのRGBカラー変換では、以下の表記オプションに対応しています。</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGBカラー (16進)</caption>
		<thead>
			<tr><th>表記オプション</th><th>フォーマット</th><th>例</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGBカラー</caption>
		<thead>
			<tr><th>表記オプション</th><th>フォーマット</th><th>例</th></tr>
		</thead>
		<tbody>
			<tr><td>数値</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>パーセンテージ</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> はCSSの標準的な16進カラー表記ではありませんが、プログラムやアプリケーション設定で使われることがあるARGB形式です。先頭の <code>AA</code> がアルファ、続く <code>RR</code>、<code>GG</code>、<code>BB</code> が赤、緑、青の成分を表します。</p>

<h4>sRGBとその他のRGBカラースペース</h4>
<p>RGBは、赤、緑、青の3成分で色を表すカラーモデルです。ただし、同じRGB値でも、どのカラースペースで解釈するかによって実際の色は異なります。Webで一般的な <code>rgb()</code> や <code>#RRGGBB</code> は、通常はsRGBカラースペースの色として扱われます。</p>

<p>CSS Color Module Level 4では、Display P3 や ProPhoto RGB など、sRGBとは扱える色の範囲が異なるRGBカラースペースも定義されています。DenCodeでは、これらのカラースペースの変換にも対応しています。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>カラースペース</th><th>フォーマット</th><th>例</th><th>特徴</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>WebやCSSで一般的なRGBカラースペースです。16進カラーコードや通常の <code>rgb()</code> は、基本的にsRGBとして扱われます。<code>color(srgb ...)</code> はCSS Color Module Level 4のフォーマットです。</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>sRGBと同じ色域を、線形化した成分値で表すカラースペースです。色の計算や合成で使われます。</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>sRGBより広い色域を持ち、広色域ディスプレイやモバイル端末で使われることがあります。</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>sRGBより広い色域を持ち、写真編集や印刷向けのワークフローで使われることがあります。</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Adobe RGBよりさらに広い色域を扱えるRGBカラースペースで、写真編集の作業用カラースペースとして使われます。</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>非常に広い色域を持つRGBカラースペースで、UHDTVやHDR映像の規格で使われます。</td></tr>
		</tbody>
	</table>
</div>

<p>広い色域のRGBカラースペースで指定した色は、sRGBの画面や通常の16進カラーコードでは正確に表せない場合があります。DenCodeで <code>#RRGGBB</code> や数値の <code>rgb(R G B)</code> に変換する場合、sRGBで表せる範囲外の成分は <code>0</code> から <code>255</code> の範囲に収まるように扱います。一方、<code>color(display-p3 ...)</code> や <code>color(a98-rgb ...)</code> などのカラースペースを選ぶと、選択したカラースペースの成分値として表示できます。</p>
