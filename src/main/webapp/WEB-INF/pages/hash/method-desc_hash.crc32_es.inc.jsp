<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca de CRC32</h3>
<p>CRC32 es un método de detección de errores que genera un valor de comprobación de 32 bits a partir de datos de cualquier longitud. Se usa en transferencias de archivos, formatos comprimidos y contextos similares para comprobar si los datos se han dañado.</p>
<p>En DenCode, el texto introducido se trata como una secuencia de bytes con la codificación de caracteres seleccionada, y el valor CRC32 se muestra en hexadecimal.</p>

<p>Por ejemplo, el CRC32 de "Hello, world!" es el siguiente.</p>

<pre>ebe6c6e6</pre>

<h4>Características de CRC32</h4>
<p>CRC32 es adecuado para detectar daños accidentales en los datos. Sin embargo, no es una función hash criptográfica, por lo que no es adecuado para usos que requieren seguridad frente a modificaciones.</p>
<p>CRC32 siempre genera el mismo valor para la misma entrada. Cuando la entrada cambia, el valor resultante también cambia. Sin embargo, no se pueden restaurar los datos de entrada originales a partir del valor CRC32.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
