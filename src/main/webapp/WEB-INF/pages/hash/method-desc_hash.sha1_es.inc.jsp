<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca de SHA-1</h3>
<p>SHA-1 es una función hash criptográfica que genera un hash de 160 bits a partir de datos de cualquier longitud. Antes se usaba ampliamente, pero hoy tiene problemas de resistencia a colisiones y no se recomienda para nuevos usos criptográficos.</p>
<p>En DenCode, el texto introducido se trata como una secuencia de bytes con la codificación de caracteres seleccionada, y el hash SHA-1 se muestra como 40 dígitos hexadecimales.</p>

<p>Por ejemplo, el hash SHA-1 de "Hello, world!" es el siguiente.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Características del hash</h4>
<p>SHA-1 siempre genera el mismo hash para la misma entrada. Si la entrada cambia aunque sea un poco, el hash resultante cambia de forma significativa.</p>
<p>Una función hash es una función unidireccional, por lo que no se pueden restaurar los datos de entrada originales a partir del hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Hash SHA-1</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Puede usarse por compatibilidad con sistemas existentes, pero para usos nuevos conviene considerar <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> o una función hash más fuerte.</p>
