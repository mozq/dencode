<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-1</h3>
<p>SHA-1 è una funzione hash crittografica che genera un valore hash a 160 bit da dati di qualsiasi lunghezza. In passato era molto usata, ma oggi presenta problemi di resistenza alle collisioni e non è consigliata per nuovi usi crittografici.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore hash SHA-1 viene mostrato con 40 cifre esadecimali.</p>

<p>Ad esempio, il valore hash SHA-1 di "Hello, world!" è il seguente.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Caratteristiche del valore hash</h4>
<p>SHA-1 genera sempre lo stesso valore hash dallo stesso input. Se l’input cambia anche di poco, il valore hash prodotto cambia in modo significativo.</p>
<p>Una funzione hash è una funzione unidirezionale, quindi non è possibile ricostruire i dati di input originali dal valore hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Valore hash SHA-1</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Può essere usato per compatibilità con sistemi esistenti, ma per nuovi usi conviene considerare <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> o una funzione hash più robusta.</p>
