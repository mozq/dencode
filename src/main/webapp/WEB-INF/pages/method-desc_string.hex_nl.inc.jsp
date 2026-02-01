<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Hexadecimale Strings</h3>
<p>Een hexadecimale string is de binaire waarde van een string weergegeven in hexadecimale notatie.</p>
<p>Omdat binaire waarden verschillen afhankelijk van de tekencodering, verschilt ook het resultaat van de conversie naar een hexadecimaal string.</p>

<p>Bijvoorbeeld, het resultaat van het converteren van "サンプル" naar een hexadecimale string is als volgt:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Tekencodering</th><th>Hexadecimale string</th></tr>
		<tr><td>UTF-8</td><td>E3 82 B5 E3 83 B3 E3 83 97 E3 83 AB</td></tr>
		<tr><td>UTF-16</td><td>30 B5 30 F3 30 D7 30 EB</td></tr>
		<tr><td>Shift_JIS</td><td>83 54 83 93 83 76 83 8B</td></tr>
	</table>
</div>
