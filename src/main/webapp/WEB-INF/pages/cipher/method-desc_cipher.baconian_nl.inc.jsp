<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over het Bacon-cijfer</h3>
<p>Het Bacon-cijfer is een substitutiecijfer waarbij elke letter wordt weergegeven met een binair patroon van vijf tekens, zoals A/B.</p>

<pre>
Platte tekst: HELLO, WORLD!
Cijfertekst : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Het oorspronkelijke Bacon-cijfer gebruikt een alfabet van 24 letters, waarbij I/J en U/V als dezelfde letters worden behandeld. Een tweede versie geeft elke letter van A tot Z een eigen code. DenCode ondersteunt beide alfabetten.</p>

<h4>Oorspronkelijk alfabet van 24 letters</h4>
<p>In het oorspronkelijke alfabet delen I en J één code, en U en V ook. Bij het coderen wordt J als I omgezet en V als U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Tweede versie: alfabet van 26 letters</h4>
<p>In de tweede versie heeft elke letter van A tot Z een eigen Bacon-code, inclusief I, J, U en V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Tekens die niet door het gekozen alfabet worden ondersteund, blijven ongewijzigd.</p>

<h4>Gebruik als steganografie</h4>
<p>Het Bacon-cijfer werd in 1605 bedacht door Francis Bacon. Rechtstreeks geschreven als A/B-groepen van vijf tekens werkt het als een substitutiecijfer. Door de A/B-keuzes te verbergen in de vormgeving van een andere tekst, kan het ook worden gebruikt als verbergcijfer of als vorm van steganografie.</p>
<p>Voor steganografisch gebruik wordt het geheime bericht eerst omgezet in een A/B-reeks en wordt een dektekst voorbereid die lang genoeg is om die reeks te dragen. Elke letter in de dektekst wordt vervolgens in een van twee lettertypen geschreven: het ene staat voor A en het andere voor B. De tekst blijft eruitzien als een gewone zin, maar de verschillen in lettertype onthullen, gelezen in groepen van vijf, het verborgen bericht. Bacon beschreef ook een biliteraal alfabet voor handschrift, met twee alternatieve vormen voor hoofdletters en kleine letters.</p>

<p>Bijvoorbeeld: het versleutelen van “HI” levert “AABBB ABAAA” op. Verborgen in de dektekst “Hello world” ziet dat er zo uit:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>In dit voorbeeld worden normale letters als A gelezen en vette letters als B. De zichtbare tekst is “Hello world”, maar alleen de lettertypeverschillen geven “AABBB ABAAA”, wat in groepen van vijf wordt gedecodeerd als “HI”.</p>
