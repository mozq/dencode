<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre texto invertido</h3>
<p>O texto invertido inverte os caracteres da string inserida. A string inteira é lida do último caractere até o primeiro.</p>

<p>Por exemplo, ao inverter "Hello, world!", o resultado é:</p>

<pre>!dlrow ,olleH</pre>

<p>Em textos de várias linhas, as quebras de linha também fazem parte da string. Por isso, todo o conteúdo é invertido, incluindo a ordem das linhas.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Após a inversão</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Esta conversão não reorganiza as palavras preservando o sentido de uma frase. Ela simplesmente inverte a ordem dos caracteres inseridos.</p>
