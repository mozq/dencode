<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over SHA-512</h3>
<p>SHA-512 is een cryptografische hashfunctie die uit gegevens van willekeurige lengte een hashwaarde van 512 bits genereert. SHA-256 maakt deel uit van de SHA-2-familie en geeft een langere hashwaarde dan <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de SHA-512 hashwaarde wordt weergegeven als 128 hexadecimale cijfers.</p>

<p>De SHA-512 hashwaarde van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Kenmerken van de hashwaarde</h4>
<p>SHA-512 genereert uit dezelfde invoer altijd dezelfde hashwaarde. Als de invoer zelfs minimaal verandert, verandert de uitvoerhashwaarde aanzienlijk.</p>
<p>Een hashfunctie is een eenrichtingsfunctie; de oorspronkelijke invoergegevens kunnen daarom niet uit de hashwaarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">SHA-512 hashwaarde</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
