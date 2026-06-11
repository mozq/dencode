<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre MD2</h3>
<p>MD2 é uma função hash que gera um valor hash de 128 bits a partir de dados de qualquer tamanho. É um algoritmo antigo e não é recomendado para usos criptográficos atuais.</p>
<p>No DenCode, o texto inserido é tratado como uma sequência de bytes na codificação de caracteres selecionada, e o valor hash MD2 é exibido com 32 dígitos hexadecimais.</p>

<p>Por exemplo, o valor hash MD2 de "Hello, world!" é o seguinte.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Características do valor hash</h4>
<p>MD2 sempre gera o mesmo valor hash para a mesma entrada. Se a entrada mudar ainda que ligeiramente, o valor hash resultante muda de forma significativa.</p>
<p>Uma função hash é uma função unidirecional, portanto os dados de entrada originais não podem ser restaurados a partir do valor hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Valor hash MD2</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 pode ser usado em verificações de compatibilidade, mas para novos usos considere uma função hash mais recente, como <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
