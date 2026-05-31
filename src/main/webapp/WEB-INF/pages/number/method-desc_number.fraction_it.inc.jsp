<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sulle frazioni</h3>
<p>Le frazioni rappresentano i numeri nella forma di „numeratore/denominatore“ como rapporto (quoziente) tra il numeratore e il denominatore.</p>

<p>In DenCode, il numero inserito (intero o decimale) viene convertito in una frazione irriducibile (una frazione che non può essere ulteriormente semplificata).</p>

<p>Di seguito sono riportati esempi di conversione in frazioni.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimale (Input)</th><th>Frazione (Output)</th></tr>
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

<p>Un decimale che termina con „...“ viene interpretato come un „numero troncato“ e viene convertito in base alle seguenti regole:</p>
<ul>
	<li><strong>Se c'è un pattern ripetuto (decimale periodico):</strong> Il pattern ripetuto nella parte decimale (periodo) viene rilevato automaticamente e convertito nella rappresentazione in frazione esatta.</li>
	<li><strong>Se non c'è un pattern ripetuto:</strong> Viene convertito in una frazione come un decimale limitato basato sul numero di cifre inserite.</li>
</ul>

<p>Di seguito sono riportati esempi di conversione per decimali che terminano con „...“.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimale (Input)</th><th>Frazione (Output)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
