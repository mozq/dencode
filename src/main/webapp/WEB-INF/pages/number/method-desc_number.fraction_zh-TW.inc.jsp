<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於分數 (Fraction)</h3>
<p>分數（Fraction）是用「分子/分母」形式表示的數值，作為分子和分母的比率（商）。</p>

<p>在 DenCode 中，輸入的數值（整數或小數）將被轉換為既約分數（不能再約分的分數）。</p>

<p>分數轉換範例如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>十進位 (輸入)</th><th>分數 (輸出)</th></tr>
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

<p>以「...」結尾的小數被解釋為「省略的數值」，並根據以下規則進行轉換：</p>
<ul>
	<li><strong>如果有重複模式（循環小數）：</strong>自動檢測小數部分的重複模式（循環節）並轉換為精確的分數表示。</li>
	<li><strong>如果沒有重複模式：</strong>基於輸入的位數作為有限小數轉換為分數。</li>
</ul>

<p>以「...」結尾的小數的轉換範例如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>十進位 (輸入)</th><th>分數 (輸出)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
