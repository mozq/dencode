<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sui Numeri in Base N</h3>
<p>I numeri in base N (N-ary) rappresentano valori numerici nel sistema di numerazione posizionale utilizzando N simboli (generalmente le cifre «0–9» e le lettere «A–Z»).</p>

<p>DenCode supporta basi da 2 a 36. Per le basi superiori a 10 (da 11 a 36), le lettere dell'alfabeto a partire da «A» vengono utilizzate in ordine per rappresentare numeri pari o superiori a 10. Ad esempio, da 10 a 15 sono rappresentati da A a F in base 16, e da 10 a 35 sono rappresentati da A a Z in base 36.</p>

<p>Di seguito sono riportati esempi di conversione in ciascuna base.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decinale</th><th>Binario</th><th>Ottale</th><th>Esadecimale</th><th>Base 32</th><th>Base 36</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td><td class="text-right">8</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td><td class="text-right">9</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td><td class="text-right">A</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td><td class="text-right">F</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">G</td><td class="text-right">G</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td><td class="text-right">H</td><td class="text-right">H</td></tr>
			<tr><td class="text-right">31</td><td class="text-right">11111</td><td class="text-right">37</td><td class="text-right">1F</td><td class="text-right">V</td><td class="text-right">V</td></tr>
			<tr><td class="text-right">32</td><td class="text-right">100000</td><td class="text-right">40</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">W</td></tr>
			<tr><td class="text-right">35</td><td class="text-right">100011</td><td class="text-right">43</td><td class="text-right">23</td><td class="text-right">13</td><td class="text-right">Z</td></tr>
			<tr><td class="text-right">36</td><td class="text-right">100100</td><td class="text-right">44</td><td class="text-right">24</td><td class="text-right">14</td><td class="text-right">10</td></tr>
		</tbody>
	</table>
</div>

<p>Inoltre, i valori frazionari sono convertiti in base N come valori posizionali di N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... Se il valore decimale non può essere espresso esattamente come somma di potenze N<sup>-n</sup>, non può essere convertito completamente in base N e si verifica un errore di precisione. In tal caso, DenCode aggiunge «...» alla fine per indicare che il valore è troncato.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decinale</th><th>Binario</th><th>Ottale</th><th>Esadecimale</th><th>Base 32</th><th>Base 36</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
