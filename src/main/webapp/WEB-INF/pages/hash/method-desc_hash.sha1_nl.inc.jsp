<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over SHA-1</h3>
<p>SHA-1 is een cryptografische hashfunctie die uit gegevens van willekeurige lengte een hashwaarde van 160 bits genereert. Het werd vroeger veel gebruikt, maar door zwakke botsingsbestendigheid wordt het niet aanbevolen voor nieuw cryptografisch gebruik.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de SHA-1 hashwaarde wordt weergegeven als 40 hexadecimale cijfers.</p>

<p>De SHA-1 hashwaarde van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Kenmerken van de hashwaarde</h4>
<p>SHA-1 genereert uit dezelfde invoer altijd dezelfde hashwaarde. Als de invoer zelfs minimaal verandert, verandert de uitvoerhashwaarde aanzienlijk.</p>
<p>Een hashfunctie is een eenrichtingsfunctie; de oorspronkelijke invoergegevens kunnen daarom niet uit de hashwaarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">SHA-1 hashwaarde</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Het kan worden gebruikt voor compatibiliteit met bestaande systemen, maar overweeg voor nieuw gebruik <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> of een sterkere hashfunctie.</p>
