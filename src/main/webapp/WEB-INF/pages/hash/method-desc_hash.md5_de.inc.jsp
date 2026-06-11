<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD5</h3>
<p>MD5 ist eine Hashfunktion, die aus Daten beliebiger Länge einen 128-Bit-Hashwert erzeugt. Das Verfahren war weit verbreitet, wird wegen Schwächen bei der Kollisionsresistenz aber für heutige kryptografische Zwecke nicht empfohlen.</p>
<p>In DenCode wird der eingegebene Text als Bytefolge in der angegebenen Zeichenkodierung behandelt, und der MD5-Hashwert wird als 32-stellige Hexadezimalzahl angezeigt.</p>

<p>Der MD5-Hashwert von „Hello, world!“ sieht beispielsweise wie folgt aus.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Eigenschaften des Hashwerts</h4>
<p>MD5 erzeugt aus derselben Eingabe immer denselben Hashwert. Ändert sich die Eingabe auch nur geringfügig, ändert sich der ausgegebene Hashwert stark.</p>
<p>Eine Hashfunktion ist eine Einwegfunktion; aus dem Hashwert kann daher die ursprüngliche Eingabe nicht wiederhergestellt werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Eingabe</th><th scope="col">MD5-Hashwert</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 kann beim Abgleich alter Prüfsummen vorkommen. Für sicherheitsrelevante Zwecke wie Manipulationserkennung oder Signaturen sollten Sie jedoch <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> oder eine neuere Hashfunktion in Betracht ziehen.</p>
