<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-3</h3>
<p>SHA-3 è una funzione hash crittografica che genera un valore hash di lunghezza fissa da dati di qualsiasi lunghezza. SHA-3 comprende quattro funzioni con diverse lunghezze del valore hash: SHA3-224, SHA3-256, SHA3-384 e SHA3-512.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore hash SHA-3 viene mostrato in formato esadecimale.</p>

<p>Ad esempio, il valore hash SHA3-256 di "Hello, world!" è il seguente.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Caratteristiche del valore hash</h4>
<p>SHA-3 genera sempre lo stesso valore hash dallo stesso input. Se l’input cambia anche di poco, il valore hash prodotto cambia in modo significativo.</p>
<p>Una funzione hash è una funzione unidirezionale, quindi non è possibile ricostruire i dati di input originali dal valore hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Valore hash SHA3-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Differenza rispetto a SHA-2</h4>
<p>SHA-2 si basa su una costruzione Merkle-Damgård, della stessa famiglia generale di MD5 e SHA-1. SHA-3 standardizza Keccak e usa invece una costruzione a spugna. Per questo SHA-256 e SHA3-256 producono entrambi valori hash a 256 bit, ma i valori generati sono diversi.</p>
