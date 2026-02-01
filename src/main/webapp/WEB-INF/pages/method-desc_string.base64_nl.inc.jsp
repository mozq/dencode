<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Base64</h3>
<p>Base64 is een coderingsmethode die gebruikmaakt van 7-bit ASCII-tekens. Het wordt voornamelijk gebruikt in e-mail om 8-bit gegevens over te dragen via een 7-bit gegevenspad.</p>
<p>In Base64 worden gegevens in groepen van 6 bits verdeeld en weergegeven door ze om te zetten in alfanumerieke tekens (A-Z, a-z, 0-9) en symbolen (+, /). Conversie vindt plaats per 4 tekens, en als het einde minder dan 4 tekens is, wordt dit aangevuld met het is-gelijk-teken (=).</p>
<p>Bovendien specificeert RFC 1421 (PEM: Privacy-Enhanced Mail) een regeleinde elke 64 tekens, en RFC 2045 (MIME) elke 76 tekens.</p>

<p>De conversietabel naar Base64-tekens is als volgt.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>6-bits data</th><th>Base64-teken</th></tr>
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

<p>Bijvoorbeeld, het resultaat van het converteren van "Hello" met Base64 is als volgt:</p>

<p>1. Converteer naar binaire weergave.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (In het geval van US-ASCII / UTF-8)</pre>

<p>2. Verdeel in groepen van 6 bits. Als de laatste groep minder dan 6 bits is, vul dan aan met "0".</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Converteer naar tekens met behulp van de conversietabel. Converteer elke 4 tekens, en vul aan met "=" als het minder dan 4 tekens is.</p>

<pre>SGVs bG8=</pre>

<p>4. Verbind alle tekens om het resultaat van de Base64-conversie te vormen.</p>

<pre>SGVsbG8=</pre>


<h4>MIME-berichtenkoptekstformaat (RFC 2047) voor e-mail</h4>
<p>DenCode ondersteunt ook het decoderen van het volgende MIME-berichtenkoptekstformaat (RFC 2047). Dit formaat wordt gebruikt wanneer het onderwerp of het adres van een e-mail niet-ASCII-tekens bevat.</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>Het resultaat na decodering is als volgt:</p>

<pre>Subject: サンプル</pre>
