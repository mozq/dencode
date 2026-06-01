<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca del color RGB</h3>
<p>El color RGB es un modelo de color que representa colores combinando rojo, verde y azul como componentes de luz. Se usa ampliamente para colores en pantalla, páginas web y datos de imagen.</p>

<p>En RGB, la intensidad de cada componente se especifica con un valor numérico, normalmente un entero de 0 a 255 o un porcentaje de 0% a 100%. Si todos los componentes son 0, el color es negro; si todos son máximos, es blanco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Notación RGB</th><th>Notación hexadecimal</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Verde</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Azul</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Blanco</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Negro</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>Los colores RGB pueden escribirse en formato de función o hexadecimal. Por ejemplo, el rojo puede representarse como <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> o <code>#f00</code>.</p>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente puede representarse como <code>rgb(255 0 0 / 50%)</code> o <code>#ff000080</code>.</p>

<p>La conversión de color RGB de DenCode admite las siguientes opciones de notación.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Color RGB (hexadecimal)</caption>
		<thead>
			<tr><th>Opción de notación</th><th>Formato</th><th>Ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Color RGB</caption>
		<thead>
			<tr><th>Opción de notación</th><th>Formato</th><th>Ejemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>Número</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Porcentaje</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> no es una notación hexadecimal estándar de CSS, sino un formato ARGB usado a veces en programas y configuraciones. El <code>AA</code> inicial representa alfa, seguido de <code>RR</code>, <code>GG</code> y <code>BB</code> para rojo, verde y azul.</p>

<h4>sRGB y otros espacios de color RGB</h4>
<p>RGB representa colores con rojo, verde y azul. Sin embargo, incluso con los mismos valores RGB, el color real cambia según el espacio de color usado para interpretarlos. Los valores web comunes <code>rgb()</code> y <code>#RRGGBB</code> normalmente se tratan como sRGB.</p>

<p>CSS Color Module Level 4 también define espacios RGB con gamas distintas de sRGB, como Display P3 y ProPhoto RGB. DenCode también admite la conversión de estos espacios.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Espacio de color</th><th>Formato</th><th>Ejemplo</th><th>Características</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>El espacio RGB común para la web y CSS. Los códigos hexadecimales y <code>rgb()</code> ordinarios se tratan básicamente como sRGB. <code>color(srgb ...)</code> es un formato de CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Usa la misma gama que sRGB, pero con componentes linealizados. Se usa en cálculos y composiciones de color.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Tiene una gama más amplia que sRGB y se usa en pantallas de gama amplia y algunos móviles.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Más amplio que sRGB, a veces usado en edición fotográfica y flujos para impresión.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Espacio RGB con gama aún más amplia que Adobe RGB, usado como espacio de trabajo fotográfico.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Espacio RGB de gama muy amplia, usado en estándares UHDTV y HDR.</td></tr>
		</tbody>
	</table>
</div>

<p>Los colores de espacios RGB de gama amplia pueden no representarse con precisión en pantallas sRGB o códigos hexadecimales comunes. Al convertir a <code>#RRGGBB</code> o <code>rgb(R G B)</code>, DenCode trata los componentes fuera del rango sRGB para que encajen entre <code>0</code> y <code>255</code>. Al elegir <code>color(display-p3 ...)</code> o <code>color(a98-rgb ...)</code>, puede mostrarlos como valores del espacio elegido.</p>
