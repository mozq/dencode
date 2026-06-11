<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>URL-codering</h3>
<p>URL-codering is een methode om tekst veilig in URL's weer te geven. De formele naam is "percent-encoding", gedefinieerd in de URI-specificatie <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Tekens die een speciale betekenis hebben in URL's, of tekens die niet goed rechtstreeks in een URL kunnen worden gebruikt, worden omgezet naar een procentteken (%) gevolgd door twee hexadecimale cijfers.</p>
<p>Bijvoorbeeld: een spatie wordt weergegeven als <code>%20</code>, een uitroepteken (<code>!</code>) als <code>%21</code>, en het Japanse teken "あ" als <code>%E3%81%82</code> in UTF-8.</p>

<p>URL-codering zet tekst eerst om naar bytes met de geselecteerde tekencodering en geeft elke byte waar nodig weer als <code>%HH</code>. In DenCode worden de niet-gereserveerde tekens uit RFC 3986, alfanumerieke tekens en <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, niet omgezet; andere tekens worden met percent-encoding gecodeerd.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Teken</th><th scope="col">Na URL-codering</th><th scope="col">Beschrijving</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Alfanumerieke tekens zijn niet gereserveerd en worden daarom niet omgezet.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> en <code>~</code> zijn niet gereserveerd en worden daarom niet omgezet.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Dit teken scheidt URL-padsegmenten; encodeer het wanneer het als waarde wordt gebruikt.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Gereserveerd teken dat de querystring begint.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Gereserveerd teken dat queryparameters scheidt.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Gereserveerd teken dat de parameternaam en waarde scheidt.</td></tr>
		<tr><td>Spatie</td><td><code>%20</code></td><td>In URL-percent-encoding wordt een spatie gecodeerd als <code>%20</code>; in <code>application/x-www-form-urlencoded</code> als <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Encodeer <code>+</code> wanneer het plusteken zelf als waarde bedoeld is.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>In UTF-8 wordt dit teken als een reeks van drie bytes gecodeerd.</td></tr>
	</table>
</div>

<p>Bijvoorbeeld, URL-codering van "Hello, world!" geeft het volgende resultaat.</p>

<pre>Hello%2C%20world%21</pre>

<p>In dit voorbeeld wordt de komma (<code>,</code>) <code>%2C</code>, de spatie <code>%20</code> en het uitroepteken (<code>!</code>) <code>%21</code>.</p>


<h4>Spatieweergave in application/x-www-form-urlencoded</h4>
<p>In <code>application/x-www-form-urlencoded</code>, gebruikt bij het verzenden van HTML-formulieren, kunnen spaties worden weergegeven als <code>+</code>. Dit formaat is in de <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> gedefinieerd als codering voor formulierverzending.</p>
<p>In DenCode kun je kiezen of spaties bij het encoderen als <code>%20</code> of als <code>+</code> worden uitgevoerd.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Formaat</th><th scope="col">Resultaat voor "Hello world"</th><th scope="col">Gebruik</th></tr>
		<tr><td>Percentage-codering</td><td><code>Hello%20world</code></td><td>Algemeen bruikbaar formaat voor URL's.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Gebruikt in querystrings en request bodies van HTML-formulieren.</td></tr>
	</table>
</div>
