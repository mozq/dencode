<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Base64</h3>
<p>Base64 to kodowanie binarne na tekst, używające 7-bitowych drukowalnych znaków ASCII. Jest stosowane głównie w e-mailach do przesyłania danych 8-bitowych przez kanały 7-bitowe.</p>
<p>Base64 dzieli dane na grupy 6-bitowe i reprezentuje je za pomocą znaków alfanumerycznych (A-Z, a-z, 0-9) oraz symboli (+, /). Konwertuje bloki po 4 znaki; jeśli blok jest niepełny (ostatnia grupa ma mniej niż 4 znaki), dopełnia się go znakiem równości (=).</p>
<p>Ponadto RFC 1421 (PEM: Privacy-Enhanced Mail) wymaga łamania wierszy co 64 znaki, a RFC 2045 (MIME) - co 76 znaków.</p>

<p>Tabela konwersji znaków Base64:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Dane 6-bitowe</th><th>Znak Base64</th></tr>
		<tr><td>000000</td><td>A</td></tr>
		<tr><td>000001</td><td>B</td></tr>
		<tr><td>000010</td><td>C</td></tr>
		<tr><td>000011</td><td>D</td></tr>
		<tr><td>000100</td><td>E</td></tr>
		<tr><td>000101</td><td>F</td></tr>
		<tr><td>000110</td><td>G</td></tr>
		<tr><td>000111</td><td>H</td></tr>
		<tr><td>001000</td><td>I</td></tr>
		<tr><td>001001</td><td>J</td></tr>
		<tr><td>001010</td><td>K</td></tr>
		<tr><td>001011</td><td>L</td></tr>
		<tr><td>001100</td><td>M</td></tr>
		<tr><td>001101</td><td>N</td></tr>
		<tr><td>001110</td><td>O</td></tr>
		<tr><td>001111</td><td>P</td></tr>
		<tr><td>010000</td><td>Q</td></tr>
		<tr><td>010001</td><td>R</td></tr>
		<tr><td>010010</td><td>S</td></tr>
		<tr><td>010011</td><td>T</td></tr>
		<tr><td>010100</td><td>U</td></tr>
		<tr><td>010101</td><td>V</td></tr>
		<tr><td>010110</td><td>W</td></tr>
		<tr><td>010111</td><td>X</td></tr>
		<tr><td>011000</td><td>Y</td></tr>
		<tr><td>011001</td><td>Z</td></tr>
		<tr><td>011010</td><td>a</td></tr>
		<tr><td>011011</td><td>b</td></tr>
		<tr><td>011100</td><td>c</td></tr>
		<tr><td>011101</td><td>d</td></tr>
		<tr><td>011110</td><td>e</td></tr>
		<tr><td>011111</td><td>f</td></tr>
		<tr><td>100000</td><td>g</td></tr>
		<tr><td>100001</td><td>h</td></tr>
		<tr><td>100010</td><td>i</td></tr>
		<tr><td>100011</td><td>j</td></tr>
		<tr><td>100100</td><td>k</td></tr>
		<tr><td>100101</td><td>l</td></tr>
		<tr><td>100110</td><td>m</td></tr>
		<tr><td>100111</td><td>n</td></tr>
		<tr><td>101000</td><td>o</td></tr>
		<tr><td>101001</td><td>p</td></tr>
		<tr><td>101010</td><td>q</td></tr>
		<tr><td>101011</td><td>r</td></tr>
		<tr><td>101100</td><td>s</td></tr>
		<tr><td>101101</td><td>t</td></tr>
		<tr><td>101110</td><td>u</td></tr>
		<tr><td>101111</td><td>v</td></tr>
		<tr><td>110000</td><td>w</td></tr>
		<tr><td>110001</td><td>x</td></tr>
		<tr><td>110010</td><td>y</td></tr>
		<tr><td>110011</td><td>z</td></tr>
		<tr><td>110100</td><td>0</td></tr>
		<tr><td>110101</td><td>1</td></tr>
		<tr><td>110110</td><td>2</td></tr>
		<tr><td>110111</td><td>3</td></tr>
		<tr><td>111000</td><td>4</td></tr>
		<tr><td>111001</td><td>5</td></tr>
		<tr><td>111010</td><td>6</td></tr>
		<tr><td>111011</td><td>7</td></tr>
		<tr><td>111100</td><td>8</td></tr>
		<tr><td>111101</td><td>9</td></tr>
		<tr><td>111110</td><td>+</td></tr>
		<tr><td>111111</td><td>/</td></tr>
	</table>
