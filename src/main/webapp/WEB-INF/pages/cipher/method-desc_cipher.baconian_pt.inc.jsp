<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre a cifra de Bacon</h3>
<p>A cifra de Bacon é uma cifra de substituição que representa cada letra com um padrão binário de cinco símbolos, como A/B.</p>

<pre>
Texto claro  : HELLO, WORLD!
Texto cifrado: AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>A cifra de Bacon original usa um alfabeto de 24 letras, em que I/J e U/V são tratados como as mesmas letras. Uma segunda versão atribui um código único a cada letra de A a Z. DenCode oferece suporte aos dois alfabetos.</p>

<h4>Alfabeto original de 24 letras</h4>
<p>No alfabeto original, I e J compartilham um código, assim como U e V. Ao codificar, J é convertido como I, e V como U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Segunda versão: alfabeto de 26 letras</h4>
<p>Na segunda versão, cada letra de A a Z tem seu próprio código baconiano, incluindo I, J, U e V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Caracteres não suportados pelo alfabeto selecionado são mantidos como estão.</p>

<h4>Uso como esteganografia</h4>
<p>A cifra de Bacon foi criada por Francis Bacon em 1605. Escrita diretamente como grupos A/B de cinco caracteres, funciona como cifra de substituição. Quando as escolhas A/B são escondidas na aparência de outro texto, também pode ser usada como cifra de ocultação ou como forma de esteganografia.</p>
<p>Para uso esteganográfico, a mensagem secreta é primeiro convertida em uma sequência A/B, e um texto de cobertura longo o suficiente para carregá-la é preparado. Cada letra do texto de cobertura é então escrita em uma de duas fontes: uma representa A e a outra representa B. O texto continua parecendo uma frase comum, mas as diferenças de fonte, lidas em grupos de cinco, revelam a mensagem oculta. Bacon também descreveu um alfabeto biliteral para escrita manual, com duas formas alternativas para maiúsculas e minúsculas.</p>

<p>Por exemplo, cifrar “HI” produz “AABBB ABAAA”. Oculto no texto de cobertura “Hello world”, fica assim:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>Neste exemplo, letras normais são lidas como A e letras em negrito como B. O texto visível é “Hello world”, mas ler apenas as diferenças de fonte produz “AABBB ABAAA”, que é decodificado em grupos de cinco como “HI”.</p>
