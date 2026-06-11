<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca de SHA-256</h3>
<p>SHA-256 es una función hash criptográfica que genera un hash de 256 bits a partir de datos de cualquier longitud. Forma parte de la familia SHA-2 y se usa para detectar modificaciones en archivos, comprobar la integridad de los datos, firmas digitales, certificados, blockchains y otros fines.</p>
<p>En DenCode, el texto introducido se trata como una secuencia de bytes con la codificación de caracteres seleccionada, y el hash SHA-256 se muestra como 64 dígitos hexadecimales.</p>

<p>Por ejemplo, el hash SHA-256 de "Hello, world!" es el siguiente.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Características del hash</h4>
<p>SHA-256 siempre genera el mismo hash para la misma entrada. Si la entrada cambia aunque sea un poco, el hash resultante cambia de forma significativa.</p>
<p>Una función hash es una función unidireccional, por lo que no se pueden restaurar los datos de entrada originales a partir del hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Hash SHA-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
