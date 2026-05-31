<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über N-äre Zahlen</h3>
<p>N-äre Zahlen (Basis N) stellen numerische Werte im Stellenwertsystem mit N Symbolen (in der Regel die Ziffern „0–9“ und Buchstaben „A–Z“) dar.</p>

<p>DenCode unterstützt Basen von 2 bis 36. Für Basen größer als 10 (11 bis 36) werden nacheinander die Buchstaben des Alphabets ab „A“ verwendet, um Werte ab 10 darzustellen. Beispielsweise wird 10 bis 15 im Hexadezimalsystem (Basis 16) als A bis F und 10 bis 35 im Basis-36-System als A bis Z dargestellt.</p>

<p>Beispiele für die Umrechnung in den jeweiligen Basen sind unten aufgeführt.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Dezimal</th><th>Binär</th><th>Oktal</th><th>Hexadezimal</th><th>Basis 32</th><th>Basis 36</th></tr>
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

<p>Nachkommastellen werden im N-ären System als Summe von N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... dargestellt. Wenn eine Dezimalzahl nicht exakt als Summe von Potenzen von N<sup>-n</sup> dargestellt werden kann, tritt ein Konvertierungsfehler auf. In diesem Fall zeigt DenCode das Ergebnis verkürzt mit „...“ am Ende an.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Dezimal</th><th>Binär</th><th>Oktal</th><th>Hexadezimal</th><th>Basis 32</th><th>Basis 36</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
