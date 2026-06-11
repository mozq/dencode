<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over MD2</h3>
<p>MD2 is een hashfunctie die uit gegevens van willekeurige lengte een hashwaarde van 128 bits genereert. Het is een oud algoritme en wordt niet aanbevolen voor huidig cryptografisch gebruik.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de MD2 hashwaarde wordt weergegeven als 32 hexadecimale cijfers.</p>

<p>De MD2 hashwaarde van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Kenmerken van de hashwaarde</h4>
<p>MD2 genereert uit dezelfde invoer altijd dezelfde hashwaarde. Als de invoer zelfs minimaal verandert, verandert de uitvoerhashwaarde aanzienlijk.</p>
<p>Een hashfunctie is een eenrichtingsfunctie; de oorspronkelijke invoergegevens kunnen daarom niet uit de hashwaarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">MD2 hashwaarde</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 kan worden gebruikt voor compatibiliteitscontroles, maar overweeg voor nieuw gebruik een nieuwere hashfunctie zoals <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
