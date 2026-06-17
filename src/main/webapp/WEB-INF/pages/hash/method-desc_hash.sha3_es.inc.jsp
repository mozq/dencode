<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca de SHA-3</h3>
<p>SHA-3 es una función hash criptográfica que genera un hash de longitud fija a partir de datos de cualquier longitud. SHA-3 incluye cuatro funciones con distintas longitudes de hash: SHA3-224, SHA3-256, SHA3-384 y SHA3-512.</p>
<p>En DenCode, el texto introducido se trata como una secuencia de bytes con la codificación de caracteres seleccionada, y el hash SHA-3 se muestra en hexadecimal.</p>

<p>Por ejemplo, el hash SHA3-256 de "Hello, world!" es el siguiente.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Características del hash</h4>
<p>SHA-3 siempre genera el mismo hash para la misma entrada. Si la entrada cambia aunque sea un poco, el hash resultante cambia de forma significativa.</p>
<p>Una función hash es una función unidireccional, por lo que no se pueden restaurar los datos de entrada originales a partir del hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Hash SHA3-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Diferencia con SHA-2</h4>
<p>SHA-2 se basa en una construcción Merkle-Damgård, del mismo tipo general que MD5 y SHA-1. SHA-3 estandariza Keccak y utiliza una construcción de esponja. Por eso, SHA-256 y SHA3-256 generan hashes de 256 bits, pero los valores resultantes son diferentes.</p>
