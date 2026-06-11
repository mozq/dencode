<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre SHA-256</h3>
<p>SHA-256 é uma função hash criptográfica que gera um valor hash de 256 bits a partir de dados de qualquer tamanho. Faz parte da família SHA-2 e é usado para detectar alterações em arquivos, verificar a integridade dos dados, assinaturas digitais, certificados, blockchains e outros fins.</p>
<p>No DenCode, o texto inserido é tratado como uma sequência de bytes na codificação de caracteres selecionada, e o valor hash SHA-256 é exibido com 64 dígitos hexadecimais.</p>

<p>Por exemplo, o valor hash SHA-256 de "Hello, world!" é o seguinte.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Características do valor hash</h4>
<p>SHA-256 sempre gera o mesmo valor hash para a mesma entrada. Se a entrada mudar ainda que ligeiramente, o valor hash resultante muda de forma significativa.</p>
<p>Uma função hash é uma função unidirecional, portanto os dados de entrada originais não podem ser restaurados a partir do valor hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Valor hash SHA-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
