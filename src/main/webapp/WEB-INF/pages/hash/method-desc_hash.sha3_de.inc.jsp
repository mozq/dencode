<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-3</h3>
<p>SHA-3 ist eine kryptografische Hashfunktion, die aus Daten beliebiger Länge einen Hashwert fester Länge erzeugt. SHA-3 umfasst vier Funktionen mit unterschiedlichen Hashwertlängen: SHA3-224, SHA3-256, SHA3-384 und SHA3-512.</p>
<p>In DenCode wird der eingegebene Text als Bytefolge in der angegebenen Zeichenkodierung behandelt, und der SHA-3-Hashwert wird hexadezimal angezeigt.</p>

<p>Der SHA3-256-Hashwert von „Hello, world!“ sieht beispielsweise wie folgt aus.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Eigenschaften des Hashwerts</h4>
<p>SHA-3 erzeugt aus derselben Eingabe immer denselben Hashwert. Ändert sich die Eingabe auch nur geringfügig, ändert sich der ausgegebene Hashwert stark.</p>
<p>Eine Hashfunktion ist eine Einwegfunktion; aus dem Hashwert kann daher die ursprüngliche Eingabe nicht wiederhergestellt werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">SHA3-256-Hashwert</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Unterschied zu SHA-2</h4>
<p>SHA-2 basiert auf einer Merkle-Damgård-Konstruktion und gehört damit zur gleichen Grundfamilie wie MD5 und SHA-1. SHA-3 standardisiert Keccak und verwendet stattdessen eine Sponge-Konstruktion. Daher geben SHA-256 und SHA3-256 zwar beide 256-Bit-Hashwerte aus, die erzeugten Werte sind jedoch unterschiedlich.</p>
