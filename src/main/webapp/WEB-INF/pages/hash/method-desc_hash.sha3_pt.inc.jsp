<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre SHA-3</h3>
<p>SHA-3 é uma função hash criptográfica que gera um valor hash de tamanho fixo a partir de dados de qualquer tamanho. O SHA-3 inclui quatro funções com diferentes tamanhos de valor hash: SHA3-224, SHA3-256, SHA3-384 e SHA3-512.</p>
<p>No DenCode, o texto inserido é tratado como uma sequência de bytes na codificação de caracteres selecionada, e o valor hash SHA-3 é exibido em hexadecimal.</p>

<p>Por exemplo, o valor hash SHA3-256 de "Hello, world!" é o seguinte.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Características do valor hash</h4>
<p>SHA-3 sempre gera o mesmo valor hash para a mesma entrada. Se a entrada mudar ainda que ligeiramente, o valor hash resultante muda de forma significativa.</p>
<p>Uma função hash é uma função unidirecional, portanto os dados de entrada originais não podem ser restaurados a partir do valor hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Valor hash SHA3-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Diferença em relação ao SHA-2</h4>
<p>O SHA-2 se baseia em uma construção Merkle-Damgård, da mesma família geral de projetos que MD5 e SHA-1. O SHA-3 padroniza Keccak e usa uma construção esponja. Por isso, SHA-256 e SHA3-256 produzem valores hash de 256 bits, mas os valores gerados são diferentes.</p>
