<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre la ordenación de líneas</h3>
<p>La ordenación de líneas reorganiza un texto de varias líneas línea por línea. Puede ordenar las líneas de entrada en orden ascendente, descendente o invertir su orden actual.</p>
<p>En el orden ascendente y descendente, cada línea completa se compara como una cadena Unicode. En el orden inverso no se cambia el texto de cada línea; solo se invierte el orden de las líneas de arriba abajo.</p>

<p>Por ejemplo, si el siguiente texto se ordena de forma ascendente:</p>

<pre>
banana
apple
orange
</pre>

<p>El resultado es:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Orden</th><th scope="col">Descripción</th><th scope="col">Ejemplo de conversión</th></tr>
		<tr><td>Ascendente</td><td>Ordena las líneas de menor a mayor valor de cadena Unicode.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Descendente</td><td>Ordena las líneas de mayor a menor valor de cadena Unicode.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Inverso</td><td>Invierte el orden de las líneas de entrada.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Las mayúsculas, minúsculas, cifras, símbolos y caracteres no latinos se comparan como caracteres Unicode. Por eso el resultado se basa en una comparación de cadenas, no en el orden alfabético de una lengua natural ni en el valor numérico.</p>
