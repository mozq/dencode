<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über die Bacon-Chiffre</h3>
<p>Die Bacon-Chiffre ist eine Substitutionschiffre, bei der jeder Buchstabe als fünfstellige binäre Folge, zum Beispiel A/B, dargestellt wird.</p>

<pre>
Klartext    : HELLO, WORLD!
Geheimtext  : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Die originale Bacon-Chiffre verwendet ein Alphabet mit 24 Buchstaben, in dem I/J und U/V jeweils gleich behandelt werden. In einer zweiten Version erhält jeder Buchstabe von A bis Z einen eigenen Code. DenCode unterstützt beide Alphabete.</p>

<h4>Originales Alphabet mit 24 Buchstaben</h4>
<p>Im originalen Alphabet teilen sich I und J einen Code, ebenso U und V. Beim Codieren wird J wie I und V wie U behandelt.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Zweite Version: Alphabet mit 26 Buchstaben</h4>
<p>In der zweiten Version erhält jeder Buchstabe von A bis Z einen eigenen Bacon-Code, einschließlich I, J, U und V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Zeichen, die im gewählten Alphabet nicht unterstützt werden, bleiben unverändert.</p>

<h4>Verwendung als Steganografie</h4>
<p>Die Bacon-Chiffre wurde 1605 von Francis Bacon entwickelt. Direkt als fünfstellige A/B-Gruppen geschrieben, funktioniert sie als Substitutionschiffre. Werden die A/B-Entscheidungen im Erscheinungsbild eines anderen Textes verborgen, kann sie auch zum Verbergen von Nachrichten oder als Form der Steganografie verwendet werden.</p>
<p>Für die steganografische Verwendung wird die geheime Nachricht zuerst in eine A/B-Folge umgewandelt. Anschließend wird ein unauffälliger Decktext vorbereitet, der lang genug ist, um diese Folge aufzunehmen. Jeder Buchstabe im Decktext wird in einer von zwei Schriftarten geschrieben: eine steht für A, die andere für B. Der Text wirkt weiterhin wie ein normaler Satz, doch die Schriftunterschiede ergeben in Fünfergruppen die versteckte Nachricht. Bacon beschrieb außerdem ein biliterales Alphabet für Handschrift mit zwei alternativen Formen von Groß- und Kleinbuchstaben.</p>

<p>Zum Beispiel ergibt die Verschlüsselung von „HI“ die Folge „AABBB ABAAA“. In den Decktext „Hello world“ eingebettet sieht das so aus:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>In diesem Beispiel werden normale Buchstaben als A und fette Buchstaben als B gelesen. Sichtbar ist der Text „Hello world“, doch nur die Schriftunterschiede ergeben „AABBB ABAAA“, was in Fünfergruppen zu „HI“ decodiert wird.</p>
