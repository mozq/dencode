<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über HTML-Escape</h3>
<p>HTML-Escape wandelt Zeichen, die in HTML eine besondere Bedeutung haben, in Zeichenreferenzen um. So kann eine Zeichenfolge sicher als HTML-Text angezeigt werden. Zum Beispiel werden <code>&lt;</code> und <code>&gt;</code>, die als Tags interpretiert werden können, als <code>&amp;lt;</code> und <code>&amp;gt;</code> geschrieben.</p>
<p>Durch HTML-Escaping wird verhindert, dass eingegebener Text als HTML-Tag oder Attribut interpretiert wird. Stattdessen erscheint er unverändert als Text auf dem Bildschirm.</p>

<p>Wenn beispielsweise „&lt;p&gt;Hello, world!&lt;/p&gt;“ mit HTML-Escape umgewandelt wird, entsteht Folgendes.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Zeichen</th><th scope="col">Nach HTML-Escape</th><th scope="col">Beschreibung</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Kann als Beginn eines HTML-Tags interpretiert werden.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Kann als Ende eines HTML-Tags interpretiert werden.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Kann als Beginn einer Zeichenreferenz interpretiert werden.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Hat eine besondere Bedeutung, wenn ein Attributwert in doppelte Anführungszeichen eingeschlossen ist.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Hat eine besondere Bedeutung, wenn ein Attributwert in einfache Anführungszeichen eingeschlossen ist.</td></tr>
	</table>
</div>

<h4>Basis-Escape und vollständiges Escape</h4>
<p>DenCode zeigt bei HTML-Escape zwei Ergebnisse an: „Basis“ und „Vollständig“.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Typ</th><th scope="col">Beschreibung</th><th scope="col">Beispiel für „A &lt; あ“</th></tr>
		<tr><td>HTML-Escape (Basis)</td><td>Wandelt die fünf Zeichen <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> und <code>'</code> um.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML-Escape (Vollständig)</td><td>Verwendet benannte Zeichenreferenzen, sofern vorhanden, und ansonsten dezimale numerische Zeichenreferenzen.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Für die normale HTML-Anzeige wird meistens das Basis-Escaping verwendet, das nur die notwendigen Zeichen umwandelt. Das vollständige Escape ist nützlich, wenn eine Zeichenfolge als HTML-Zeichenreferenzen geprüft oder jedes Zeichen ausdrücklich als Referenz dargestellt werden soll.</p>

<h4>Unescape</h4>
<p>HTML-Unescape wandelt HTML-Zeichenreferenzen wieder in die ursprünglichen Zeichen zurück. DenCode kann benannte Zeichenreferenzen wie <code>&amp;lt;</code> und <code>&amp;amp;</code>, dezimale numerische Zeichenreferenzen wie <code>&amp;#12354;</code> sowie hexadezimale numerische Zeichenreferenzen wie <code>&amp;#x3042;</code> dekodieren.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML-Zeichenreferenz</th><th scope="col">Nach Unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
