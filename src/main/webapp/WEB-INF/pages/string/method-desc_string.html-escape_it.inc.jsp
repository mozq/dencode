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

<h4>Escape di base ed escape completo</h4>
<p>DenCode mostra due risultati per HTML Escape: “Base” e “Tutto”.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Tipo</th><th scope="col">Descrizione</th><th scope="col">Esempio per “A &lt; あ”</th></tr>
		<tr><td>HTML Escape (Base)</td><td>Converte i cinque caratteri <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> e <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML Escape (Tutto)</td><td>Usa riferimenti a carattere con nome quando disponibili e riferimenti numerici decimali per gli altri caratteri.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Per la normale visualizzazione HTML si usa di solito l’escape di base, che converte solo i caratteri necessari. L’escape completo è utile quando si vuole controllare una stringa come riferimenti a carattere HTML o rappresentare esplicitamente ogni carattere.</p>

<h4>Unescape</h4>
<p>HTML Unescape converte i riferimenti a carattere HTML nei caratteri originali. DenCode può decodificare riferimenti con nome come <code>&amp;lt;</code> e <code>&amp;amp;</code>, riferimenti numerici decimali come <code>&amp;#12354;</code> e riferimenti numerici esadecimali come <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Riferimento a carattere HTML</th><th scope="col">Dopo Unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
