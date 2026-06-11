<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O MD5</h3>
<p>MD5 to funkcja skrótu, która generuje 128-bitową wartość skrótu z danych o dowolnej długości. Była szeroko używana, ale ze względu na słabą odporność na kolizje nie jest zalecana do obecnych zastosowań kryptograficznych.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość skrótu MD5 jest wyświetlana jako 32 cyfry szesnastkowe.</p>

<p>Na przykład wartość skrótu MD5 dla "Hello, world!" wygląda następująco.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Cechy wartości skrótu</h4>
<p>MD5 zawsze generuje tę samą wartość skrótu z tego samego wejścia. Jeśli wejście zmieni się choćby nieznacznie, wynikowa wartość skrótu zmieni się znacznie.</p>
<p>Funkcja skrótu jest funkcją jednokierunkową, dlatego z wartości skrótu nie można odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">Wartość skrótu MD5</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 może pojawiać się przy porównywaniu starych sum kontrolnych, ale w zastosowaniach wymagających bezpieczeństwa, takich jak wykrywanie zmian lub podpisy, warto rozważyć <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> albo nowszą funkcję skrótu.</p>
