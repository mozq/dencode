<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre SHA-384</h3>
<p>SHA-384 é uma função hash criptográfica que gera um valor hash de 384 bits a partir de dados de qualquer tamanho. Faz parte da família SHA-2 e produz um valor hash mais longo que <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>No DenCode, o texto inserido é tratado como uma sequência de bytes na codificação de caracteres selecionada, e o valor hash SHA-384 é exibido com 96 dígitos hexadecimais.</p>

<p>Por exemplo, o valor hash SHA-384 de "Hello, world!" é o seguinte.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Características do valor hash</h4>
<p>SHA-384 sempre gera o mesmo valor hash para a mesma entrada. Se a entrada mudar ainda que ligeiramente, o valor hash resultante muda de forma significativa.</p>
<p>Uma função hash é uma função unidirecional, portanto os dados de entrada originais não podem ser restaurados a partir do valor hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Valor hash SHA-384</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
