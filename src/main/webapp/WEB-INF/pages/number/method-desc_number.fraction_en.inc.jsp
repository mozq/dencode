<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About fraction numbers</h3>
<p>Fraction numbers (Fractions) represent numbers in the form of "numerator/denominator" as the ratio (quotient) of the numerator and denominator.</p>

<p>In DenCode, the entered number (integer or decimal) is converted into an irreducible fraction (a fraction that cannot be reduced any further).</p>

<p>Examples of fraction conversion are as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimal (Input)</th><th>Fraction (Output)</th></tr>
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

<p>A decimal ending with "..." is interpreted as a "truncated number" and is converted based on the following rules:</p>
<ul>
	<li><strong>If there is a repeating pattern (recurring decimal):</strong> The repeating pattern in the decimal part (repetend) is automatically detected and converted into the exact fraction representation.</li>
	<li><strong>If there is no repeating pattern:</strong> It is converted into a fraction as a terminating decimal based on the entered number of digits.</li>
</ul>

<p>Examples of conversion for decimals ending with "..." are as follows.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimal (Input)</th><th>Fraction (Output)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
