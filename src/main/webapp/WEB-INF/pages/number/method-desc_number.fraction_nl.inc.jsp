<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over breukgetallen</h3>
<p>Breukgetallen (breuken) vertegenwoordigen getallen in de vorm van „teller/noemer“ als verhouding (quotiënt) van teller en noemer.</p>

<p>In DenCode wordt het ingevoerde getal (geheel getal of decimaal) geconverteerd naar een onvereenvoudigbare breuk (een breuk die niet verder vereenvoudigd kan worden).</p>

<p>Voorbeelden van breukconversie zijn als volgt.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimaal (Invoer)</th><th>Breuk (Uitvoer)</th></tr>
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

<p>Een decimaal getal dat eindigt op „...“ wordt geïnterpreteerd als een „afgekapt getal“ en geconverteerd op basis van de volgende regels:</p>
<ul>
	<li><strong>Als er een herhalend patroon is (repeterende breuk):</strong> Het herhalende patroon in het decimalen-deel (periode) wordt automatisch gedetecteerd en geconverteerd naar de exacte breukweergave.</li>
	<li><strong>Als er geen herhalend patroon is:</strong> Het wordt geconverteerd naar een breuk als een eindige decimaal op basis van het aantal ingevoerde cijfers.</li>
</ul>

<p>Voorbeelden van conversie voor decimaal getallen die eindigen op „...“ zijn als volgt.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimaal (Invoer)</th><th>Breuk (Uitvoer)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
