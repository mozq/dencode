<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca de la codificación URL</h3>
<p>La codificación URL es un método para representar texto de forma segura dentro de una URL. Su nombre formal es "codificación porcentual" (percent-encoding), definida por la especificación de URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Los caracteres con significado especial en una URL, o los caracteres que no conviene usar directamente, se convierten en un signo de porcentaje (%) seguido de dos dígitos hexadecimales.</p>
<p>Por ejemplo, un espacio se representa como <code>%20</code>, un signo de exclamación (<code>!</code>) como <code>%21</code> y el carácter japonés "あ" como <code>%E3%81%82</code> en UTF-8.</p>

<p>La codificación URL convierte primero el texto en bytes con la codificación de caracteres seleccionada y representa cada byte como <code>%HH</code> cuando es necesario. En DenCode, los caracteres no reservados de RFC 3986, es decir, los caracteres alfanuméricos y <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, no se convierten; los demás caracteres se codifican porcentualmente.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Carácter</th><th scope="col">Después de codificar</th><th scope="col">Descripción</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Los caracteres alfanuméricos no están reservados, por lo que no se convierten.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> y <code>~</code> no están reservados, por lo que no se convierten.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Este carácter separa segmentos de ruta en una URL; codifíquelo si forma parte de un valor.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Carácter reservado que inicia la cadena de consulta.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Carácter reservado que separa parámetros de consulta.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Carácter reservado que separa el nombre y el valor de un parámetro.</td></tr>
		<tr><td>Espacio</td><td><code>%20</code></td><td>En la codificación porcentual de URL se codifica como <code>%20</code>; en <code>application/x-www-form-urlencoded</code>, como <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Codifique <code>+</code> cuando el signo más en sí sea el valor.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>En UTF-8 se codifica como una secuencia de tres bytes.</td></tr>
	</table>
</div>

<p>Por ejemplo, al codificar "Hello, world!" como URL se obtiene lo siguiente.</p>

<pre>Hello%2C%20world%21</pre>

<p>En este ejemplo, la coma (<code>,</code>) se convierte en <code>%2C</code>, el espacio en <code>%20</code> y el signo de exclamación (<code>!</code>) en <code>%21</code>.</p>


<h4>Representación del espacio en application/x-www-form-urlencoded</h4>
<p>En <code>application/x-www-form-urlencoded</code>, usado al enviar formularios HTML, los espacios pueden representarse como <code>+</code>. Este formato está definido en el <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> como codificación para el envío de formularios.</p>
<p>DenCode permite elegir si los espacios se generan como <code>%20</code> o como <code>+</code> al codificar.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Formato</th><th scope="col">Resultado para "Hello world"</th><th scope="col">Uso</th></tr>
		<tr><td>Codificación porcentual</td><td><code>Hello%20world</code></td><td>Formato general adecuado para URLs.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Usado en cadenas de consulta y cuerpos de solicitud de formularios HTML.</td></tr>
	</table>
</div>
