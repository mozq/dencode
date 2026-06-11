<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre MD5</h3>
<p>MD5 é uma função hash que gera um valor hash de 128 bits a partir de dados de qualquer tamanho. Foi amplamente usado, mas por problemas de resistência a colisões não é recomendado para usos criptográficos atuais.</p>
<p>No DenCode, o texto inserido é tratado como uma sequência de bytes na codificação de caracteres selecionada, e o valor hash MD5 é exibido com 32 dígitos hexadecimais.</p>

<p>Por exemplo, o valor hash MD5 de "Hello, world!" é o seguinte.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Características do valor hash</h4>
<p>MD5 sempre gera o mesmo valor hash para a mesma entrada. Se a entrada mudar ainda que ligeiramente, o valor hash resultante muda de forma significativa.</p>
<p>Uma função hash é uma função unidirecional, portanto os dados de entrada originais não podem ser restaurados a partir do valor hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Valor hash MD5</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 pode aparecer na comparação com somas de verificação antigas, mas para usos que exigem segurança, como detecção de alterações ou assinaturas, considere <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> ou uma função hash mais recente.</p>
