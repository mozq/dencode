<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Sekwencjach Ucieczki Unicode</h3>
<p>Konwertuje ciąg znaków na sekwencje ucieczki Unicode.</p>
<p>Podstawowy format to \uXXXX, gdzie XXXX to 4-cyfrowy kod szesnastkowy znaku. Np. „あ” to „\u3042”.</p>

<p>DenCode obsługuje również inne formaty:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Przykład „ABC”</th><th scope="col">Opis / Język programowania</th></tr>
		<tr><td>\uXXXX</td><td>\u0041\u0042\u0043</td><td>Typowa sekwencja ucieczki Unicode</td></tr>
		<tr><td>\u{X}</td><td>\u{41}\u{42}\u{43}</td><td>Lua</td></tr>
		<tr><td>\x{X}</td><td>\x{41}\x{42}\x{43}</td><td>Perl</td></tr>
		<tr><td>\X</td><td>\41\42\43</td><td>CSS</td></tr>
		<tr><td>&amp;#xX;</td><td>&amp;#x41;&amp;#x42;&amp;#x43;</td><td>HTML, XML</td></tr>
		<tr><td>%uXXXX</td><td>%u0041%u0042%u0043</td><td>Percent-encoding (Niestandardowy)</td></tr>
		<tr><td>U+XXXX</td><td>U+0041 U+0042 U+0043</td><td>Standardowa notacja Unicode (rozdzielona spacjami)</td></tr>
		<tr><td>0xX</td><td>0x41 0x42 0x43</td><td>Notacja szesnastkowa (rozdzielona spacjami)</td></tr>
	</table>
</div>

<p>Niektóre formaty są wspomniane w <a href="https://www.rfc-editor.org/rfc/rfc5137" target="_blank">RFC 5137</a> jako „Best Current Practice”, ale nie ma jednego międzynarodowego standardu.</p>
<p>Format %uXXXX jest obsługiwany przez Microsoft IIS, ale jest niestandardowy. W C# metoda <a href="https://learn.microsoft.com/en-us/dotnet/api/system.web.httputility.urlencodeunicode" target="_blank">System.Web.HttpUtility.UrlEncodeUnicode</a> koduje do %u, ale jest przestarzała od .NET Framework 4.5.</p>
<p>W formacie CSS (\X), spacja po sekwencji jest traktowana jako separator i ignorowana. W formatach U+XXXX i 0xX, podczas kodowania znaki są oddzielane spacją, a przy dekodowaniu, podobnie jak w \X, pojedyncza spacja po sekwencji jest ignorowana.</p>


<h4>Eskapowanie przy użyciu nazwy Unicode</h4>

<p>Obsługiwane jest również eskapowanie przy użyciu nazwy znaku Unicode:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Przykład „A”</th><th scope="col">Opis / Język programowania</th></tr>
		<tr><td>\N{name}</td><td>\N{LATIN CAPITAL LETTER A}</td><td>C++23, Python, Perl</td></tr>
	</table>
</div>

<p>Nazwy Unicode można sprawdzić w <a href="https://unicode.org/charts/nameslist/" target="_blank">Names List Charts - Unicode</a> lub <a href="https://www.unicode.org/Public/15.0.0/ucd/NamesList.txt" target="_blank">NamesList.txt - Unicode</a>.</p>


<h4>Znaki spoza zakresu BMP (Basic Multilingual Plane)</h4>

<p>Dla znaków spoza BMP (kod powyżej U+FFFF), które nie mieszczą się w 4 cyfrach, stosuje się różne zapisy w zależności od języka:</p>
<p>Przykład dla „😀” (U+1F600):</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Przykład „😀”</th><th scope="col">Język programowania</th></tr>
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

<p>W formatach \uXXXX i %uXXXX, znaki spoza BMP są reprezentowane jako para surogatów UTF-16 (dwa kody). W pozostałych formatach pojedynczy znak jest reprezentowany przez pojedynczy kod.</p>
