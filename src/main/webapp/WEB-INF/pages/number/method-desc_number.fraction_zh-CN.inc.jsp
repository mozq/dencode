<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于分数 (Fraction)</h3>
<p>分数（Fraction）是用“分子/分母”形式表示的数值，作为分子和分母的比率（商）。</p>

<p>在 DenCode 中，输入的数值（整数或小数）将被转换为既约分数（不能再约分的分数）。</p>

<p>分数转换示例如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>十进制 (输入)</th><th>分数 (输出)</th></tr>
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

<p>以“...”结尾的小数被解释为“省略的数值”，并根据以下规则进行转换：</p>
<ul>
	<li><strong>如果有重复模式（循环小数）：</strong>自动检测小数部分的重复模式（循环节）并转换为精确的分数表示。</li>
	<li><strong>如果没有重复模式：</strong>基于输入的位数作为有限小数转换为分数。</li>
</ul>

<p>以“...”结尾的小数的转换示例如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>十进制 (输入)</th><th>分数 (输出)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
