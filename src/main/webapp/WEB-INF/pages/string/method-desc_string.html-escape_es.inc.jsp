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

<h4>Opciones de escape HTML</h4>
<p>DenCode permite elegir el objetivo, cómo se usan las referencias de caracteres con nombre y la notación de las referencias numéricas.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Objetivo</caption>
		<tr><th scope="col">Opción</th><th scope="col">Descripción</th><th scope="col">Ejemplo para “A &lt; 😀”</th></tr>
		<tr><td>Básico</td><td>Convierte los cinco caracteres <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> y <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Básico + no ASCII</td><td>Convierte los cinco caracteres básicos y los caracteres no ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>No alfanuméricos</td><td>Convierte los caracteres que no sean letras o dígitos ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Todo</td><td>Convierte todos los caracteres.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Para la visualización HTML habitual se usa a menudo “Básico”, porque solo convierte los caracteres necesarios. Use “Todo” cuando quiera revisar una cadena como referencias de caracteres HTML o representar cada carácter explícitamente como una referencia.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Referencias de caracteres con nombre</caption>
		<tr><th scope="col">Opción</th><th scope="col">Descripción</th><th scope="col">Ejemplo</th></tr>
		<tr><td>HTML5</td><td>Usa las referencias de caracteres con nombre definidas por HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Usa las referencias de caracteres con nombre definidas por HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Usa las cinco referencias <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> y <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Ninguna</td><td>No usa referencias con nombre; solo se usan referencias numéricas.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Notación de referencias numéricas</caption>
		<tr><th scope="col">Opción</th><th scope="col">Descripción</th><th scope="col">Ejemplo</th></tr>
		<tr><td>Decimal</td><td>Usa referencias numéricas decimales.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Hexadecimal minúscula</td><td>Usa referencias numéricas hexadecimales con letras minúsculas.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Hexadecimal mayúscula</td><td>Usa referencias numéricas hexadecimales con letras mayúsculas.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
