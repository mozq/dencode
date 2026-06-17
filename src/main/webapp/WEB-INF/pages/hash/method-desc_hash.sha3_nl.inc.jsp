<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over SHA-3</h3>
<p>SHA-3 is een cryptografische hashfunctie die uit gegevens van willekeurige lengte een hashwaarde met vaste lengte genereert. SHA-3 bevat vier functies met verschillende hashwaardelengtes: SHA3-224, SHA3-256, SHA3-384 en SHA3-512.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de SHA-3 hashwaarde wordt hexadecimaal weergegeven.</p>

<p>De SHA3-256 hashwaarde van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Kenmerken van de hashwaarde</h4>
<p>SHA-3 genereert uit dezelfde invoer altijd dezelfde hashwaarde. Als de invoer zelfs minimaal verandert, verandert de uitvoerhashwaarde aanzienlijk.</p>
<p>Een hashfunctie is een eenrichtingsfunctie; de oorspronkelijke invoergegevens kunnen daarom niet uit de hashwaarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">SHA3-256 hashwaarde</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Verschil met SHA-2</h4>
<p>SHA-2 is gebaseerd op een Merkle-Damgård-constructie, uit dezelfde brede ontwerpfamilie als MD5 en SHA-1. SHA-3 standaardiseert Keccak en gebruikt in plaats daarvan een sponsconstructie. Daarom leveren SHA-256 en SHA3-256 allebei een hashwaarde van 256 bits op, maar de geproduceerde waarden verschillen.</p>
