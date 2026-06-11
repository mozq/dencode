<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre la eliminación de líneas duplicadas</h3>
<p>Esta función elimina las líneas repetidas de un texto de varias líneas. Si una misma línea aparece más de una vez, se conserva la primera aparición y se eliminan las posteriores.</p>
<p>Las líneas restantes mantienen su orden original. No se realiza ninguna ordenación.</p>

<p>Por ejemplo, si se eliminan las líneas duplicadas del siguiente texto:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>El resultado es:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Línea de entrada</th><th scope="col">Resultado</th><th scope="col">Descripción</th></tr>
		<tr><td><code>apple</code> (1.ª vez)</td><td>Conservada</td><td>Es la primera aparición de la línea.</td></tr>
		<tr><td><code>banana</code> (1.ª vez)</td><td>Conservada</td><td>Es la primera aparición de la línea.</td></tr>
		<tr><td><code>apple</code> (2.ª vez)</td><td>Eliminada</td><td>Esta línea ya ha aparecido.</td></tr>
		<tr><td><code>orange</code> (1.ª vez)</td><td>Conservada</td><td>Es la primera aparición de la línea.</td></tr>
		<tr><td><code>banana</code> (2.ª vez)</td><td>Eliminada</td><td>Esta línea ya ha aparecido.</td></tr>
	</table>
</div>

<p>La detección de duplicados compara la línea completa. Las diferencias entre mayúsculas y minúsculas, los espacios al principio o al final, y los caracteres de ancho completo o medio ancho se consideran texto diferente.</p>
