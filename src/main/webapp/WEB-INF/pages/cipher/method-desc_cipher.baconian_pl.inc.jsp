<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O szyfrze Bacona</h3>
<p>Szyfr Bacona to szyfr podstawieniowy, w którym każda litera jest zapisywana jako pięcioznakowy wzorzec binarny, na przykład A/B.</p>

<pre>
Tekst jawny : HELLO, WORLD!
Szyfrogram  : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Oryginalny szyfr Bacona używa alfabetu 24-literowego, w którym I/J oraz U/V są traktowane jako te same litery. Druga wersja przypisuje osobny kod każdej literze od A do Z. DenCode obsługuje oba alfabety.</p>

<h4>Oryginalny alfabet 24-literowy</h4>
<p>W oryginalnym alfabecie I i J mają ten sam kod, podobnie jak U i V. Podczas kodowania J jest traktowane jak I, a V jak U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Druga wersja: alfabet 26-literowy</h4>
<p>W drugiej wersji każda litera od A do Z ma własny kod Bacona, w tym I, J, U i V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Znaki nieobsługiwane przez wybrany alfabet pozostają bez zmian.</p>

<h4>Użycie jako steganografia</h4>
<p>Szyfr Bacona został opracowany przez Francisa Bacona w 1605 roku. Zapisany wprost jako pięcioznakowe grupy A/B działa jak szyfr podstawieniowy. Gdy wybory A/B zostaną ukryte w wyglądzie innego tekstu, może służyć także jako szyfr ukrywający lub forma steganografii.</p>
<p>Przy użyciu steganograficznym tajna wiadomość jest najpierw zamieniana na sekwencję A/B, a następnie przygotowuje się tekst przykrywkowy wystarczająco długi, aby ją pomieścić. Każda litera tego tekstu jest zapisywana jednym z dwóch krojów pisma: jeden oznacza A, drugi B. Tekst nadal wygląda jak zwykłe zdanie, ale różnice kroju pisma, czytane po pięć znaków, ujawniają ukrytą wiadomość. Bacon opisał również alfabet dwuliterowy dla pisma ręcznego, z dwiema alternatywnymi formami wielkich i małych liter.</p>

<p>Na przykład zaszyfrowanie „HI” daje „AABBB ABAAA”. Ukryte w tekście przykrywkowym „Hello world” wygląda tak:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>W tym przykładzie zwykłe litery są czytane jako A, a pogrubione jako B. Widoczny tekst to „Hello world”, ale same różnice kroju pisma dają „AABBB ABAAA”, co po zdekodowaniu w grupach po pięć znaków daje „HI”.</p>
