<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over SHA-256</h3>
<p>SHA-256 is een cryptografische hashfunctie die uit gegevens van willekeurige lengte een hashwaarde van 256 bits genereert. SHA-256 maakt deel uit van de SHA-2-familie en wordt gebruikt voor onder meer het detecteren van bestandswijzigingen, controle van gegevensintegriteit, digitale handtekeningen, certificaten en blockchains.</p>
<p>In DenCode wordt de ingevoerde tekst behandeld als een bytevolgorde in de gekozen tekencodering, en de SHA-256 hashwaarde wordt weergegeven als 64 hexadecimale cijfers.</p>

<p>De SHA-256 hashwaarde van "Hello, world!" is bijvoorbeeld als volgt.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Kenmerken van de hashwaarde</h4>
<p>SHA-256 genereert uit dezelfde invoer altijd dezelfde hashwaarde. Als de invoer zelfs minimaal verandert, verandert de uitvoerhashwaarde aanzienlijk.</p>
<p>Een hashfunctie is een eenrichtingsfunctie; de oorspronkelijke invoergegevens kunnen daarom niet uit de hashwaarde worden hersteld.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Invoer</th><th scope="col">SHA-256 hashwaarde</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
