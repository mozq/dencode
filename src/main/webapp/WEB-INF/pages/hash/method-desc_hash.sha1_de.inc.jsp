<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-1</h3>
<p>SHA-1 ist eine kryptografische Hashfunktion, die aus Daten beliebiger Länge einen 160-Bit-Hashwert erzeugt. Sie war früher weit verbreitet, wird wegen Schwächen bei der Kollisionsresistenz aber für neue kryptografische Zwecke nicht empfohlen.</p>
<p>In DenCode wird der eingegebene Text als Bytefolge in der angegebenen Zeichenkodierung behandelt, und der SHA-1-Hashwert wird als 40-stellige Hexadezimalzahl angezeigt.</p>

<p>Der SHA-1-Hashwert von „Hello, world!“ sieht beispielsweise wie folgt aus.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Eigenschaften des Hashwerts</h4>
<p>SHA-1 erzeugt aus derselben Eingabe immer denselben Hashwert. Ändert sich die Eingabe auch nur geringfügig, ändert sich der ausgegebene Hashwert stark.</p>
<p>Eine Hashfunktion ist eine Einwegfunktion; aus dem Hashwert kann daher die ursprüngliche Eingabe nicht wiederhergestellt werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">SHA-1-Hashwert</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Für die Kompatibilität mit bestehenden Systemen kann es noch vorkommen. Für neue Anwendungsfälle sollten Sie jedoch <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> oder eine stärkere Hashfunktion in Betracht ziehen.</p>
