<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über das Entfernen von Zeilenduplikaten</h3>
<p>Diese Funktion entfernt doppelte Zeilen aus mehrzeiligem Text. Wenn dieselbe Zeile mehrfach vorkommt, bleibt nur das erste Vorkommen erhalten; alle späteren Vorkommen werden gelöscht.</p>
<p>Die verbleibenden Zeilen behalten ihre ursprüngliche Reihenfolge. Der Text wird dabei nicht sortiert.</p>

<p>Wenn zum Beispiel aus dem folgenden Text doppelte Zeilen entfernt werden:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>Das Ergebnis lautet:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabezeile</th><th scope="col">Ergebnis</th><th scope="col">Beschreibung</th></tr>
		<tr><td><code>apple</code> (1. Mal)</td><td>Beibehalten</td><td>Dies ist das erste Vorkommen der Zeile.</td></tr>
		<tr><td><code>banana</code> (1. Mal)</td><td>Beibehalten</td><td>Dies ist das erste Vorkommen der Zeile.</td></tr>
		<tr><td><code>apple</code> (2. Mal)</td><td>Gelöscht</td><td>Dieselbe Zeile ist bereits aufgetreten.</td></tr>
		<tr><td><code>orange</code> (1. Mal)</td><td>Beibehalten</td><td>Dies ist das erste Vorkommen der Zeile.</td></tr>
		<tr><td><code>banana</code> (2. Mal)</td><td>Gelöscht</td><td>Dieselbe Zeile ist bereits aufgetreten.</td></tr>
	</table>
</div>

<p>Für die Duplikaterkennung wird jeweils die gesamte Zeile verglichen. Unterschiede bei Groß- und Kleinschreibung, Leerzeichen am Anfang oder Ende sowie Vollbreiten- und Halbbreitenzeichen gelten als unterschiedlicher Text.</p>
