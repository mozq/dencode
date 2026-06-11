<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Kodowanie URL</h3>
<p>Kodowanie URL to metoda bezpiecznego przedstawiania tekstu w adresach URL. Formalna nazwa to "percent-encoding", zdefiniowana w specyfikacji URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Znaki mające specjalne znaczenie w URL albo znaki trudne do bezpośredniego użycia w URL są zamieniane na znak procentu (%) i dwie cyfry szesnastkowe.</p>
<p>Na przykład spacja jest reprezentowana jako <code>%20</code>, wykrzyknik (<code>!</code>) jako <code>%21</code>, a japoński znak "あ" jako <code>%E3%81%82</code> w UTF-8.</p>

<p>Kodowanie URL najpierw zamienia tekst na bajty zgodnie z wybranym kodowaniem znaków, a następnie w razie potrzeby przedstawia każdy bajt jako <code>%HH</code>. W DenCode znaki niezastrzeżone z RFC 3986, czyli znaki alfanumeryczne oraz <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, nie są zamieniane; pozostałe znaki są kodowane procentowo.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Znak</th><th scope="col">Po kodowaniu URL</th><th scope="col">Opis</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Znaki alfanumeryczne są niezastrzeżone, więc nie są zamieniane.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> i <code>~</code> są niezastrzeżone, więc nie są zamieniane.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Ten znak rozdziela segmenty ścieżki URL; zakoduj go, gdy jest częścią wartości.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Znak zastrzeżony rozpoczynający query string.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Znak zastrzeżony rozdzielający parametry query.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Znak zastrzeżony rozdzielający nazwę parametru i wartość.</td></tr>
		<tr><td>Spacja</td><td><code>%20</code></td><td>W percent-encoding dla URL spacja jest kodowana jako <code>%20</code>; w <code>application/x-www-form-urlencoded</code> jako <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Zakoduj <code>+</code>, gdy sam znak plus ma być wartością.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>W UTF-8 ten znak jest kodowany jako sekwencja trzech bajtów.</td></tr>
	</table>
</div>

<p>Na przykład kodowanie URL tekstu "Hello, world!" daje następujący wynik.</p>

<pre>Hello%2C%20world%21</pre>

<p>W tym przykładzie przecinek (<code>,</code>) staje się <code>%2C</code>, spacja <code>%20</code>, a wykrzyknik (<code>!</code>) <code>%21</code>.</p>


<h4>Reprezentacja spacji w application/x-www-form-urlencoded</h4>
<p>W <code>application/x-www-form-urlencoded</code>, używanym przy wysyłaniu formularzy HTML, spacje mogą być reprezentowane jako <code>+</code>. Ten format jest zdefiniowany w <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> jako kodowanie wysyłania formularzy.</p>
<p>DenCode pozwala wybrać, czy podczas kodowania spacje mają być wypisywane jako <code>%20</code> czy <code>+</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Wynik dla "Hello world"</th><th scope="col">Zastosowanie</th></tr>
		<tr><td>Kodowanie procentowe</td><td><code>Hello%20world</code></td><td>Ogólny format wygodny dla URL.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Używany w query stringach i treści żądań formularzy HTML.</td></tr>
	</table>
</div>
