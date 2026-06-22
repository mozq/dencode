<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sul cifrario di Bacon</h3>
<p>Il cifrario di Bacon è un cifrario a sostituzione che rappresenta ogni lettera con uno schema binario di cinque simboli, come A/B.</p>

<pre>
Testo chiaro : HELLO, WORLD!
Testo cifrato: AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Il cifrario di Bacon originale usa un alfabeto di 24 lettere, in cui I/J e U/V sono trattate come le stesse lettere. Una seconda versione assegna un codice univoco a ogni lettera dalla A alla Z. DenCode supporta entrambi gli alfabeti.</p>

<h4>Alfabeto originale di 24 lettere</h4>
<p>Nell’alfabeto originale, I e J condividono lo stesso codice, così come U e V. Durante la codifica, J viene convertita come I e V come U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Seconda versione: alfabeto di 26 lettere</h4>
<p>Nella seconda versione, ogni lettera dalla A alla Z ha il proprio codice baconiano, comprese I, J, U e V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>I caratteri non supportati dall’alfabeto selezionato vengono mantenuti invariati.</p>

<h4>Uso come steganografia</h4>
<p>Il cifrario di Bacon fu ideato da Francis Bacon nel 1605. Scritto direttamente come gruppi A/B di cinque caratteri, funziona come cifrario a sostituzione. Se le scelte A/B sono nascoste nell’aspetto di un altro testo, può essere usato anche come cifrario di occultamento o come forma di steganografia.</p>
<p>Per l’uso steganografico, il messaggio segreto viene prima convertito in una sequenza A/B, poi si prepara un testo di copertura abbastanza lungo da contenerla. Ogni lettera del testo di copertura viene scritta con uno di due caratteri tipografici: uno si legge come A e l’altro come B. Il testo appare ancora come una frase normale, ma leggendo le differenze tipografiche in gruppi di cinque si rivela il messaggio nascosto. Bacon descrisse anche un alfabeto bilitterale per la scrittura a mano, con due forme alternative per maiuscole e minuscole.</p>

<p>Per esempio, cifrando “HI” si ottiene “AABBB ABAAA”. Nascosto nel testo di copertura “Hello world”, appare così:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>In questo esempio, le lettere normali si leggono come A e quelle in grassetto come B. Il testo visibile è “Hello world”, ma leggendo solo le differenze tipografiche si ottiene “AABBB ABAAA”, che decodificato in gruppi di cinque dà “HI”.</p>
