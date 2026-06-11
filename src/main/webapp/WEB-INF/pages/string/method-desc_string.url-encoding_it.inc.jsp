<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Codifica URL</h3>
<p>La codifica URL è un metodo per rappresentare in modo sicuro testo all'interno di un URL. Il nome formale è "percent-encoding", definito dalla specifica URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>I caratteri che hanno un significato speciale negli URL, o che non sono adatti a essere usati direttamente in un URL, vengono convertiti in un segno di percentuale (%) seguito da due cifre esadecimali.</p>
<p>Ad esempio, uno spazio è rappresentato come <code>%20</code>, un punto esclamativo (<code>!</code>) come <code>%21</code> e il carattere giapponese "あ" come <code>%E3%81%82</code> in UTF-8.</p>

<p>La codifica URL converte prima il testo in byte con la codifica dei caratteri selezionata, quindi rappresenta ogni byte come <code>%HH</code> quando necessario. In DenCode, i caratteri non riservati di RFC 3986, cioè i caratteri alfanumerici e <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, non vengono convertiti; gli altri caratteri vengono codificati percentualmente.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Carattere</th><th scope="col">Dopo la codifica URL</th><th scope="col">Descrizione</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>I caratteri alfanumerici sono non riservati, quindi non vengono convertiti.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> e <code>~</code> sono non riservati, quindi non vengono convertiti.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Questo carattere separa i segmenti del percorso URL; codificarlo quando fa parte di un valore.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Carattere riservato che avvia la stringa di query.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Carattere riservato che separa i parametri della query.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Carattere riservato che separa il nome e il valore di un parametro.</td></tr>
		<tr><td>Spazio</td><td><code>%20</code></td><td>Nella codifica percentuale degli URL, uno spazio viene codificato come <code>%20</code>; in <code>application/x-www-form-urlencoded</code>, come <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Codificare <code>+</code> quando il segno più stesso deve essere usato come valore.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>In UTF-8 questo carattere è codificato come una sequenza di tre byte.</td></tr>
	</table>
</div>

<p>Ad esempio, la codifica URL di "Hello, world!" produce il risultato seguente.</p>

<pre>Hello%2C%20world%21</pre>

<p>In questo esempio, la virgola (<code>,</code>) diventa <code>%2C</code>, lo spazio diventa <code>%20</code> e il punto esclamativo (<code>!</code>) diventa <code>%21</code>.</p>


<h4>Rappresentazione degli spazi in application/x-www-form-urlencoded</h4>
<p>In <code>application/x-www-form-urlencoded</code>, usato per l'invio di moduli HTML, gli spazi possono essere rappresentati come <code>+</code>. Questo formato è definito nell'<a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> come codifica per l'invio dei moduli.</p>
<p>DenCode consente di scegliere se gli spazi vengono emessi come <code>%20</code> o come <code>+</code> durante la codifica.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Formato</th><th scope="col">Risultato per "Hello world"</th><th scope="col">Uso</th></tr>
		<tr><td>Codifica percentuale</td><td><code>Hello%20world</code></td><td>Formato generale adatto agli URL.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Usato nelle query string e nei corpi delle richieste dei moduli HTML.</td></tr>
	</table>
</div>
