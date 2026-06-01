<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca del color LCH</h3>
<p>El color LCH es un espacio de color que representa los colores mediante luminosidad, croma y tono. Usa la misma idea perceptual que Lab, pero expresa el color con croma y un ángulo, por lo que resulta más fácil ajustar por separado la intensidad y el tono.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidad</td><td>Representa el brillo del color. 0% es negro y 100% es blanco.</td><td><code>60%</code></td></tr>
			<tr><td>C: Croma</td><td>Representa la intensidad del color. 0 es acromático y los valores mayores producen colores más vivos.</td><td><code>80</code></td></tr>
			<tr><td>H: Tono</td><td>Representa el tono como un ángulo.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por ejemplo, los colores principales como el rojo se pueden representar así.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>LCH notación</th><th>Notación RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanco</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Negro</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente se puede representar como <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Tratamiento de la luminosidad, el croma y el tono</h4>
<p>La luminosidad se trata en el rango de 0% a 100%. Los valores inferiores a 0% se tratan como 0%, y los superiores a 100% se limitan a 100%.</p>

<p>El croma se trata como un valor de 0 o mayor. Un croma negativo se trata como 0. Si el croma es 0, el color es acromático y el tono se trata como 0deg.</p>

<p>El tono se trata como un ángulo; los valores mayores que 360deg o negativos se normalizan al rango de 0deg a 360deg. Por ejemplo, <code>lch(54.29% 106.8372 400.86deg)</code> se trata como el mismo color que <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Diferencia entre LCH y Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> representa los colores con las coordenadas rectangulares <code>a</code> y <code>b</code>. LCH convierte el color en croma y tono. Por eso, LCH puede resultar más intuitivo cuando se desea ajustar el croma o el tono manteniendo la misma luminosidad.</p>
