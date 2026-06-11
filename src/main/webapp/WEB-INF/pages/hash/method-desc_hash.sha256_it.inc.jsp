<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-256</h3>
<p>SHA-256 è una funzione hash crittografica che genera un valore hash a 256 bit da dati di qualsiasi lunghezza. Fa parte della famiglia SHA-2 ed è usata per rilevare modifiche ai file, verificare l’integrità dei dati, firme digitali, certificati, blockchain e altri scopi.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore hash SHA-256 viene mostrato con 64 cifre esadecimali.</p>

<p>Ad esempio, il valore hash SHA-256 di "Hello, world!" è il seguente.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Caratteristiche del valore hash</h4>
<p>SHA-256 genera sempre lo stesso valore hash dallo stesso input. Se l’input cambia anche di poco, il valore hash prodotto cambia in modo significativo.</p>
<p>Una funzione hash è una funzione unidirezionale, quindi non è possibile ricostruire i dati di input originali dal valore hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Valore hash SHA-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
