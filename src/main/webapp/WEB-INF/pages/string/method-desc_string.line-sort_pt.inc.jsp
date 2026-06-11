<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre a ordenação de linhas</h3>
<p>A ordenação de linhas reorganiza um texto com várias linhas, linha por linha. Ela pode ordenar as linhas de entrada em ordem ascendente, descendente ou apenas inverter a ordem atual.</p>
<p>Nas ordens ascendente e descendente, cada linha inteira é comparada como uma string Unicode. Na ordem reversa, o texto de cada linha não é alterado; apenas a ordem das linhas é invertida de cima para baixo.</p>

<p>Por exemplo, ao ordenar o texto abaixo em ordem ascendente:</p>

<pre>
banana
apple
orange
</pre>

<p>O resultado é:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ordem</th><th scope="col">Descrição</th><th scope="col">Exemplo de conversão</th></tr>
		<tr><td>Ascendente</td><td>Ordena as linhas do menor para o maior valor de string Unicode.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Descendente</td><td>Ordena as linhas do maior para o menor valor de string Unicode.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Reverso</td><td>Inverte a ordem das linhas inseridas.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Letras maiúsculas e minúsculas, números, símbolos e caracteres não latinos são comparados como caracteres Unicode. O resultado é baseado em comparação de strings, não na ordem alfabética de uma língua natural nem no valor numérico.</p>