</div>

<p>Na przykład, konwersja „Hello” na Base64 wygląda następująco:</p>

<p>1. Zamiana na reprezentację binarną.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (ASCII / UTF-8)</pre>

<p>2. Podział na grupy 6-bitowe. Jeśli ostatnia grupa ma mniej niż 6 bitów, dopełnia się ją zerami.</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Konwersja na znaki przy użyciu tabeli. Bloki są tworzone po 4 znaki; jeśli blok jest niepełny, dopełnia się go znakiem „=".</p>

<pre>SGVs bG8=</pre>

<p>4. Połączenie wszystkich znaków daje wynik konwersji Base64.</p>

<pre>SGVsbG8=</pre>


<h4>Nagłówki wiadomości E-mail (MIME) – RFC 2047</h4>
<p>DenCode obsługuje dekodowanie nagłówków MIME (RFC 2047), używanych np. w tematach e-maili zawierających znaki spoza ASCII.</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>Wynik dekodowania:</p>

<pre>Subject: サンプル (Przykładowy)</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) to format tokenu, który w kompaktowy sposób reprezentuje dane JSON za pomocą kodowania Base64url. Jest szeroko stosowany do uwierzytelniania i autoryzacji w aplikacjach internetowych i jest ustandaryzowany w RFC 7519.</p>

<p>JWT składa się z trzech elementów oddzielonych kropkami (.).</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>Rola każdego elementu jest następująca.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Element</th><th>Opis</th></tr>
		<tr><td>Header</td><td>Obiekt JSON zawierający metadane, takie jak typ tokenu (typ) i algorytm podpisu (alg)</td></tr>
		<tr><td>Payload</td><td>Obiekt JSON zawierający informacje, takie jak identyfikator użytkownika i czas wygaśnięcia</td></tr>
		<tr><td>Signature</td><td>Dane podpisu używane do wykrywania manipulacji nagłówkiem i ładunkiem</td></tr>
	</table>
</div>

<p>Nagłówek i ładunek są kodowane w Base64url. Base64url zastępuje „+" znakiem „-" i „/" znakiem „_" oraz pomija wypełnienie „=" w porównaniu ze standardowym Base64 (RFC 4648). Dzięki temu można je bezpiecznie umieszczać w adresach URL i nagłówkach HTTP.</p>

<p>Na przykład dekodowanie poniższego JWT daje nagłówek i ładunek w formacie JSON.</p>

<pre>eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c</pre>

<pre>
{
  "alg": "HS256",
  "typ": "JWT"
}
{
  "sub": "1234567890",
  "name": "John Doe",
  "iat": 1516239022
}
</pre>

<p>Główne pola (oświadczenia) zawarte w nagłówku i ładunku są następujące.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Pole</th><th>Nazwa</th><th>Opis</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>Algorytm używany do podpisywania lub szyfrowania (np. HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>Typ tokenu (zwykle „JWT")</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>Typ zawartości ładunku (dla zagnieżdżonych JWT „JWT")</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>Identyfikator klucza używanego do weryfikacji podpisu</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>URL zestawu JWK używanego do weryfikacji podpisu</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>URL łańcucha certyfikatów X.509 używanego do weryfikacji podpisu</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>Odcisk palca SHA-1 certyfikatu X.509 używanego do weryfikacji podpisu</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>Pole</th><th>Nazwa</th><th>Opis</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>Wystawca tokenu</td></tr>
		<tr><td>sub</td><td>Subject</td><td>Podmiot tokenu (np. identyfikator użytkownika)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>Odbiorca tokenu</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>Czas wygaśnięcia tokenu (znacznik czasu Unix)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>Czas, przed którym token nie jest ważny (znacznik czasu Unix)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>Czas wystawienia tokenu (znacznik czasu Unix)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>Unikalny identyfikator tokenu</td></tr>
	</table>
</div>
