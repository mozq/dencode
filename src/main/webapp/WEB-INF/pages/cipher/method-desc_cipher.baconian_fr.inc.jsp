<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos du chiffre de Bacon</h3>
<p>Le chiffre de Bacon est un chiffre par substitution qui représente chaque lettre par un motif binaire de cinq signes, par exemple A/B.</p>

<pre>
Texte clair  : HELLO, WORLD!
Texte chiffré: AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Le chiffre de Bacon original utilise un alphabet de 24 lettres, où I/J et U/V sont considérés comme les mêmes lettres. Une seconde version attribue un code unique à chaque lettre de A à Z. DenCode prend en charge les deux alphabets.</p>

<h4>Alphabet original de 24 lettres</h4>
<p>Dans l’alphabet original, I et J partagent le même code, tout comme U et V. Lors du chiffrement, J est converti comme I, et V comme U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Seconde version : alphabet de 26 lettres</h4>
<p>Dans la seconde version, chaque lettre de A à Z possède son propre code baconien, y compris I, J, U et V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Les caractères non pris en charge par l’alphabet sélectionné sont conservés tels quels.</p>

<h4>Utilisation en stéganographie</h4>
<p>Le chiffre de Bacon a été conçu par Francis Bacon en 1605. Écrit directement sous forme de groupes A/B de cinq caractères, il fonctionne comme un chiffre par substitution. Lorsque les choix A/B sont cachés dans l’apparence d’un autre texte, il peut aussi servir de chiffre de dissimulation ou de forme de stéganographie.</p>
<p>Pour une utilisation stéganographique, le message secret est d’abord converti en une suite A/B, puis un texte de couverture assez long est préparé. Chaque lettre de ce texte est écrite dans l’une de deux polices : l’une représente A, l’autre B. Le texte reste lisible comme une phrase ordinaire, mais les différences de police, lues par groupes de cinq, révèlent le message caché. Bacon a également décrit un alphabet bilitère pour l’écriture manuscrite, avec deux formes alternatives pour les majuscules et les minuscules.</p>

<p>Par exemple, chiffrer « HI » donne « AABBB ABAAA ». Caché dans le texte de couverture « Hello world », cela donne :</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>Dans cet exemple, les lettres normales sont lues comme A et les lettres en gras comme B. Le texte visible est « Hello world », mais les seules différences de police donnent « AABBB ABAAA », qui se décode par groupes de cinq en « HI ».</p>
