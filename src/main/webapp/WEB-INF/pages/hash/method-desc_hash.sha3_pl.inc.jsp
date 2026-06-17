<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O SHA-3</h3>
<p>SHA-3 to kryptograficzna funkcja skrótu, która generuje wartość skrótu o stałej długości z danych o dowolnej długości. SHA-3 obejmuje cztery funkcje o różnych długościach wartości skrótu: SHA3-224, SHA3-256, SHA3-384 i SHA3-512.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość skrótu SHA-3 jest wyświetlana szesnastkowo.</p>

<p>Na przykład wartość skrótu SHA3-256 dla "Hello, world!" wygląda następująco.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Cechy wartości skrótu</h4>
<p>SHA-3 zawsze generuje tę samą wartość skrótu z tego samego wejścia. Jeśli wejście zmieni się choćby nieznacznie, wynikowa wartość skrótu zmieni się znacznie.</p>
<p>Funkcja skrótu jest funkcją jednokierunkową, dlatego z wartości skrótu nie można odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">Wartość skrótu SHA3-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Różnica względem SHA-2</h4>
<p>SHA-2 opiera się na konstrukcji Merkle-Damgårda, należącej do tej samej ogólnej rodziny co MD5 i SHA-1. SHA-3 standaryzuje Keccak i używa zamiast tego konstrukcji gąbki. Dlatego SHA-256 i SHA3-256 zwracają wartości skrótu o długości 256 bitów, ale wygenerowane wartości są różne.</p>
