<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O SHA-256</h3>
<p>SHA-256 to kryptograficzna funkcja skrótu, która generuje 256-bitową wartość skrótu z danych o dowolnej długości. Należy do rodziny SHA-2 i jest używana między innymi do wykrywania zmian w plikach, sprawdzania integralności danych, podpisów cyfrowych, certyfikatów i blockchainów.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość skrótu SHA-256 jest wyświetlana jako 64 cyfry szesnastkowe.</p>

<p>Na przykład wartość skrótu SHA-256 dla "Hello, world!" wygląda następująco.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Cechy wartości skrótu</h4>
<p>SHA-256 zawsze generuje tę samą wartość skrótu z tego samego wejścia. Jeśli wejście zmieni się choćby nieznacznie, wynikowa wartość skrótu zmieni się znacznie.</p>
<p>Funkcja skrótu jest funkcją jednokierunkową, dlatego z wartości skrótu nie można odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">Wartość skrótu SHA-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
