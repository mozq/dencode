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

<h4>Escapowanie podstawowe i pełne</h4>
<p>DenCode pokazuje dwa wyniki escapowania HTML: „Podstawowy” i „Pełny”.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Typ</th><th scope="col">Opis</th><th scope="col">Przykład dla „A &lt; あ”</th></tr>
		<tr><td>Escapowanie HTML (Podstawowy)</td><td>Zamienia pięć znaków: <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> i <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>Escapowanie HTML (Pełny)</td><td>Używa nazwanych referencji znakowych, jeśli istnieją, a dla pozostałych znaków dziesiętnych numerycznych referencji znakowych.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Do zwykłego wyświetlania HTML najczęściej używa się escapowania podstawowego, które zamienia tylko niezbędne znaki. Escapowanie pełne przydaje się, gdy chcesz sprawdzić ciąg jako referencje znakowe HTML albo zapisać każdy znak jawnie w postaci referencji.</p>

<h4>Odwracanie escapowania</h4>
<p>Odwracanie escapowania HTML zamienia referencje znakowe HTML z powrotem na pierwotne znaki. DenCode potrafi dekodować nazwane referencje znakowe, takie jak <code>&amp;lt;</code> i <code>&amp;amp;</code>, dziesiętne numeryczne referencje znakowe, takie jak <code>&amp;#12354;</code>, oraz szesnastkowe numeryczne referencje znakowe, takie jak <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Referencja znakowa HTML</th><th scope="col">Po odwróceniu escapowania</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
