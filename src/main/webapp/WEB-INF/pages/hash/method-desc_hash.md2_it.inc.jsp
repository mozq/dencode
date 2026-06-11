<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD2</h3>
<p>MD2 è una funzione hash che genera un valore hash a 128 bit da dati di qualsiasi lunghezza. È un algoritmo vecchio e non è consigliato per gli usi crittografici attuali.</p>
<p>In DenCode, il testo inserito viene trattato come una sequenza di byte nella codifica dei caratteri selezionata, e il valore hash MD2 viene mostrato con 32 cifre esadecimali.</p>

<p>Ad esempio, il valore hash MD2 di "Hello, world!" è il seguente.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Caratteristiche del valore hash</h4>
<p>MD2 genera sempre lo stesso valore hash dallo stesso input. Se l’input cambia anche di poco, il valore hash prodotto cambia in modo significativo.</p>
<p>Una funzione hash è una funzione unidirezionale, quindi non è possibile ricostruire i dati di input originali dal valore hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Valore hash MD2</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 può essere usato per controlli di compatibilità, ma per nuovi usi conviene considerare una funzione hash più recente come <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
