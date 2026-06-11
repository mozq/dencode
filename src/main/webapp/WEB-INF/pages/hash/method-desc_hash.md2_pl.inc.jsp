<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O MD2</h3>
<p>MD2 to funkcja skrótu, która generuje 128-bitową wartość skrótu z danych o dowolnej długości. Jest to stary algorytm i nie jest zalecany do obecnych zastosowań kryptograficznych.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość skrótu MD2 jest wyświetlana jako 32 cyfry szesnastkowe.</p>

<p>Na przykład wartość skrótu MD2 dla "Hello, world!" wygląda następująco.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Cechy wartości skrótu</h4>
<p>MD2 zawsze generuje tę samą wartość skrótu z tego samego wejścia. Jeśli wejście zmieni się choćby nieznacznie, wynikowa wartość skrótu zmieni się znacznie.</p>
<p>Funkcja skrótu jest funkcją jednokierunkową, dlatego z wartości skrótu nie można odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">Wartość skrótu MD2</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 może być używane do sprawdzania kompatybilności, ale w nowych zastosowaniach warto rozważyć nowszą funkcję hashującą, taką jak <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
