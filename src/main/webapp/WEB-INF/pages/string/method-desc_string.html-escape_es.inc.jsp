<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca del escape HTML</h3>
<p>El escape HTML convierte los caracteres que tienen un significado especial en HTML en referencias de caracteres, para que una cadena pueda mostrarse de forma segura como texto HTML. Por ejemplo, <code>&lt;</code> y <code>&gt;</code>, que podrían interpretarse como etiquetas, se representan como <code>&amp;lt;</code> y <code>&amp;gt;</code>.</p>
<p>Al aplicar escape HTML, el texto introducido no se interpreta como etiquetas ni atributos HTML, sino que se muestra tal cual en la pantalla.</p>

<p>Por ejemplo, al aplicar escape HTML a «&lt;p&gt;Hello, world!&lt;/p&gt;» se obtiene lo siguiente.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Carácter</th><th scope="col">Después del escape HTML</th><th scope="col">Descripción</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Puede interpretarse como el inicio de una etiqueta HTML.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Puede interpretarse como el final de una etiqueta HTML.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Puede interpretarse como el inicio de una referencia de carácter.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Tiene un significado especial cuando el valor de un atributo está entre comillas dobles.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Tiene un significado especial cuando el valor de un atributo está entre comillas simples.</td></tr>
	</table>
</div>

<h4>Escape básico y escape completo</h4>
<p>DenCode muestra dos resultados para el escape HTML: «Básico» y «Todo».</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Tipo</th><th scope="col">Descripción</th><th scope="col">Ejemplo para «A &lt; あ»</th></tr>
		<tr><td>HTML Escape (Básico)</td><td>Convierte los cinco caracteres <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> y <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML Escape (Todo)</td><td>Usa referencias de caracteres con nombre cuando existen y referencias numéricas decimales para los demás caracteres.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Para la visualización HTML habitual, se usa normalmente el escape básico, que convierte solo los caracteres necesarios. El escape completo es útil para comprobar una cadena como referencias de caracteres HTML o para representar todos los caracteres de forma explícita.</p>

<h4>Unescape</h4>
<p>El unescape HTML convierte las referencias de caracteres HTML de vuelta a los caracteres originales. DenCode puede decodificar referencias con nombre como <code>&amp;lt;</code> y <code>&amp;amp;</code>, referencias numéricas decimales como <code>&amp;#12354;</code> y referencias numéricas hexadecimales como <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Referencia de carácter HTML</th><th scope="col">Después de unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
