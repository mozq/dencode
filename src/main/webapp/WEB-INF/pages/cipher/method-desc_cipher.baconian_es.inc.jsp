<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca del cifrado de Bacon</h3>
<p>El cifrado de Bacon es un cifrado por sustitución que representa cada letra con un patrón binario de cinco símbolos, como A/B.</p>

<pre>
Texto plano  : HELLO, WORLD!
Texto cifrado: AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>El cifrado de Bacon original usa un alfabeto de 24 letras, en el que I/J y U/V se tratan como las mismas letras. Una segunda versión asigna un código único a cada letra de la A a la Z. DenCode admite ambos alfabetos.</p>

<h4>Alfabeto original de 24 letras</h4>
<p>En el alfabeto original, I y J comparten un código, igual que U y V. Al cifrar, J se convierte como I y V se convierte como U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Segunda versión: alfabeto de 26 letras</h4>
<p>En la segunda versión, cada letra de la A a la Z tiene su propio código baconiano, incluidas I, J, U y V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Los caracteres no admitidos por el alfabeto seleccionado se conservan sin cambios.</p>

<h4>Uso como esteganografía</h4>
<p>El cifrado de Bacon fue ideado por Francis Bacon en 1605. Escrito directamente como grupos A/B de cinco caracteres, funciona como cifrado por sustitución. Si las elecciones A/B se ocultan en la apariencia de otro texto, también puede usarse como cifrado de ocultación o como forma de esteganografía.</p>
<p>Para usarlo como esteganografía, primero se convierte el mensaje secreto en una secuencia A/B y se prepara un texto de cobertura lo bastante largo para contenerla. Cada letra del texto de cobertura se escribe con una de dos tipografías: una se lee como A y la otra como B. El texto sigue pareciendo una frase normal, pero al leer las diferencias tipográficas en grupos de cinco se revela el mensaje oculto. Bacon también describió un alfabeto biliteral para escritura manual, con dos formas alternativas de mayúsculas y minúsculas.</p>

<p>Por ejemplo, al cifrar “HI” se obtiene “AABBB ABAAA”. Oculto en el texto de cobertura “Hello world”, se ve así:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>En este ejemplo, las letras normales se leen como A y las letras en negrita como B. El texto visible es “Hello world”, pero al leer solo las diferencias tipográficas se obtiene “AABBB ABAAA”, que se decodifica en grupos de cinco como “HI”.</p>
