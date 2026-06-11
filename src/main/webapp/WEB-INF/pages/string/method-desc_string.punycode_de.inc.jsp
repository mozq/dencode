<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Punycode IDN</h3>
<p>Punycode ist ein Kodierungsverfahren, mit dem Unicode-Zeichenfolgen nur mit ASCII-Zeichen dargestellt werden können. Es wird vor allem verwendet, um internationalisierte Domainnamen (IDN), etwa mit japanischen, chinesischen, koreanischen oder akzentuierten lateinischen Zeichen, in eine DNS-kompatible ASCII-Form umzuwandeln.</p>
<p>Bei einem internationalisierten Domainnamen wird jedes Label des Domainnamens mit Punycode umgewandelt. Dem umgewandelten Label wird <code>xn--</code> vorangestellt. Diese ASCII-Form heißt A-label; die ursprüngliche Unicode-Form heißt U-label.</p>

<p>Wenn beispielsweise „ドメイン.com“ in Punycode IDN umgewandelt wird, ergibt sich Folgendes.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>In diesem Beispiel besteht die Top-Level-Domain <code>com</code> nur aus ASCII-Zeichen und bleibt unverändert. Nur das Label „ドメイン“ wird zu <code>xn--eckwd4c7c</code> umgewandelt.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode-Form</th><th scope="col">Punycode-IDN-Form</th><th scope="col">Beschreibung</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Domainname mit japanischen Zeichen.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Mehrere Labels werden jeweils einzeln umgewandelt.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Beispiel mit einem akzentuierten lateinischen Zeichen.</td></tr>
	</table>
</div>

<p>Punycode IDN ist ein anderes Verfahren als URL-Encoding. URL-Encoding stellt Zeichen innerhalb einer URL als Bytefolgen wie <code>%E3%81%82</code> dar. Punycode IDN wandelt dagegen Labels eines Domainnamens in ASCII-Labels um, die mit <code>xn--</code> beginnen.</p>

<h4>Umwandlung je Domain-Label</h4>
<p>Ein Domainname besteht aus Labels, die durch Punkte (<code>.</code>) getrennt sind. Bei Punycode IDN wird nicht der gesamte Domainname als eine Zeichenfolge umgewandelt; jedes Label wird einzeln verarbeitet.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Label</th><th scope="col">Umwandlungsergebnis</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Daher wird <code>例え.テスト</code> zu <code>xn--r8jz45g.xn--zckzah</code>.</p>
