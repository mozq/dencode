<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over MD5</h3>
<p>MD5 is een hashfunctie die uit gegevens van willekeurige lengte een hashwaarde van 128 bits genereert. Het is veel gebruikt, maar door zwakke botsingsbestendigheid wordt het niet aanbevolen voor huidig cryptografisch gebruik.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de MD5 hashwaarde wordt weergegeven als 32 hexadecimale cijfers.</p>

<p>De MD5 hashwaarde van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Kenmerken van de hashwaarde</h4>
<p>MD5 genereert uit dezelfde invoer altijd dezelfde hashwaarde. Als de invoer zelfs minimaal verandert, verandert de uitvoerhashwaarde aanzienlijk.</p>
<p>Een hashfunctie is een eenrichtingsfunctie; de oorspronkelijke invoergegevens kunnen daarom niet uit de hashwaarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">MD5 hashwaarde</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 kan voorkomen bij vergelijking met oude controlewaarden, maar voor toepassingen die veiligheid vereisen, zoals wijzigingsdetectie of handtekeningen, is <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> of een nieuwere hashfunctie geschikter.</p>
