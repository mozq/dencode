<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>CRC32</h3>
<p>CRC32 ist ein Verfahren zur Fehlererkennung, das aus Daten beliebiger Länge einen 32-Bit-Prüfwert erzeugt. Es wird etwa bei Dateiübertragungen und komprimierten Formaten verwendet, um zu prüfen, ob Daten beschädigt wurden.</p>
<p>In DenCode wird der eingegebene Text als Bytefolge in der angegebenen Zeichenkodierung behandelt, und der CRC32-Wert wird hexadezimal angezeigt.</p>

<p>CRC32 von „Hello, world!“ sieht beispielsweise wie folgt aus.</p>

<pre>ebe6c6e6</pre>

<h4>Eigenschaften von CRC32</h4>
<p>CRC32 eignet sich zur Erkennung zufälliger Datenbeschädigungen. Da es jedoch keine kryptografische Hashfunktion ist, eignet es sich nicht für Zwecke, die Schutz vor Manipulation erfordern.</p>
<p>CRC32 erzeugt aus derselben Eingabe immer denselben Wert. Wenn sich die Eingabe ändert, ändert sich auch der ausgegebene Wert. Aus dem CRC32-Wert kann die ursprüngliche Eingabe jedoch nicht wiederhergestellt werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
