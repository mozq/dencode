<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca del color Oklab</h3>
<p>El color Oklab es un espacio de color perceptual que representa los colores mediante luminosidad y dos componentes de color. Como Lab, separa brillo y color, pero como modelo más reciente está diseñado para que los cambios se acerquen más a la apariencia visual.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidad</td><td>Representa el brillo del color. 0% es negro y 100% es blanco.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Representa la dirección de verde a rojo. Los valores negativos tienden al verde y los positivos al rojo.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Representa la dirección de azul a amarillo. Los valores negativos tienden al azul y los positivos al amarillo.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por ejemplo, los colores principales como el rojo se pueden representar así.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Oklab notación</th><th>Notación RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanco</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Negro</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente se puede representar como <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Tratamiento de la luminosidad, a y b</h4>
<p>La luminosidad se trata en el rango de 0% a 100%. Los valores inferiores a 0% se tratan como 0%, y los superiores a 100% se limitan a 100%.</p>

<p><code>a</code> y <code>b</code> se especifican como números positivos o negativos. Sus valores no se recortan a un rango fijo y se tratan como los componentes Oklab indicados.</p>

<h4>Diferencia entre Oklab y Oklch</h4>
<p>Oklab representa los colores con las coordenadas rectangulares <code>a</code> y <code>b</code>. <a href="${dc:h(basePath)}/color/oklch">Oklch</a> usa la misma idea perceptual que Oklab, pero expresa el color con croma y tono.</p>

<h4>Diferencia entre Oklab y Lab</h4>
<p>Oklab está diseñado para que los cambios visuales sean más uniformes que en <a href="${dc:h(basePath)}/color/lab">Lab</a> al cambiar el tono o el croma. Como la luminosidad y los componentes de color se ajustan para relacionarse mejor con la percepción humana, cambiar los valores en la misma cantidad tiende a producir cambios visuales más regulares. Por ejemplo, al interpolar colores para crear un degradado o al modificar solo el croma, es menos probable que el brillo o el tono se desplacen de forma poco natural.</p>
