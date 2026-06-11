<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sull'ordinamento delle righe</h3>
<p>L'ordinamento delle righe riorganizza un testo su più righe una riga alla volta. Può ordinare le righe di input in ordine ascendente, discendente oppure invertirne l'ordine corrente.</p>
<p>Per l'ordine ascendente e discendente, ogni riga completa viene confrontata come stringa Unicode. Con l'ordine inverso, il testo delle singole righe non cambia: viene invertito solo l'ordine delle righe dall'alto verso il basso.</p>

<p>Ad esempio, ordinando il seguente testo in ordine ascendente:</p>

<pre>
banana
apple
orange
</pre>

<p>Il risultato è:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ordine</th><th scope="col">Descrizione</th><th scope="col">Esempio di conversione</th></tr>
		<tr><td>Ascendente</td><td>Ordina le righe dal valore di stringa Unicode più piccolo al più grande.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Discendente</td><td>Ordina le righe dal valore di stringa Unicode più grande al più piccolo.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Inverso</td><td>Inverte l'ordine delle righe inserite.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Lettere maiuscole e minuscole, numeri, simboli e caratteri non latini vengono confrontati come caratteri Unicode. Il risultato si basa quindi su un confronto tra stringhe, non sull'ordine alfabetico di una lingua naturale né sul valore numerico.</p>
