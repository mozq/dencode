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

<h4>HTML-escape-opties</h4>
<p>DenCode laat u het doel, het gebruik van benoemde tekenreferenties en de notatie voor numerieke referenties kiezen.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Doel</caption>
		<tr><th scope="col">Optie</th><th scope="col">Beschrijving</th><th scope="col">Voorbeeld voor “A &lt; 😀”</th></tr>
		<tr><td>Basis</td><td>Zet de vijf tekens <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> en <code>'</code> om.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Basis + niet-ASCII</td><td>Zet de vijf basistekens en niet-ASCII-tekens om.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Niet-alfanumeriek</td><td>Zet tekens om die geen ASCII-letters of cijfers zijn.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Alles</td><td>Zet alle tekens om.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Voor normale HTML-weergave wordt vaak “Basis” gebruikt, omdat alleen de noodzakelijke tekens worden omgezet. Gebruik “Alles” wanneer u een tekenreeks als HTML-tekenreferenties wilt controleren of elk teken expliciet als referentie wilt weergeven.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Benoemde tekenreferenties</caption>
		<tr><th scope="col">Optie</th><th scope="col">Beschrijving</th><th scope="col">Voorbeeld</th></tr>
		<tr><td>HTML5</td><td>Gebruikt de benoemde tekenreferenties die door HTML5 zijn gedefinieerd.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Gebruikt de benoemde tekenreferenties die door HTML4 zijn gedefinieerd.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Gebruikt de vijf referenties <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> en <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Geen</td><td>Gebruikt geen benoemde tekenreferenties; alleen numerieke referenties worden gebruikt.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Notatie voor numerieke referenties</caption>
		<tr><th scope="col">Optie</th><th scope="col">Beschrijving</th><th scope="col">Voorbeeld</th></tr>
		<tr><td>Decimaal</td><td>Gebruikt decimale numerieke referenties.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Hexadecimaal kleine letters</td><td>Gebruikt hexadecimale numerieke referenties met kleine letters.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Hexadecimaal hoofdletters</td><td>Gebruikt hexadecimale numerieke referenties met hoofdletters.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
