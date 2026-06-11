<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over dubbele regels verwijderen</h3>
<p>Deze functie verwijdert dubbele regels uit tekst met meerdere regels. Als dezelfde regel vaker voorkomt, blijft alleen de eerste keer staan en worden latere voorkomens verwijderd.</p>
<p>De overgebleven regels behouden hun oorspronkelijke volgorde. De tekst wordt niet gesorteerd.</p>

<p>Als bijvoorbeeld dubbele regels uit de volgende tekst worden verwijderd:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>Het resultaat is:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoerregel</th><th scope="col">Resultaat</th><th scope="col">Beschrijving</th></tr>
		<tr><td><code>apple</code> (1e keer)</td><td>Behouden</td><td>Dit is de eerste keer dat de regel voorkomt.</td></tr>
		<tr><td><code>banana</code> (1e keer)</td><td>Behouden</td><td>Dit is de eerste keer dat de regel voorkomt.</td></tr>
		<tr><td><code>apple</code> (2e keer)</td><td>Verwijderd</td><td>Dezelfde regel is al eerder voorgekomen.</td></tr>
		<tr><td><code>orange</code> (1e keer)</td><td>Behouden</td><td>Dit is de eerste keer dat de regel voorkomt.</td></tr>
		<tr><td><code>banana</code> (2e keer)</td><td>Verwijderd</td><td>Dezelfde regel is al eerder voorgekomen.</td></tr>
	</table>
</div>

<p>Voor het herkennen van dubbele regels wordt de volledige regel vergeleken. Verschillen tussen hoofdletters en kleine letters, spaties aan het begin of einde en tekens met volle of halve breedte gelden als andere tekst.</p>
