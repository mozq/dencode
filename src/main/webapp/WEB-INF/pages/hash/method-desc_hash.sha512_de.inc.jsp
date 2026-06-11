<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-512</h3>
<p>SHA-512 ist eine kryptografische Hashfunktion, die aus Daten beliebiger Länge einen 512-Bit-Hashwert erzeugt. Sie gehört zur SHA-2-Familie und gibt einen längeren Hashwert als <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> aus.</p>
<p>In DenCode wird der eingegebene Text als Bytefolge in der angegebenen Zeichenkodierung behandelt, und der SHA-512-Hashwert wird als 128-stellige Hexadezimalzahl angezeigt.</p>

<p>Der SHA-512-Hashwert von „Hello, world!“ sieht beispielsweise wie folgt aus.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Eigenschaften des Hashwerts</h4>
<p>SHA-512 erzeugt aus derselben Eingabe immer denselben Hashwert. Ändert sich die Eingabe auch nur geringfügig, ändert sich der ausgegebene Hashwert stark.</p>
<p>Eine Hashfunktion ist eine Einwegfunktion; aus dem Hashwert kann daher die ursprüngliche Eingabe nicht wiederhergestellt werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">SHA-512-Hashwert</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
