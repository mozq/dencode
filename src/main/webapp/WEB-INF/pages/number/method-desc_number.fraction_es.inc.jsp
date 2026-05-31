<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre las fracciones</h3>
<p>Las fracciones representan números en la forma de „numerador/denominador“ como la relación (cociente) del numerador y el denominador.</p>

<p>En DenCode, el número introducido (entero o decimal) se convierte en una fracción irreducible (una fracción que no se puede simplificar más).</p>

<p>Los ejemplos de conversión de fracciones son los siguientes.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimal (Entrada)</th><th>Fracción (Salida)</th></tr>
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

<p>Un decimal que termina con „...“ se interpreta como un „número truncado“ y se convierte según las siguientes reglas:</p>
<ul>
	<li><strong>Si hay un patrón repetitivo (decimal periódico):</strong> El patrón repetitivo en la parte decimal (período) se detecta automáticamente y se convierte en la representación de fracción exacta.</li>
	<li><strong>Si no hay un patrón repetitivo:</strong> Se convierte en una fracción como un decimal finito basado en el número de dígitos introducido.</li>
</ul>

<p>Los ejemplos de conversión para decimales que terminan con „...“ son los siguientes.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimal (Entrada)</th><th>Fracción (Salida)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
