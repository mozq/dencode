<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O escapowaniu HTML</h3>
<p>Escapowanie HTML zamienia znaki mające specjalne znaczenie w HTML na referencje znakowe, dzięki czemu ciąg znaków można bezpiecznie wyświetlić jako tekst HTML. Na przykład <code>&lt;</code> i <code>&gt;</code>, które mogą zostać odczytane jako tagi, są zapisywane jako <code>&amp;lt;</code> i <code>&amp;gt;</code>.</p>
<p>Po zastosowaniu escapowania HTML wprowadzony tekst nie jest interpretowany jako tagi ani atrybuty HTML, tylko wyświetlany na ekranie jako zwykły tekst.</p>

<p>Na przykład escapowanie HTML tekstu „&lt;p&gt;Hello, world!&lt;/p&gt;” daje następujący wynik.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Znak</th><th scope="col">Po escapowaniu HTML</th><th scope="col">Opis</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Może zostać zinterpretowany jako początek tagu HTML.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Może zostać zinterpretowany jako koniec tagu HTML.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Może zostać zinterpretowany jako początek referencji znakowej.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Ma specjalne znaczenie, gdy wartość atrybutu jest ujęta w cudzysłów.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Ma specjalne znaczenie, gdy wartość atrybutu jest ujęta w apostrofy.</td></tr>
	</table>
</div>

<h4>Opcje ucieczki HTML</h4>
<p>DenCode pozwala wybrać zakres, sposób użycia nazwanych odwołań znakowych oraz notację odwołań numerycznych.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Zakres</caption>
		<tr><th scope="col">Opcja</th><th scope="col">Opis</th><th scope="col">Przykład dla „A &lt; 😀”</th></tr>
		<tr><td>Podstawowe</td><td>Konwertuje pięć znaków <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> i <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Podstawowe + spoza ASCII</td><td>Konwertuje pięć znaków podstawowych oraz znaki spoza ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Niealfanumeryczne</td><td>Konwertuje znaki inne niż litery i cyfry ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Wszystko</td><td>Konwertuje wszystkie znaki.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Do zwykłego wyświetlania HTML często używa się opcji „Podstawowe”, ponieważ konwertuje tylko potrzebne znaki. Użyj opcji „Wszystko”, gdy chcesz sprawdzić ciąg jako odwołania znakowe HTML albo przedstawić każdy znak jawnie jako odwołanie.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Nazwane odwołania znakowe</caption>
		<tr><th scope="col">Opcja</th><th scope="col">Opis</th><th scope="col">Przykład</th></tr>
		<tr><td>HTML5</td><td>Używa nazwanych odwołań znakowych zdefiniowanych w HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Używa nazwanych odwołań znakowych zdefiniowanych w HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Używa pięciu odwołań <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> i <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Brak</td><td>Nie używa nazwanych odwołań; stosowane są tylko odwołania numeryczne.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Notacja odwołań numerycznych</caption>
		<tr><th scope="col">Opcja</th><th scope="col">Opis</th><th scope="col">Przykład</th></tr>
		<tr><td>Dziesiętne</td><td>Używa dziesiętnych odwołań numerycznych.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Szesnastkowe małymi literami</td><td>Używa szesnastkowych odwołań numerycznych z małymi literami.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Szesnastkowe wielkimi literami</td><td>Używa szesnastkowych odwołań numerycznych z wielkimi literami.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
