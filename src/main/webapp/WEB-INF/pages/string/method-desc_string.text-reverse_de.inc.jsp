<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über rückwärts geschriebenen Text</h3>
<p>Die Textumkehrung kehrt die Zeichen der eingegebenen Zeichenfolge um. Die gesamte Zeichenfolge wird vom letzten bis zum ersten Zeichen gelesen.</p>

<p>Wenn zum Beispiel „Hello, world!“ umgekehrt wird, entsteht:</p>

<pre>!dlrow ,olleH</pre>

<p>Bei mehrzeiligem Text zählen auch Zeilenumbrüche zur Zeichenfolge. Dadurch wird der gesamte Inhalt einschließlich der Reihenfolge der Zeilen umgekehrt.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">Nach Umkehrung</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Diese Konvertierung ordnet Wörter nicht bedeutungserhaltend neu an. Sie kehrt einfach die Reihenfolge der eingegebenen Zeichen um.</p>
