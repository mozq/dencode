<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Punycode IDN</h3>
<p>Punycode is een coderingsmethode waarmee Unicode-tekenreeksen uitsluitend met ASCII-tekens kunnen worden weergegeven. Het wordt vooral gebruikt om geïnternationaliseerde domeinnamen (IDN), bijvoorbeeld met Japanse, Chinese, Koreaanse of geaccentueerde Latijnse tekens, om te zetten naar een ASCII-vorm die DNS kan verwerken.</p>
<p>Bij een geïnternationaliseerde domeinnaam wordt elk label van de domeinnaam met Punycode omgezet. Voor het omgezette label wordt <code>xn--</code> geplaatst. Deze ASCII-vorm heet een A-label; de oorspronkelijke Unicode-vorm heet een U-label.</p>

<p>Als “ドメイン.com” bijvoorbeeld naar Punycode IDN wordt omgezet, ziet het resultaat er als volgt uit.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>In dit voorbeeld bestaat het top-level domein <code>com</code> alleen uit ASCII-tekens en blijft het ongewijzigd. Alleen het label “ドメイン” wordt omgezet naar <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode-vorm</th><th scope="col">Punycode IDN-vorm</th><th scope="col">Beschrijving</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Domeinnaam met Japanse tekens.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Elk label wordt afzonderlijk omgezet.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Voorbeeld met een geaccentueerd Latijns teken.</td></tr>
	</table>
</div>

<p>Punycode IDN is iets anders dan URL-codering. URL-codering geeft tekens in een URL weer als bytevolgorden zoals <code>%E3%81%82</code>. Punycode IDN zet labels van een domeinnaam om naar ASCII-labels die beginnen met <code>xn--</code>.</p>

<h4>Conversie per domeinlabel</h4>
<p>Een domeinnaam bestaat uit labels die door punten (<code>.</code>) worden gescheiden. Bij Punycode IDN wordt niet de volledige domeinnaam als één tekenreeks omgezet; elk label wordt afzonderlijk verwerkt.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Label</th><th scope="col">Conversieresultaat</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Daarom wordt <code>例え.テスト</code> omgezet naar <code>xn--r8jz45g.xn--zckzah</code>.</p>
