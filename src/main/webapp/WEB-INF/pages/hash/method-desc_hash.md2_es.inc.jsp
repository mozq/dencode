<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca de MD2</h3>
<p>MD2 es una función hash que genera un hash de 128 bits a partir de datos de cualquier longitud. Es un algoritmo antiguo y no se recomienda para usos criptográficos actuales.</p>
<p>En DenCode, el texto introducido se trata como una secuencia de bytes con la codificación de caracteres seleccionada, y el hash MD2 se muestra como 32 dígitos hexadecimales.</p>

<p>Por ejemplo, el hash MD2 de "Hello, world!" es el siguiente.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Características del hash</h4>
<p>MD2 siempre genera el mismo hash para la misma entrada. Si la entrada cambia aunque sea un poco, el hash resultante cambia de forma significativa.</p>
<p>Una función hash es una función unidireccional, por lo que no se pueden restaurar los datos de entrada originales a partir del hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Hash MD2</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 puede usarse para comprobaciones de compatibilidad, pero para usos nuevos conviene considerar una función hash más reciente, como <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
