<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni su HTML Escape</h3>
<p>HTML Escape converte i caratteri che hanno un significato speciale in HTML in riferimenti a carattere, in modo che una stringa possa essere visualizzata in modo sicuro come testo HTML. Per esempio, <code>&lt;</code> e <code>&gt;</code>, che potrebbero essere interpretati come tag, vengono scritti come <code>&amp;lt;</code> e <code>&amp;gt;</code>.</p>
<p>Applicando l’escape HTML, il testo inserito non viene interpretato come tag o attributi HTML, ma viene mostrato sullo schermo così com’è.</p>

<p>Per esempio, applicando HTML Escape a “&lt;p&gt;Hello, world!&lt;/p&gt;” si ottiene quanto segue.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Carattere</th><th scope="col">Dopo HTML Escape</th><th scope="col">Descrizione</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Può essere interpretato come l’inizio di un tag HTML.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Può essere interpretato come la fine di un tag HTML.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Può essere interpretato come l’inizio di un riferimento a carattere.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Ha un significato speciale quando il valore di un attributo è racchiuso tra virgolette doppie.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Ha un significato speciale quando il valore di un attributo è racchiuso tra virgolette singole.</td></tr>
	</table>
</div>

<h4>Opzioni di escape HTML</h4>
<p>DenCode consente di scegliere la destinazione, come usare i riferimenti a caratteri con nome e la notazione dei riferimenti numerici.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Destinazione</caption>
		<tr><th scope="col">Opzione</th><th scope="col">Descrizione</th><th scope="col">Esempio per “A &lt; 😀”</th></tr>
		<tr><td>Base</td><td>Converte i cinque caratteri <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> e <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Base + non ASCII</td><td>Converte i cinque caratteri di base e i caratteri non ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Non alfanumerici</td><td>Converte i caratteri diversi da lettere e cifre ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Tutti</td><td>Converte tutti i caratteri.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Per la normale visualizzazione HTML si usa spesso “Base”, perché converte solo i caratteri necessari. Usa “Tutti” quando vuoi controllare una stringa come riferimenti a caratteri HTML o rappresentare ogni carattere esplicitamente come riferimento.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Riferimenti a caratteri con nome</caption>
		<tr><th scope="col">Opzione</th><th scope="col">Descrizione</th><th scope="col">Esempio</th></tr>
		<tr><td>HTML5</td><td>Usa i riferimenti a caratteri con nome definiti da HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Usa i riferimenti a caratteri con nome definiti da HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Usa i cinque riferimenti <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> e <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Nessuno</td><td>Non usa riferimenti con nome; vengono usati solo riferimenti numerici.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Notazione dei riferimenti numerici</caption>
		<tr><th scope="col">Opzione</th><th scope="col">Descrizione</th><th scope="col">Esempio</th></tr>
		<tr><td>Decimale</td><td>Usa riferimenti numerici decimali.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Esadecimale minuscolo</td><td>Usa riferimenti numerici esadecimali con lettere minuscole.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Esadecimale maiuscolo</td><td>Usa riferimenti numerici esadecimali con lettere maiuscole.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
