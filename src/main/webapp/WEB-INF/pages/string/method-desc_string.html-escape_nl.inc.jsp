<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over HTML-escape</h3>
<p>HTML-escape zet tekens die in HTML een speciale betekenis hebben om naar tekenreferenties, zodat een tekenreeks veilig als HTML-tekst kan worden weergegeven. Zo worden <code>&lt;</code> en <code>&gt;</code>, die als tags kunnen worden geïnterpreteerd, geschreven als <code>&amp;lt;</code> en <code>&amp;gt;</code>.</p>
<p>Door HTML te escapen wordt de ingevoerde tekst niet als HTML-tag of attribuut geïnterpreteerd, maar gewoon als tekst op het scherm getoond.</p>

<p>Als “&lt;p&gt;Hello, world!&lt;/p&gt;” bijvoorbeeld met HTML-escape wordt omgezet, krijg je het volgende.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Teken</th><th scope="col">Na HTML-escape</th><th scope="col">Beschrijving</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Kan worden geïnterpreteerd als het begin van een HTML-tag.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Kan worden geïnterpreteerd als het einde van een HTML-tag.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Kan worden geïnterpreteerd als het begin van een tekenreferentie.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Heeft een speciale betekenis wanneer een attribuutwaarde tussen dubbele aanhalingstekens staat.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Heeft een speciale betekenis wanneer een attribuutwaarde tussen enkele aanhalingstekens staat.</td></tr>
	</table>
</div>

<h4>Basis-escape en volledige escape</h4>
<p>DenCode toont twee resultaten voor HTML-escape: “Basis” en “Volledig”.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Type</th><th scope="col">Beschrijving</th><th scope="col">Voorbeeld voor “A &lt; あ”</th></tr>
		<tr><td>HTML-escape (Basis)</td><td>Zet de vijf tekens <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> en <code>'</code> om.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML-escape (Volledig)</td><td>Gebruikt benoemde tekenreferenties waar die bestaan, en decimale numerieke tekenreferenties voor andere tekens.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Voor normale HTML-weergave wordt meestal basis-escape gebruikt, waarbij alleen de noodzakelijke tekens worden omgezet. Volledige escape is handig wanneer je een tekenreeks als HTML-tekenreferenties wilt controleren of elk teken expliciet als referentie wilt weergeven.</p>

<h4>Unescape</h4>
<p>HTML-unescape zet HTML-tekenreferenties terug naar de oorspronkelijke tekens. DenCode kan benoemde tekenreferenties zoals <code>&amp;lt;</code> en <code>&amp;amp;</code>, decimale numerieke tekenreferenties zoals <code>&amp;#12354;</code> en hexadecimale numerieke tekenreferenties zoals <code>&amp;#x3042;</code> decoderen.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML-tekenreferentie</th><th scope="col">Na unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
