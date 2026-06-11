<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca de SHA-512</h3>
<p>SHA-512 es una función hash criptográfica que genera un hash de 512 bits a partir de datos de cualquier longitud. Forma parte de la familia SHA-2 y produce un hash más largo que <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>En DenCode, el texto introducido se trata como una secuencia de bytes con la codificación de caracteres seleccionada, y el hash SHA-512 se muestra como 128 dígitos hexadecimales.</p>

<p>Por ejemplo, el hash SHA-512 de "Hello, world!" es el siguiente.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Características del hash</h4>
<p>SHA-512 siempre genera el mismo hash para la misma entrada. Si la entrada cambia aunque sea un poco, el hash resultante cambia de forma significativa.</p>
<p>Una función hash es una función unidireccional, por lo que no se pueden restaurar los datos de entrada originales a partir del hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Hash SHA-512</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
