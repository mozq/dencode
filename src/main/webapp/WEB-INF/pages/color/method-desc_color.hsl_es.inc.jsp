<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca del color HSL</h3>
<p>El color HSL es un modelo de color que representa los colores mediante tono, saturación y luminosidad. A diferencia de RGB, que especifica directamente la intensidad de la luz roja, verde y azul, HSL separa el tono, la viveza y el brillo, por lo que resulta útil para ajustar colores y trabajar con CSS.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Tono</td><td>Representa el tono como un ángulo. El rojo está cerca de 0deg, el verde de 120deg y el azul de 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Saturación</td><td>Representa la viveza del color. 0% es acromático y 100% es el color más vivo.</td><td><code>50%</code></td></tr>
			<tr><td>L: Luminosidad</td><td>Representa el brillo del color. 0% es negro, 50% es un brillo normal y 100% es blanco.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por ejemplo, los colores principales como el rojo se pueden representar así.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Notación HSL</th><th>Notación RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanco</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Negro</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente se puede representar como <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>Como entrada, se puede usar la notación separada por espacios <code>hsl(0deg 100% 50%)</code>, así como la notación tradicional separada por comas <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Tratamiento del tono, la saturación y la luminosidad</h4>
<p>El tono se trata como un ángulo; los valores mayores que 360deg o negativos se normalizan al rango de 0deg a 360deg. Por ejemplo, <code>hsl(360deg 100% 50%)</code> se trata como el mismo color que <code>hsl(0deg 100% 50%)</code>, y <code>hsl(-120deg 100% 50%)</code> como el mismo color que <code>hsl(240deg 100% 50%)</code>.</p>

<p>La saturación y la luminosidad se tratan en el rango de 0% a 100%. Si la saturación es 0%, el color se vuelve un gris acromático sin importar el tono. Si la luminosidad es 0%, el color es negro; si es 100%, es blanco.</p>

<h4>Diferencia entre HSL y RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> especifica directamente los componentes rojo, verde y azul, por lo que está cerca de la visualización en pantalla y los datos de imagen. HSL separa tono, saturación y luminosidad, lo que facilita operaciones como “hacerlo más claro manteniendo el mismo tono” o “reducir solo la saturación”.</p>

<p>Sin embargo, HSL no es un espacio de color perceptualmente uniforme. Cuando se desea manejar mejor el brillo visual o las diferencias de color, se pueden usar espacios de color como <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> u <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
