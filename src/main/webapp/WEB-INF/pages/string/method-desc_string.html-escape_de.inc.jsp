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

<h4>Optionen für HTML-Escaping</h4>
<p>DenCode ermöglicht die Auswahl des Ziels, der Verwendung benannter Zeichenreferenzen und der Notation numerischer Referenzen.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Ziel</caption>
		<tr><th scope="col">Option</th><th scope="col">Beschreibung</th><th scope="col">Beispiel für „A &lt; 😀“</th></tr>
		<tr><td>Basis</td><td>Konvertiert die fünf Zeichen <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> und <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Basis + Nicht-ASCII</td><td>Konvertiert die fünf Basiszeichen sowie Nicht-ASCII-Zeichen.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Nicht alphanumerisch</td><td>Konvertiert alle Zeichen außer ASCII-Buchstaben und Ziffern.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Alle</td><td>Konvertiert alle Zeichen.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Für die normale HTML-Anzeige wird häufig „Basis“ verwendet, da nur die notwendigen Zeichen konvertiert werden. Verwenden Sie „Alle“, wenn Sie eine Zeichenfolge als HTML-Zeichenreferenzen prüfen oder jedes Zeichen ausdrücklich als Referenz darstellen möchten.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Benannte Zeichenreferenzen</caption>
		<tr><th scope="col">Option</th><th scope="col">Beschreibung</th><th scope="col">Beispiel</th></tr>
		<tr><td>HTML5</td><td>Verwendet die in HTML5 definierten benannten Zeichenreferenzen.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Verwendet die in HTML4 definierten benannten Zeichenreferenzen.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Verwendet die fünf Referenzen <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> und <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Keine</td><td>Verwendet keine benannten Zeichenreferenzen, sondern nur numerische Referenzen.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Numerische Referenznotation</caption>
		<tr><th scope="col">Option</th><th scope="col">Beschreibung</th><th scope="col">Beispiel</th></tr>
		<tr><td>Dezimal</td><td>Verwendet numerische Referenzen in Dezimalschreibweise.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Hexadezimal klein</td><td>Verwendet hexadezimale numerische Referenzen mit Kleinbuchstaben.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Hexadezimal groß</td><td>Verwendet hexadezimale numerische Referenzen mit Großbuchstaben.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
