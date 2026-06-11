<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca de MD5</h3>
<p>MD5 es una función hash que genera un hash de 128 bits a partir de datos de cualquier longitud. Se ha usado ampliamente, pero debido a problemas de resistencia a colisiones no se recomienda para usos criptográficos actuales.</p>
<p>En DenCode, el texto introducido se trata como una secuencia de bytes con la codificación de caracteres seleccionada, y el hash MD5 se muestra como 32 dígitos hexadecimales.</p>

<p>Por ejemplo, el hash MD5 de "Hello, world!" es el siguiente.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Características del hash</h4>
<p>MD5 siempre genera el mismo hash para la misma entrada. Si la entrada cambia aunque sea un poco, el hash resultante cambia de forma significativa.</p>
<p>Una función hash es una función unidireccional, por lo que no se pueden restaurar los datos de entrada originales a partir del hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Hash MD5</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 puede aparecer al comparar sumas de comprobación antiguas, pero para usos que requieren seguridad, como detección de modificaciones o firmas, conviene considerar <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> u otra función hash más reciente.</p>
