<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sul testo inverso</h3>
<p>Il testo inverso inverte i caratteri della stringa inserita. L'intera stringa viene letta dall'ultimo carattere fino al primo.</p>

<p>Ad esempio, invertendo "Hello, world!" si ottiene:</p>

<pre>!dlrow ,olleH</pre>

<p>Nei testi su più righe, anche le interruzioni di riga fanno parte della stringa. Per questo viene invertito l'intero contenuto, compreso l'ordine delle righe.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Dopo l'inversione</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Questa conversione non riordina le parole mantenendo il significato della frase. Inverte semplicemente l'ordine dei caratteri inseriti.</p>
