<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über Zeilensortierung</h3>
<p>Die Zeilensortierung ordnet mehrzeiligen Text zeilenweise neu an. Die eingegebenen Zeilen können aufsteigend, absteigend oder in umgekehrter Reihenfolge ausgegeben werden.</p>
<p>Bei aufsteigender und absteigender Sortierung wird jede vollständige Zeile als Unicode-Zeichenkette verglichen. Bei umgekehrter Reihenfolge bleibt der Text in den einzelnen Zeilen unverändert; nur die Reihenfolge der Zeilen wird von oben nach unten umgedreht.</p>

<p>Wenn der folgende Text zum Beispiel aufsteigend sortiert wird:</p>

<pre>
banana
apple
orange
</pre>

<p>Das Ergebnis lautet:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Reihenfolge</th><th scope="col">Beschreibung</th><th scope="col">Konvertierungsbeispiel</th></tr>
		<tr><td>Aufsteigend</td><td>Sortiert die Zeilen vom kleineren zum größeren Unicode-Zeichenkettenwert.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Absteigend</td><td>Sortiert die Zeilen vom größeren zum kleineren Unicode-Zeichenkettenwert.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Umgekehrt</td><td>Kehrt die Reihenfolge der eingegebenen Zeilen um.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Groß- und Kleinbuchstaben, Zahlen, Symbole und nichtlateinische Zeichen werden als Unicode-Zeichen verglichen. Die Sortierung erfolgt daher als Zeichenkettenvergleich und nicht nach der Wörterbuchordnung einer natürlichen Sprache oder nach numerischem Wert.</p>
