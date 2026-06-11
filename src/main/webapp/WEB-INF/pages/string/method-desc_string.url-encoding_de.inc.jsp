<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>URL-Codierung</h3>
<p>URL-Codierung ist ein Verfahren, um Text sicher in URLs darzustellen. Die formale Bezeichnung ist "Prozentkodierung (percent-encoding)", definiert in der URI-Spezifikation <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Zeichen mit besonderer Bedeutung in URLs oder Zeichen, die in URLs nicht direkt verwendet werden sollten, werden in ein Prozentzeichen (%) und zwei hexadezimale Ziffern umgewandelt.</p>
<p>Ein Leerzeichen wird zum Beispiel als <code>%20</code>, ein Ausrufezeichen (<code>!</code>) als <code>%21</code> und das japanische Zeichen "あ" in UTF-8 als <code>%E3%81%82</code> dargestellt.</p>

<p>Bei der URL-Codierung wird der Text zuerst mit der gewählten Zeichenkodierung in Bytes umgewandelt. Jedes Byte wird bei Bedarf als <code>%HH</code> dargestellt. In DenCode werden die nicht reservierten Zeichen nach RFC 3986, also alphanumerische Zeichen sowie <code>-</code>, <code>.</code>, <code>_</code> und <code>~</code>, nicht umgewandelt; alle anderen Zeichen werden prozentkodiert.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Zeichen</th><th scope="col">Nach URL-Codierung</th><th scope="col">Beschreibung</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Alphanumerische Zeichen sind nicht reserviert und werden daher nicht umgewandelt.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> und <code>~</code> sind nicht reserviert und werden daher nicht umgewandelt.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Dieses Zeichen trennt URL-Pfadsegmente und sollte kodiert werden, wenn es als Wert verwendet wird.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Dieses reservierte Zeichen leitet die Query-Zeichenfolge ein.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Dieses reservierte Zeichen trennt Query-Parameter.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Dieses reservierte Zeichen trennt Parameternamen und Wert.</td></tr>
		<tr><td>Leerzeichen</td><td><code>%20</code></td><td>Bei der Prozentkodierung in URLs wird ein Leerzeichen als <code>%20</code> kodiert; bei <code>application/x-www-form-urlencoded</code> als <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Das Pluszeichen selbst muss als <code>%2B</code> kodiert werden, wenn es als Wert gemeint ist.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>In UTF-8 wird dieses Zeichen als Drei-Byte-Sequenz kodiert.</td></tr>
	</table>
</div>

<p>Wenn "Hello, world!" URL-kodiert wird, ergibt sich zum Beispiel Folgendes.</p>

<pre>Hello%2C%20world%21</pre>

<p>In diesem Beispiel wird das Komma (<code>,</code>) zu <code>%2C</code>, das Leerzeichen zu <code>%20</code> und das Ausrufezeichen (<code>!</code>) zu <code>%21</code>.</p>


<h4>Leerzeichen in application/x-www-form-urlencoded</h4>
<p>In <code>application/x-www-form-urlencoded</code>, das bei HTML-Formularen verwendet wird, können Leerzeichen als <code>+</code> dargestellt werden. Dieses Format ist im <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> als Kodierung für Formularübermittlungen definiert.</p>
<p>In DenCode kann beim Kodieren ausgewählt werden, ob Leerzeichen als <code>%20</code> oder als <code>+</code> ausgegeben werden.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Ergebnis für "Hello world"</th><th scope="col">Verwendung</th></tr>
		<tr><td>Prozentkodierung</td><td><code>Hello%20world</code></td><td>Allgemein gut für URLs geeignet.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Wird in Query-Strings und Request-Bodys von HTML-Formularen verwendet.</td></tr>
	</table>
</div>
