<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-512</h3>
<p>SHA-512 è una funzione hash crittografica che genera un valore hash a 512 bit da dati di qualsiasi lunghezza. Fa parte della famiglia SHA-2 e produce un valore hash più lungo di <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore hash SHA-512 viene mostrato con 128 cifre esadecimali.</p>

<p>Ad esempio, il valore hash SHA-512 di "Hello, world!" è il seguente.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Caratteristiche del valore hash</h4>
<p>SHA-512 genera sempre lo stesso valore hash dallo stesso input. Se l’input cambia anche di poco, il valore hash prodotto cambia in modo significativo.</p>
<p>Una funzione hash è una funzione unidirezionale, quindi non è possibile ricostruire i dati di input originali dal valore hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Valore hash SHA-512</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
