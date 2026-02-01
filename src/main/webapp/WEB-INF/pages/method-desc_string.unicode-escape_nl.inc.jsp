<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Unicode escape-reeksen</h3>
<p>Converteert een string naar het formaat van Unicode escape-reeksen.</p>
<p>Een Unicode escape-reeks converteert 1 teken naar een formaat van een 4-cijferig hexadecimaal codepunt zoals \uXXXX. Bijvoorbeeld, "あ" wordt "\u3042".</p>

<p>DenCode ondersteunt naast het \uXXXX formaat ook de volgende notatieformaten.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Formaat</th><th scope="col">Conversieresultaat van "ABC"</th><th scope="col">Beschrijving / Programmeertaal</th></tr>
		<tr><td>\uXXXX</td><td>\u0041\u0042\u0043</td><td>Algemene Unicode escape-reeks</td></tr>
		<tr><td>\u{X}</td><td>\u{41}\u{42}\u{43}</td><td>Lua</td></tr>
		<tr><td>\x{X}</td><td>\x{41}\x{42}\x{43}</td><td>Perl</td></tr>
		<tr><td>\X</td><td>\41\42\43</td><td>CSS</td></tr>
		<tr><td>&amp;#xX;</td><td>&amp;#x41;&amp;#x42;&amp;#x43;</td><td>HTML, XML</td></tr>
		<tr><td>%uXXXX</td><td>%u0041%u0042%u0043</td><td>Procent-codering (niet-standaard)</td></tr>
		<tr><td>U+XXXX</td><td>U+0041 U+0042 U+0043</td><td>Unicode standaardnotatie voor codepunten (gescheiden door spaties)</td></tr>
		<tr><td>0xX</td><td>0x41 0x42 0x43</td><td>Hexadecimale notatie voor codepunten (gescheiden door spaties)</td></tr>
	</table>
</div>

<p>Sommige van de bovenstaande formaten worden genoemd als BEST CURRENT PRACTICE in <a href="https://www.rfc-editor.org/rfc/rfc5137" target="_blank">RFC 5137 (ASCII Escaping of Unicode Characters)</a>, maar er is geen internationale standaard en dergelijke.</p>
<p>Het %uXXXX formaat wordt ondersteund door Microsoft IIS, maar is een niet-standaard formaat. C#'s <a href="https://learn.microsoft.com/en-us/dotnet/api/system.web.httputility.urlencodeunicode" target="_blank">System.Web.HttpUtility.UrlEncodeUnicode</a> kan coderen naar %u formaat, maar deze methode is verouderd sinds .NET Framework 4.5.</p>
<p>Let er bij het \X formaat op dat volgens de <a href="https://www.w3.org/International/questions/qa-escapes" target="_blank">CSS-specificatie</a> bij het decoderen één volgende spatie van halve breedte wordt behandeld als scheidingsteken en wordt genegeerd. Bij U+XXXX en 0xX formaten wordt bij het coderen elk teken gescheiden door een spatie van halve breedte, en bij het decoderen wordt één volgende aaneengesloten spatie van halve breedte genegeerd, net als bij het \X formaat.</p>


<h4>Escapen met Unicode-namen</h4>

<p>Als Unicode escape-reeks wordt ook escapen met Unicode-namen ondersteund.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Formaat</th><th scope="col">Conversieresultaat van "A"</th><th scope="col">Beschrijving / Programmeertaal</th></tr>
		<tr><td>\N{name}</td><td>\N{LATIN CAPITAL LETTER A}</td><td>C++23, Python, Perl</td></tr>
	</table>
</div>

<p>Unicode-namen kunnen worden bevestigd op <a href="https://unicode.org/charts/nameslist/" target="_blank">Names List Charts - Unicode</a> of <a href="https://www.unicode.org/Public/15.0.0/ucd/NamesList.txt" target="_blank">NamesList.txt - Unicode</a>.</p>


<h4>Tekens buiten het Unicode BMP-bereik in Unicode escape-reeksen</h4>

<p>Voor niet-BMP Unicode-tekens past het codepunt niet in 4 cijfers, dus worden ze voor elke programmeertaal weergegeven in de volgende notatieformaten.</p>
<p>Bijvoorbeeld, het resultaat van het converteren van "😀"(U+1F600) is als volgt:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Formaat</th><th scope="col">Conversieresultaat van "😀"(U+1F600)</th><th scope="col">Programmeertaal</th></tr>
		<tr><td>\uXXXX</td><td>\uD83D\uDE00</td><td>Java, Kotlin, Scala</td></tr>
		<tr><td>\u{X}</td><td>\u{1F600}</td><td>C++23, Rust, Swift, JavaScript, PHP, Ruby, Dart, Lua</td></tr>
		<tr><td>\U00XXXXXX</td><td>\U0001F600</td><td>C, C++, Objective-C, C#, Go, Python, R</td></tr>
		<tr><td>\x{X}</td><td>\x{1F600}</td><td>Perl</td></tr>
		<tr><td>\X</td><td>\1F600</td><td>CSS</td></tr>
		<tr><td>&amp;#xX;</td><td>&amp;#x1F600;</td><td>HTML, XML</td></tr>
		<tr><td>%uXXXX</td><td>%uD83D%uDE00</td><td>-</td></tr>
		<tr><td>U+XXXX</td><td>U+1F600</td><td>-</td></tr>
		<tr><td>0xX</td><td>0x1F600</td><td>-</td></tr>
		<tr><td>\N{name}</td><td>\N{GRINNING FACE}</td><td>C++23, Python, Perl</td></tr>
	</table>
</div>

<p>In de formaten \uXXXX en %uXXXX worden niet-BMP tekens weergegeven als twee code-eenheden als een UTF-16 surrogaatpaar. In andere formaten wordt 1 teken weergegeven met 1 codepunt.</p>
