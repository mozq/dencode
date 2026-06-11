<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>CRC32</h3>
<p>CRC32 è un metodo di rilevamento degli errori che genera un valore di controllo a 32 bit da dati di qualsiasi lunghezza. Viene usato nei trasferimenti di file, nei formati compressi e in contesti simili per verificare se i dati sono stati danneggiati.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore CRC32 viene mostrato in esadecimale.</p>

<p>Ad esempio, il CRC32 di "Hello, world!" è il seguente.</p>

<pre>ebe6c6e6</pre>

<h4>Caratteristiche di CRC32</h4>
<p>CRC32 è adatto a rilevare danneggiamenti accidentali dei dati. Tuttavia, non essendo una funzione hash crittografica, non è adatto a usi che richiedono sicurezza contro le modifiche.</p>
<p>CRC32 genera sempre lo stesso valore dallo stesso input. Quando l’input cambia, cambia anche il valore prodotto. Tuttavia, non è possibile ricostruire i dati di input originali dal valore CRC32.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
