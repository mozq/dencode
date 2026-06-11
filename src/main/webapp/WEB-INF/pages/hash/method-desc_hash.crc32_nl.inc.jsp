<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over CRC32</h3>
<p>CRC32 is een methode voor foutdetectie die uit gegevens van willekeurige lengte een controlewaarde van 32 bits genereert. Het wordt gebruikt bij bestandsoverdracht, gecomprimeerde formaten en vergelijkbare situaties om te controleren of gegevens beschadigd zijn.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de CRC32-waarde wordt hexadecimaal weergegeven.</p>

<p>De CRC32 van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>ebe6c6e6</pre>

<h4>Kenmerken van CRC32</h4>
<p>CRC32 is geschikt om toevallige gegevensbeschadiging te detecteren. Omdat het geen cryptografische hashfunctie is, is het niet geschikt voor toepassingen die bescherming tegen manipulatie vereisen.</p>
<p>CRC32 genereert uit dezelfde invoer altijd dezelfde waarde. Wanneer de invoer verandert, verandert ook de uitvoerwaarde. De oorspronkelijke invoergegevens kunnen echter niet uit de CRC32-waarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
