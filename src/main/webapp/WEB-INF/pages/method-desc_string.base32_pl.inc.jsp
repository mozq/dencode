<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Base32</h3>
<p>Base32 to kodowanie binarne na tekst, używające drukowalnych znaków ASCII.</p>
<p>Base32 dzieli dane na grupy 5-bitowe i reprezentuje je za pomocą 32 znaków (A-Z, 2-7). Konwertuje bloki po 8 znaków; jeśli ostatni blok jest niepełny, dopełnia się go znakiem równości (=).</p>

<p>Tabela konwersji Base32:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Dane 5-bitowe</th><th>Znak Base32</th></tr>
		<tr><td>00000</td><td>A</td></tr>
		<tr><td>00001</td><td>B</td></tr>
		<tr><td>00010</td><td>C</td></tr>
		<tr><td>00011</td><td>D</td></tr>
		<tr><td>00100</td><td>E</td></tr>
		<tr><td>00101</td><td>F</td></tr>
		<tr><td>00110</td><td>G</td></tr>
		<tr><td>00111</td><td>H</td></tr>
		<tr><td>01000</td><td>I</td></tr>
		<tr><td>01001</td><td>J</td></tr>
		<tr><td>01010</td><td>K</td></tr>
		<tr><td>01011</td><td>L</td></tr>
		<tr><td>01100</td><td>M</td></tr>
		<tr><td>01101</td><td>N</td></tr>
		<tr><td>01110</td><td>O</td></tr>
		<tr><td>01111</td><td>P</td></tr>
		<tr><td>10000</td><td>Q</td></tr>
		<tr><td>10001</td><td>R</td></tr>
		<tr><td>10010</td><td>S</td></tr>
		<tr><td>10011</td><td>T</td></tr>
		<tr><td>10100</td><td>U</td></tr>
		<tr><td>10101</td><td>V</td></tr>
		<tr><td>10110</td><td>W</td></tr>
		<tr><td>10111</td><td>X</td></tr>
		<tr><td>11000</td><td>Y</td></tr>
		<tr><td>11001</td><td>Z</td></tr>
		<tr><td>11010</td><td>2</td></tr>
		<tr><td>11011</td><td>3</td></tr>
		<tr><td>11100</td><td>4</td></tr>
		<tr><td>11101</td><td>5</td></tr>
		<tr><td>11110</td><td>6</td></tr>
		<tr><td>11111</td><td>7</td></tr>
	</table>
</div>

<p>Na przykład, konwersja „Hello!” na Base32 wygląda następująco:</p>

<p>1. Zamiana na reprezentację binarną.</p>

<pre>01001000 01100101 01101100 01101100 01101111 00100001  (ASCII / UTF-8)</pre>

<p>2. Podział na grupy 5-bitowe. Jeśli ostatnia grupa ma mniej niż 5 bitów, dopełnia się ją zerami.</p>

<pre>01001 00001 10010 10110 11000 11011 00011 01111 00100 00100</pre>

<p>3. Konwersja na znaki przy użyciu tabeli. Bloki są tworzone po 8 znaków; jeśli blok jest niepełny, dopełnia się go znakiem „=".</p>

<pre>JBSWY3DP EE======</pre>

<p>4. Połączenie wszystkich znaków daje wynik konwersji Base32.</p>

<pre>JBSWY3DPEE======</pre>
