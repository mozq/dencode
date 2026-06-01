<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca del color HWB</h3>
<p>El color HWB es un modelo de color que representa los colores con tres componentes: matiz, blancura y negrura. El matiz especifica el tono base, mientras que la blancura y la negrura indican cuánto blanco y negro se mezclan, por lo que resulta intuitivo aclarar, oscurecer o acercar un color al gris.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Matiz</td><td>Representa el tono como un ángulo. El rojo está cerca de 0deg, el verde de 120deg y el azul de 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Blancura</td><td>Representa la cantidad de blanco mezclada en el color. Cuanto mayor es el valor, más blanquecino se vuelve el color.</td><td><code>20%</code></td></tr>
			<tr><td>B: Negrura</td><td>Representa la cantidad de negro mezclada en el color. Cuanto mayor es el valor, más oscuro se vuelve el color.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por ejemplo, los colores principales como el rojo se pueden representar así.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Notación HWB</th><th>Notación RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanco</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Negro</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente se puede representar como <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Tratamiento del matiz, la blancura y la negrura</h4>
<p>El matiz se trata como un ángulo, y los valores mayores que 360deg o negativos se normalizan al rango de 0deg a 360deg. Por ejemplo, <code>hwb(360deg 0% 0%)</code> se trata como el mismo color que <code>hwb(0deg 0% 0%)</code>, y <code>hwb(-120deg 0% 0%)</code> como el mismo color que <code>hwb(240deg 0% 0%)</code>.</p>

<p>La blancura y la negrura se tratan en el rango de 0% a 100%. Cuanto mayor es la blancura, más se acerca el color al blanco; cuanto mayor es la negrura, más se acerca al negro. Si la suma de blancura y negrura es 100% o más, el color se trata como un color grisáceo independientemente del matiz.</p>

<h4>Diferencia entre HWB y HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> ajusta el color mediante saturación y luminosidad, por lo que es adecuado para especificar viveza y brillo. HWB ajusta el color mediante la cantidad de blanco y negro mezclados, lo que facilita describir operaciones como “hacerlo más blanco manteniendo el mismo matiz” o “añadir negro para oscurecerlo”.</p>

<p>Sin embargo, HWB tampoco es un espacio de color perceptualmente uniforme. Cuando se desea manejar con más facilidad el brillo visual o las diferencias de color, pueden usarse espacios de color como <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> y <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
