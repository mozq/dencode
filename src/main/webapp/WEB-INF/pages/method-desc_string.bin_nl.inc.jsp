<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Binaire Strings</h3>
<p>Een binaire string is de binaire waarde van een string weergegeven in binaire notatie.</p>
<p>Omdat binaire waarden verschillen afhankelijk van de tekencodering, verschilt ook het resultaat van de conversie naar een binaire string.</p>

<p>Bijvoorbeeld, het resultaat van het converteren van "サンプル" naar een binaire string is als volgt:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Tekencodering</th><th>Binaire string</th></tr>
		<tr><td>UTF-8</td><td>11100011 10000010 10110101 11100011 10000011 10110011 11100011 10000011 10010111 11100011 10000011 10101011</td></tr>
		<tr><td>UTF-16</td><td>00110000 10110101 00110000 11110011 00110000 11010111 00110000 11101011</td></tr>
		<tr><td>Shift_JIS</td><td>10000011 01010100 10000011 10010011 10000011 01110110 10000011 10001011</td></tr>
	</table>
</div>
