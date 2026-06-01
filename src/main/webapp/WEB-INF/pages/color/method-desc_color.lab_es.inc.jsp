<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca del color Lab</h3>
<p>El color Lab es un espacio de color que representa los colores mediante la luminosidad, un eje de verde a rojo y un eje de azul a amarillo. A diferencia de RGB, que especifica directamente los componentes rojo, verde y azul de una pantalla, Lab separa el brillo y el color de una forma más cercana a la visión humana.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidad</td><td>Representa el brillo del color. 0% es negro y 100% es blanco.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Representa la dirección de verde a rojo. Los valores negativos tienden al verde y los positivos al rojo.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Representa la dirección de azul a amarillo. Los valores negativos tienden al azul y los positivos al amarillo.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por ejemplo, los colores principales como el rojo se pueden representar así.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Lab notación</th><th>Notación RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanco</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Negro</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente se puede representar como <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Tratamiento de la luminosidad, a y b</h4>
<p>La luminosidad se trata en el rango de 0% a 100%. Los valores inferiores a 0% se tratan como 0%, y los superiores a 100% se limitan a 100%.</p>

<p><code>a</code> y <code>b</code> se especifican como números positivos o negativos. Sus valores no se recortan a un rango fijo y se tratan como los componentes Lab indicados.</p>

<h4>Diferencia entre Lab y LCH</h4>
<p>Lab representa los colores con las coordenadas rectangulares <code>a</code> y <code>b</code>. <a href="${dc:h(basePath)}/color/lch">LCH</a> usa la misma idea perceptual que Lab, pero expresa el color con croma y tono.</p>
