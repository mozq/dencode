<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre SHA-1</h3>
<p>SHA-1 é uma função hash criptográfica que gera um valor hash de 160 bits a partir de dados de qualquer tamanho. Já foi amplamente usado, mas hoje apresenta problemas de resistência a colisões e não é recomendado para novos usos criptográficos.</p>
<p>No DenCode, o texto inserido é tratado como uma sequência de bytes na codificação de caracteres selecionada, e o valor hash SHA-1 é exibido com 40 dígitos hexadecimais.</p>

<p>Por exemplo, o valor hash SHA-1 de "Hello, world!" é o seguinte.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Características do valor hash</h4>
<p>SHA-1 sempre gera o mesmo valor hash para a mesma entrada. Se a entrada mudar ainda que ligeiramente, o valor hash resultante muda de forma significativa.</p>
<p>Uma função hash é uma função unidirecional, portanto os dados de entrada originais não podem ser restaurados a partir do valor hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Valor hash SHA-1</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Pode ser usado por compatibilidade com sistemas existentes, mas para novos usos considere <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> ou uma função hash mais forte.</p>
