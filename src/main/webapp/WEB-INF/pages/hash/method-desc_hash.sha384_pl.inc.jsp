<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O SHA-384</h3>
<p>SHA-384 to kryptograficzna funkcja skrótu, która generuje 384-bitową wartość skrótu z danych o dowolnej długości. Należy do rodziny SHA-2 i zwraca dłuższą wartość skrótu niż <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość skrótu SHA-384 jest wyświetlana jako 96 cyfr szesnastkowych.</p>

<p>Na przykład wartość skrótu SHA-384 dla "Hello, world!" wygląda następująco.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Cechy wartości skrótu</h4>
<p>SHA-384 zawsze generuje tę samą wartość skrótu z tego samego wejścia. Jeśli wejście zmieni się choćby nieznacznie, wynikowa wartość skrótu zmieni się znacznie.</p>
<p>Funkcja skrótu jest funkcją jednokierunkową, dlatego z wartości skrótu nie można odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">Wartość skrótu SHA-384</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
