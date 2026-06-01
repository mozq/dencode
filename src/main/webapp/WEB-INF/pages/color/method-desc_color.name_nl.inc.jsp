<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over kleurnamen</h3>
<p>Kleurnamen zijn een manier om kleuren weer te geven met named colors die in CSS zijn gedefinieerd. Omdat kleuren kunnen worden opgegeven met trefwoorden zoals <code>red</code>, <code>blue</code> en <code>orange</code>, kunnen veelgebruikte kleuren in HTML en CSS leesbaar worden geschreven.</p>

<p>Belangrijke kleuren zoals rood kunnen bijvoorbeeld als volgt worden weergegeven.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>Kleurnaam</th><th>RGB-notatie</th><th>Hex-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lime</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Blauw</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Wit</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Zwart</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Oranje</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Transparant</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> is een speciale kleurnaam die transparant zwart vertegenwoordigt.</p>

<p>Kleurnamen bevatten, behalve <code>transparent</code>, geen transparantie-informatie. In DenCode wordt een kleur met transparantie, wanneer die als named color kan worden weergegeven, getoond met CSS relatieve kleursyntaxis. Halftransparant <code>red</code> wordt bijvoorbeeld weergegeven als <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Verschil tussen kleurnamen en RGB</h4>
<p>Kleurnamen geven veelgebruikte kleuren weer met goed leesbare trefwoorden. <a href="${dc:h(basePath)}/color/rgb">RGB</a> specificeert daarentegen de waarden voor rood, groen en blauw en kan veel meer kleuren numeriek weergeven. Kleurnamen worden vaak gebruikt wanneer leesbaarheid in CSS of HTML belangrijk is; RGB-notatie wordt vaak gebruikt voor precieze kleurinstellingen of kleurconversie.</p>
