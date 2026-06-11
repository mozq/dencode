<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O odwracaniu tekstu</h3>
<p>Odwracanie tekstu odwraca znaki we wprowadzonym ciągu. Cały ciąg jest odczytywany od ostatniego znaku do pierwszego.</p>

<p>Na przykład odwrócenie tekstu "Hello, world!" daje:</p>

<pre>!dlrow ,olleH</pre>

<p>W tekście wielowierszowym znaki nowej linii również są częścią ciągu. Dlatego odwracana jest cała zawartość, w tym kolejność linii.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Dane wejściowe</th><th scope="col">Po odwróceniu</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Ta konwersja nie przestawia słów z zachowaniem sensu zdania. Po prostu odwraca kolejność wprowadzonych znaków.</p>
