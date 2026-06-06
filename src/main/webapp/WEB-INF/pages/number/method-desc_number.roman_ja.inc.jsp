<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>ローマ数字について</h3>
<p>ローマ数字は、<code>I</code>、<code>V</code>、<code>X</code>、<code>L</code>、<code>C</code>、<code>D</code>、<code>M</code> の記号を組み合わせて整数を表します。</p>

<p>標準的なローマ数字では 1 から 3999 までの整数を表せます。 0 を表す記号はありません。</p>
<pre>
1234 = MCCXXXIV
3999 = MMMCMXCIX
</pre>

<h4>基本記号</h4>
<p>ローマ数字では、以下の7種類の記号を使用します。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>記号</th><th>値</th></tr>
		</thead>
		<tbody>
			<tr><td><code>I</code></td><td>1</td></tr>
			<tr><td><code>V</code></td><td>5</td></tr>
			<tr><td><code>X</code></td><td>10</td></tr>
			<tr><td><code>L</code></td><td>50</td></tr>
			<tr><td><code>C</code></td><td>100</td></tr>
			<tr><td><code>D</code></td><td>500</td></tr>
			<tr><td><code>M</code></td><td>1000</td></tr>
		</tbody>
	</table>
</div>

<h4>加算表記</h4>
<p>値の大きい記号から小さい記号へ並べる場合は、それぞれの値を足します。</p>
<pre>
VIII = 5 + 1 + 1 + 1 = 8
LX = 50 + 10 = 60
MDC = 1000 + 500 + 100 = 1600
</pre>

<p><code>I</code>、<code>X</code>、<code>C</code>、<code>M</code> は最大3回まで連続して使用できます。<code>V</code>、<code>L</code>、<code>D</code> は同じ桁で1回だけ使用します。</p>

<h4>減算表記</h4>
<p>小さい記号を大きい記号の直前に置くと、直前の小さい値を引きます。標準的なローマ数字で使用する減算表記は以下の6種類です。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>表記</th><th>値</th></tr>
		</thead>
		<tbody>
			<tr><td><code>IV</code></td><td>4</td></tr>
			<tr><td><code>IX</code></td><td>9</td></tr>
			<tr><td><code>XL</code></td><td>40</td></tr>
			<tr><td><code>XC</code></td><td>90</td></tr>
			<tr><td><code>CD</code></td><td>400</td></tr>
			<tr><td><code>CM</code></td><td>900</td></tr>
		</tbody>
	</table>
</div>

<pre>
44 = XLIV
999 = CMXCIX
1999 = MCMXCIX
</pre>

<p><code>IC</code> を 99、<code>IL</code> を 49、<code>VX</code> を 5 として扱うような表記は標準的ではないため、サポートしていません。</p>

<h4>ローマ数字の歴史</h4>
<p>ローマ数字は、古代ローマで数を数えるための素朴な印や刻み目から発展したと考えられています。1 を <code>I</code> のような縦線で表し、5 や 10 のまとまりを別の記号で表す方法が使われるようになり、やがて <code>V</code>、<code>X</code>、<code>L</code>、<code>C</code>、<code>D</code>、<code>M</code> を組み合わせる記号体系として整えられていきました。</p>

<p>初期のローマ数字は、現在のように厳密に統一された表記ではありませんでした。例えば 4 は <code>IV</code> だけでなく <code>IIII</code> と書かれることがあり、9 も <code>IX</code> ではなく <code>VIIII</code> と書かれることがありました。現在一般的な <code>IV</code>、<code>IX</code>、<code>XL</code>、<code>XC</code>、<code>CD</code>、<code>CM</code> のような減算表記は、後世に標準的な表記として整理されたものです。</p>

<p>商取引、碑文、暦、時計、章番号などで長く使われ、現在でも年号や番号を表す装飾的・慣用的な表記として残っています。</p>
