<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-256</h3>
<p>SHA-256 ist eine kryptografische Hashfunktion, die aus Daten beliebiger Länge einen 256-Bit-Hashwert erzeugt. Sie gehört zur SHA-2-Familie und wird unter anderem zur Erkennung von Dateimanipulationen, zur Prüfung der Datenintegrität, für digitale Signaturen, Zertifikate und Blockchains verwendet.</p>
<p>In DenCode wird der eingegebene Text als Bytefolge in der angegebenen Zeichenkodierung behandelt, und der SHA-256-Hashwert wird als 64-stellige Hexadezimalzahl angezeigt.</p>

<p>Der SHA-256-Hashwert von „Hello, world!“ sieht beispielsweise wie folgt aus.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Eigenschaften des Hashwerts</h4>
<p>SHA-256 erzeugt aus derselben Eingabe immer denselben Hashwert. Ändert sich die Eingabe auch nur geringfügig, ändert sich der ausgegebene Hashwert stark.</p>
<p>Eine Hashfunktion ist eine Einwegfunktion; aus dem Hashwert kann daher die ursprüngliche Eingabe nicht wiederhergestellt werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">SHA-256-Hashwert</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
