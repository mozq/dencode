<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca del color Oklch</h3>
<p>El color Oklch es un espacio de color perceptual que representa los colores mediante luminosidad, croma y tono. Usa la misma idea que Oklab, pero expresa el color con croma y un ángulo, por lo que resulta más fácil ajustar por separado la intensidad y el tono.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidad</td><td>Representa el brillo del color. 0% es negro y 100% es blanco.</td><td><code>60%</code></td></tr>
			<tr><td>C: Croma</td><td>Representa la intensidad del color. 0 es acromático y los valores mayores producen colores más vivos.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Tono</td><td>Representa el tono como un ángulo.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por ejemplo, los colores principales como el rojo se pueden representar así.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Oklch notación</th><th>Notación RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanco</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Negro</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente se puede representar como <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Tratamiento de la luminosidad, el croma y el tono</h4>
<p>La luminosidad se trata en el rango de 0% a 100%. Los valores inferiores a 0% se tratan como 0%, y los superiores a 100% se limitan a 100%.</p>

<p>El croma se trata como un valor de 0 o mayor. Un croma negativo se trata como 0. Si el croma es 0, el color es acromático y el tono se trata como 0deg.</p>

<p>El tono se trata como un ángulo; los valores mayores que 360deg o negativos se normalizan al rango de 0deg a 360deg. Por ejemplo, <code>oklch(62.8% 0.2577 389.23deg)</code> se trata como el mismo color que <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Diferencia entre Oklch y Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> representa los colores con las coordenadas rectangulares <code>a</code> y <code>b</code>. Oklch convierte el color de Oklab en croma y tono. Por eso, Oklch puede resultar más intuitivo cuando se desea ajustar el croma o el tono manteniendo la misma luminosidad.</p>

<h4>Diferencia entre Oklch y LCH</h4>
<p>Oklch está diseñado para que los cambios visuales sean más uniformes que en <a href="${dc:h(basePath)}/color/lch">LCH</a> al cambiar el tono o el croma. Como la luminosidad, el croma y el tono se ajustan para relacionarse mejor con la percepción humana, cambiar los valores en la misma cantidad tiende a producir cambios visuales más regulares. Por ejemplo, al girar el tono con la misma luminosidad o al modificar solo el croma, es menos probable que el brillo o el tono se desplacen de forma poco natural.</p>
