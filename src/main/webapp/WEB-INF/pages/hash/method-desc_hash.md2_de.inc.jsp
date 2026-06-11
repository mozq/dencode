<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD2</h3>
<p>MD2 ist eine Hashfunktion, die aus Daten beliebiger Länge einen 128-Bit-Hashwert erzeugt. Es handelt sich um ein altes Verfahren, das für heutige kryptografische Zwecke nicht empfohlen wird.</p>
<p>In DenCode wird der eingegebene Text als Bytefolge in der angegebenen Zeichenkodierung behandelt, und der MD2-Hashwert wird als 32-stellige Hexadezimalzahl angezeigt.</p>

<p>Der MD2-Hashwert von „Hello, world!“ sieht beispielsweise wie folgt aus.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Eigenschaften des Hashwerts</h4>
<p>MD2 erzeugt aus derselben Eingabe immer denselben Hashwert. Ändert sich die Eingabe auch nur geringfügig, ändert sich der ausgegebene Hashwert stark.</p>
<p>Eine Hashfunktion ist eine Einwegfunktion; aus dem Hashwert kann daher die ursprüngliche Eingabe nicht wiederhergestellt werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">MD2-Hashwert</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 wird gelegentlich für Kompatibilitätsprüfungen verwendet. Für neue Anwendungsfälle sollten Sie jedoch eine neuere Hashfunktion wie <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> in Betracht ziehen.</p>
