<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O SHA-512</h3>
<p>SHA-512 to kryptograficzna funkcja skrótu, która generuje 512-bitową wartość skrótu z danych o dowolnej długości. Należy do rodziny SHA-2 i zwraca dłuższą wartość skrótu niż <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość skrótu SHA-512 jest wyświetlana jako 128 cyfr szesnastkowych.</p>

<p>Na przykład wartość skrótu SHA-512 dla "Hello, world!" wygląda następująco.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Cechy wartości skrótu</h4>
<p>SHA-512 zawsze generuje tę samą wartość skrótu z tego samego wejścia. Jeśli wejście zmieni się choćby nieznacznie, wynikowa wartość skrótu zmieni się znacznie.</p>
<p>Funkcja skrótu jest funkcją jednokierunkową, dlatego z wartości skrótu nie można odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">Wartość skrótu SHA-512</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
