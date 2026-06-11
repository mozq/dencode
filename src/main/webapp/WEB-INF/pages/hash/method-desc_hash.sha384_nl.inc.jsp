<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over SHA-384</h3>
<p>SHA-384 is een cryptografische hashfunctie die uit gegevens van willekeurige lengte een hashwaarde van 384 bits genereert. SHA-256 maakt deel uit van de SHA-2-familie en geeft een langere hashwaarde dan <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de SHA-384 hashwaarde wordt weergegeven als 96 hexadecimale cijfers.</p>

<p>De SHA-384 hashwaarde van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Kenmerken van de hashwaarde</h4>
<p>SHA-384 genereert uit dezelfde invoer altijd dezelfde hashwaarde. Als de invoer zelfs minimaal verandert, verandert de uitvoerhashwaarde aanzienlijk.</p>
<p>Een hashfunctie is een eenrichtingsfunctie; de oorspronkelijke invoergegevens kunnen daarom niet uit de hashwaarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">SHA-384 hashwaarde</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
