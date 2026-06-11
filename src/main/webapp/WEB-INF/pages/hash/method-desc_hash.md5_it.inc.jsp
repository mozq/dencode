<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD5</h3>
<p>MD5 è una funzione hash che genera un valore hash a 128 bit da dati di qualsiasi lunghezza. È stata ampiamente usata, ma per problemi di resistenza alle collisioni non è consigliata per gli usi crittografici attuali.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore hash MD5 viene mostrato con 32 cifre esadecimali.</p>

<p>Ad esempio, il valore hash MD5 di "Hello, world!" è il seguente.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Caratteristiche del valore hash</h4>
<p>MD5 genera sempre lo stesso valore hash dallo stesso input. Se l’input cambia anche di poco, il valore hash prodotto cambia in modo significativo.</p>
<p>Una funzione hash è una funzione unidirezionale, quindi non è possibile ricostruire i dati di input originali dal valore hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Valore hash MD5</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 può comparire nel confronto con vecchie somme di controllo, ma per usi che richiedono sicurezza, come rilevamento di modifiche o firme, conviene considerare <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> o una funzione hash più recente.</p>
