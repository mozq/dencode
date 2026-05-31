<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>分数について</h3>
<p>分数（Fraction）は、数値を分子（Numerator）と分母（Denominator）の比率（商）として「分子/分母」の形式で表す表現方法です。</p>

<p>DenCodeでは、入力された数値（整数または小数）を、既約分数（これ以上約分できない分数）に変換します。</p>

<p>分数での変換例は以下の通りです。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10進数（入力）</th><th>分数（出力）</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>末尾に"..."を伴う小数は「省略された数値」として解釈され、以下のルールに基づいて変換されます。</p>
<ul>
	<li><strong>繰り返しパターンがある場合（循環小数）：</strong>小数部の繰り返しパターン（循環節）を自動的に検出し、正確な分数表現に変換します。</li>
	<li><strong>繰り返しパターンがない場合：</strong>入力された桁数に基づいた有限小数として分数に変換されます。</li>
</ul>

<p>末尾に"..."を伴う小数の変換例は以下の通りです。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10進数（入力）</th><th>分数（出力）</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
