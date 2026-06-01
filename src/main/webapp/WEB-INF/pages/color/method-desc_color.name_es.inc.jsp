<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca de los nombres de color</h3>
<p>Los nombres de color son una forma de representar colores usando colores con nombre definidos en CSS. Como se pueden especificar con palabras clave como <code>red</code>, <code>blue</code> y <code>orange</code>, los colores comunes en HTML y CSS pueden escribirse de forma legible.</p>

<p>Por ejemplo, los colores principales como el rojo se pueden representar así.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Nombre de color</th><th>Notación RGB</th><th>Notación hexadecimal</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lima</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Azul</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Blanco</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Negro</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Naranja</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Transparente</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> es un nombre de color especial que representa negro transparente.</p>

<p>Los nombres de color, excepto <code>transparent</code>, no contienen información de transparencia. En DenCode, cuando un color con transparencia puede representarse como color con nombre, se muestra con la sintaxis de color relativa de CSS. Por ejemplo, <code>red</code> semitransparente se representa como <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Diferencia entre nombres de color y RGB</h4>
<p>Los nombres de color representan colores comunes con palabras clave legibles. En cambio, <a href="${dc:h(basePath)}/color/rgb">RGB</a> especifica valores de rojo, verde y azul, y permite representar muchos más colores numéricamente. Los nombres de color se usan a menudo cuando se prioriza la legibilidad en CSS o HTML; la notación RGB se usa para especificaciones detalladas o conversiones de color.</p>
