<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-384</h3>
<p>SHA-384 è una funzione hash crittografica che genera un valore hash a 384 bit da dati di qualsiasi lunghezza. Fa parte della famiglia SHA-2 e produce un valore hash più lungo di <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore hash SHA-384 viene mostrato con 96 cifre esadecimali.</p>

<p>Ad esempio, il valore hash SHA-384 di "Hello, world!" è il seguente.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Caratteristiche del valore hash</h4>
<p>SHA-384 genera sempre lo stesso valore hash dallo stesso input. Se l’input cambia anche di poco, il valore hash prodotto cambia in modo significativo.</p>
<p>Una funzione hash è una funzione unidirezionale, quindi non è possibile ricostruire i dati di input originali dal valore hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Valore hash SHA-384</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
