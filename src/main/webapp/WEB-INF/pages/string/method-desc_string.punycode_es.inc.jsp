<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca de Punycode IDN</h3>
<p>Punycode es un método de codificación que permite representar cadenas Unicode usando solo caracteres ASCII. Se utiliza principalmente para convertir nombres de dominio internacionalizados (IDN), como dominios con caracteres japoneses, chinos, coreanos o letras latinas acentuadas, a una forma ASCII que DNS pueda manejar.</p>
<p>En un nombre de dominio internacionalizado, cada etiqueta del dominio se convierte con Punycode y a la etiqueta convertida se le añade el prefijo <code>xn--</code>. Esta forma ASCII se llama A-label; la forma Unicode original se llama U-label.</p>

<p>Por ejemplo, al convertir “ドメイン.com” a Punycode IDN se obtiene lo siguiente.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>En este ejemplo, el dominio de nivel superior <code>com</code> contiene solo caracteres ASCII y no cambia; solo la etiqueta “ドメイン” se convierte en <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Forma Unicode</th><th scope="col">Forma Punycode IDN</th><th scope="col">Descripción</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Nombre de dominio con caracteres japoneses.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Cada etiqueta se convierte por separado.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Ejemplo con una letra latina acentuada.</td></tr>
	</table>
</div>

<p>Punycode IDN es distinto de la codificación URL. La codificación URL representa caracteres dentro de una URL como secuencias de bytes, por ejemplo <code>%E3%81%82</code>. Punycode IDN, en cambio, convierte las etiquetas del nombre de dominio en etiquetas ASCII que comienzan por <code>xn--</code>.</p>

<h4>Conversión por etiquetas del dominio</h4>
<p>Un nombre de dominio es una secuencia de etiquetas separadas por puntos (<code>.</code>). Punycode IDN no convierte el dominio completo como una sola cadena, sino cada etiqueta por separado.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Etiqueta</th><th scope="col">Resultado de la conversión</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Por eso, <code>例え.テスト</code> se convierte en <code>xn--r8jz45g.xn--zckzah</code>.</p>
