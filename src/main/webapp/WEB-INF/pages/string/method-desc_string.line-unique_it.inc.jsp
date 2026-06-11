<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sulla rimozione delle righe duplicate</h3>
<p>Questa funzione rimuove le righe duplicate da un testo su più righe. Se la stessa riga compare più volte, viene mantenuta solo la prima occorrenza e le successive vengono eliminate.</p>
<p>Le righe rimaste conservano l'ordine originale. Il testo non viene ordinato.</p>

<p>Ad esempio, se si rimuovono le righe duplicate dal testo seguente:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>Il risultato è:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Riga di input</th><th scope="col">Risultato</th><th scope="col">Descrizione</th></tr>
		<tr><td><code>apple</code> (1ª volta)</td><td>Mantenuta</td><td>È la prima occorrenza della riga.</td></tr>
		<tr><td><code>banana</code> (1ª volta)</td><td>Mantenuta</td><td>È la prima occorrenza della riga.</td></tr>
		<tr><td><code>apple</code> (2ª volta)</td><td>Eliminata</td><td>La stessa riga è già apparsa.</td></tr>
		<tr><td><code>orange</code> (1ª volta)</td><td>Mantenuta</td><td>È la prima occorrenza della riga.</td></tr>
		<tr><td><code>banana</code> (2ª volta)</td><td>Eliminata</td><td>La stessa riga è già apparsa.</td></tr>
	</table>
</div>

<p>Il rilevamento dei duplicati confronta l'intera riga. Differenze tra maiuscole e minuscole, spazi iniziali o finali e caratteri a larghezza intera o mezza larghezza sono considerati testo diverso.</p>
