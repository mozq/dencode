<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O CRC32</h3>
<p>CRC32 to metoda wykrywania błędów, która generuje 32-bitową wartość kontrolną z danych o dowolnej długości. Jest używana przy transferze plików, w formatach skompresowanych i podobnych miejscach do sprawdzania, czy dane nie zostały uszkodzone.</p>
<p>W DenCode wprowadzony tekst jest traktowany jako sekwencja bajtów w wybranym kodowaniu znaków, a wartość CRC32 jest wyświetlana szesnastkowo.</p>

<p>Na przykład CRC32 dla "Hello, world!" wygląda następująco.</p>

<pre>ebe6c6e6</pre>

<h4>Cechy CRC32</h4>
<p>CRC32 nadaje się do wykrywania przypadkowego uszkodzenia danych. Nie jest jednak kryptograficzną funkcją hashującą, dlatego nie nadaje się do zastosowań wymagających bezpieczeństwa przed modyfikacją.</p>
<p>CRC32 zawsze generuje tę samą wartość z tego samego wejścia. Gdy wejście się zmienia, zmienia się też wynikowa wartość. Z wartości CRC32 nie można jednak odtworzyć oryginalnych danych wejściowych.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Wejście</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
