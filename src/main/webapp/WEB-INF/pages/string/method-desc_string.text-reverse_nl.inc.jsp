<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over tekst omkeren</h3>
<p>Tekst omkeren keert de tekens in de ingevoerde tekenreeks om. De volledige tekenreeks wordt van het laatste teken terug naar het eerste gelezen.</p>

<p>Als "Hello, world!" bijvoorbeeld wordt omgekeerd, is het resultaat:</p>

<pre>!dlrow ,olleH</pre>

<p>Bij tekst met meerdere regels horen ook de regeleinden bij de tekenreeks. Daardoor wordt de volledige inhoud omgekeerd, inclusief de volgorde van de regels.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">Na omkering</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Deze conversie herschikt woorden niet met behoud van de betekenis van een zin. Ze keert eenvoudigweg de volgorde van de ingevoerde tekens om.</p>
