<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über Bruchzahlen</h3>
<p>Bruchzahlen (Brüche) stellen Zahlen in der Form „Zähler/Nenner“ als Verhältnis (Quotient) von Zähler und Nenner dar.</p>

<p>In DenCode wird die eingegebene Zahl (Ganzzahl oder Dezimalzahl) in einen gekürzten Bruch (einen Bruch, der nicht weiter gekürzt werden kann) umgewandelt.</p>

<p>Beispiele für die Bruchkonvertierung sind wie folgt.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Dezimal (Eingabe)</th><th>Bruch (Ausgabe)</th></tr>
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

<p>Eine Dezimalzahl, die auf „...“ endet, wird als „abgeschnittene Zahl“ interpretiert und nach folgenden Regeln konvertiert:</p>
<ul>
	<li><strong>Wenn ein sich wiederholendes Muster vorhanden ist (periodischer Dezimalbruch):</strong> Das sich wiederholende Muster im Nachkommateil (Periode) wird automatisch erkannt und in die exakte Bruchdarstellung konvertiert.</li>
	<li><strong>Wenn kein sich wiederholendes Muster vorhanden ist:</strong> Die Zahl wird basierend auf der eingegebenen Anzahl von Stellen als endlicher Dezimalbruch in einen Bruch konvertiert.</li>
</ul>

<p>Beispiele für die Konvertierung von Dezimalzahlen, die auf „...“ enden, sind wie folgt.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Dezimal (Eingabe)</th><th>Bruch (Ausgabe)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
