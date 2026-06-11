<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre el texto inverso</h3>
<p>El texto inverso invierte los caracteres de la cadena de entrada. Toda la cadena se lee desde el último carácter hasta el primero.</p>

<p>Por ejemplo, al invertir "Hello, world!" se obtiene:</p>

<pre>!dlrow ,olleH</pre>

<p>En un texto de varias líneas, los saltos de línea también forman parte de la cadena. Por eso se invierte todo el contenido, incluido el orden de las líneas.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">Después de la inversión</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Esta conversión no reorganiza las palabras conservando el sentido de una frase. Simplemente invierte el orden de los caracteres introducidos.</p>
