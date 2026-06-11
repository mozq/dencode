<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O SHA-1</h3>
<p>SHA-1 to kryptograficzna funkcja skrótu, która generuje 160-bitową wartość skrótu z danych o dowolnej długości. Dawniej była szeroko używana, ale obecnie ma problemy z odpornością na kolizje i nie jest zalecana do nowych zastosowań kryptograficznych.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość skrótu SHA-1 jest wyświetlana jako 40 cyfr szesnastkowych.</p>

<p>Na przykład wartość skrótu SHA-1 dla "Hello, world!" wygląda następująco.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Cechy wartości skrótu</h4>
<p>SHA-1 zawsze generuje tę samą wartość skrótu z tego samego wejścia. Jeśli wejście zmieni się choćby nieznacznie, wynikowa wartość skrótu zmieni się znacznie.</p>
<p>Funkcja skrótu jest funkcją jednokierunkową, dlatego z wartości skrótu nie można odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">Wartość skrótu SHA-1</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Może być używane dla kompatybilności z istniejącymi systemami, ale w nowych zastosowaniach warto rozważyć <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> albo silniejszą funkcję hashującą.</p>
