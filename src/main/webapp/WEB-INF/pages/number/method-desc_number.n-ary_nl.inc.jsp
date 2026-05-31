<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over N-delige Getallen</h3>
<p>N-delige getallen (met grondtal N) vertegenwoordigen waarden in een positioneel talstelsel met N symbolen (meestal de cijfers „0–9“ en de letters „A–Z“).</p>

<p>DenCode ondersteunt grondtallen van 2 tot 36. Voor grondtallen groter dan 10 (11 tot 36) worden achtereenvolgens de letters van het alfabet vanaf „A“ gebruikt om waarden vanaf 10 weer te geven. Bijvoorbeeld wordt 10 tot 15 in het hexadecimale stelsel (grondtal 16) weergegeven als A tot F, en 10 tot 35 in het 36-tallig stelsel als A tot Z.</p>

<p>Voorbeelden van conversie in de respectieve grondtallen zijn hieronder weergegeven.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimaal</th><th>Binair</th><th>Octaal</th><th>Hexadecimaal</th><th>Grondtal 32</th><th>Grondtal 36</th></tr>
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

<p>Ook worden waarden achter de komma in het N-delig stelsel geconverteerd als waarden van elke plaats: N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), enzovoort. Als de waarde achter de komma niet kan worden weergegeven als de som van N<sup>-n</sup>, kan deze niet volledig worden geconverteerd naar het N-delig stelsel en treedt er een precisiefout op. In dat geval geeft DenCode dit verkort weer door „...“ aan het einde toe te voegen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimaal</th><th>Binair</th><th>Octaal</th><th>Hexadecimaal</th><th>Grondtal 32</th><th>Grondtal 36</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
