<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca del color CMYK</h3>
<p>El color CMYK es un modelo de color que representa los colores con cuatro componentes: cian, magenta, amarillo y negro (key plate). Se usa principalmente en impresión y autoedición, y se basa en la mezcla sustractiva, donde los colores se producen superponiendo tintas.</p>

<p>En CMYK, cada componente se expresa en el rango de 0% a 100%. En general, <code>C</code>, <code>M</code> y <code>Y</code> representan el tono de color, mientras que <code>K</code> representa la cantidad de negro. Si todos los componentes son 0%, el color es blanco; si <code>K</code> es 100%, el color se aproxima al negro.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Color</th><th>Notación CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Rojo</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Cian</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Amarillo</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Blanco</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Negro</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparencia, añada un valor alfa. Por ejemplo, el rojo semitransparente se puede representar como <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Perfiles de color</h4>
<p>DenCode permite elegir entre varios perfiles de color. Los perfiles compatibles se muestran a continuación.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Color CMYK</caption>
		<thead>
			<tr><th>Perfil de color</th><th>Ejemplo de notación CMYK</th><th>Características</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Conversión simple entre RGB y CMYK. No depende de condiciones de impresión ni de perfiles ICC específicos.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Perfil de color CMYK que aproxima U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Conversión CMYK que utiliza el perfil ICC SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Conversión CMYK que utiliza el perfil ICC GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Conversión CMYK que utiliza el perfil ICC FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Perfil de color CMYK que aproxima FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Perfil de color CMYK que aproxima FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>Los colores CMYK con un “perfil ICC” o un “perfil de color aproximado” se representan con el formato de espacio de color personalizado de CSS <code>color(--profile C% M% Y% K%)</code>. Para usarlos en CSS real, especifique el perfil ICC correspondiente con <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Los perfiles de color aproximados calculan colores CMYK aproximados a partir de Characterization data publicados. Por ello, incluso si se usa un perfil ICC similar con <code>@color-profile</code> en CSS, el color mostrado puede variar ligeramente.</p>

<h4>Diferencia entre CMYK y RGB</h4>
<p>CMYK es un modelo de color sustractivo para tintas de impresión. En cambio, <a href="${dc:h(basePath)}/color/rgb">RGB</a> es un modelo aditivo para la luz, como la de las pantallas. Incluso con colores que se ven iguales, los valores de componentes CMYK y RGB pueden ser muy diferentes.</p>
