<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over RGB-kleur</h3>
<p>RGB-kleur is een kleurmodel dat kleuren weergeeft door drie lichtcomponenten te combineren: rood, groen en blauw. Het wordt veel gebruikt voor kleuren op schermen, zoals displays, webpagina’s en afbeeldingsgegevens.</p>

<p>In RGB wordt de sterkte van elke component met een numerieke waarde opgegeven. Meestal gebeurt dit als geheel getal van 0 tot 255 of als percentage van 0% tot 100%. Als alle componenten 0 zijn, is de kleur zwart; als alle componenten maximaal zijn, is de kleur wit.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>RGB-notatie</th><th>Hex-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Groen</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Blauw</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Wit</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Zwart</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGB-kleuren kunnen in functienotatie of hexadecimale notatie worden geschreven. Rood kan bijvoorbeeld worden weergegeven als <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> of <code>#f00</code>.</p>

<p>Voeg een alfawaarde toe om transparantie op te nemen. Halftransparant rood kan bijvoorbeeld worden weergegeven als <code>rgb(255 0 0 / 50%)</code> of <code>#ff000080</code>.</p>

<p>De RGB-kleurconversie van DenCode ondersteunt de volgende notatieopties.</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGB-kleur (hex)</caption>
		<thead>
			<tr><th>Notatieoptie</th><th>Format</th><th>Voorbeeld</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB-kleur</caption>
		<thead>
			<tr><th>Notatieoptie</th><th>Format</th><th>Voorbeeld</th></tr>
		</thead>
		<tbody>
			<tr><td>Getal</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Percentage</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> is geen standaard CSS-hexkleur, maar een ARGB-indeling die soms in programma’s en toepassingsinstellingen wordt gebruikt. De voorste <code>AA</code> staat voor alfa, gevolgd door <code>RR</code>, <code>GG</code> en <code>BB</code> voor rood, groen en blauw.</p>

<h4>sRGB en andere RGB-kleurruimten</h4>
<p>RGB is een kleurmodel dat kleuren weergeeft met drie componenten: rood, groen en blauw. Toch kan dezelfde RGB-waarde er anders uitzien afhankelijk van de kleurruimte waarin deze wordt geïnterpreteerd. Veelgebruikte webwaarden zoals <code>rgb()</code> en <code>#RRGGBB</code> worden normaal als sRGB-kleuren behandeld.</p>

<p>CSS Color Module Level 4 definieert ook RGB-kleurruimten met een ander gamut dan sRGB, zoals Display P3 en ProPhoto RGB. DenCode ondersteunt ook conversie voor deze kleurruimten.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleurruimte</th><th>Format</th><th>Voorbeeld</th><th>Kenmerken</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>De gebruikelijke RGB-kleurruimte voor web en CSS. Hexkleurcodes en gewone <code>rgb()</code>-waarden worden in principe als sRGB behandeld. <code>color(srgb ...)</code> is een CSS Color Module Level 4-indeling.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Een kleurruimte met hetzelfde gamut als sRGB, maar met gelineariseerde componentwaarden. Deze wordt gebruikt voor kleurberekeningen en compositing.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Een kleurruimte met een groter gamut dan sRGB, gebruikt op wide-gamut-schermen en sommige mobiele apparaten.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Een ruimere kleurruimte dan sRGB, soms gebruikt bij fotobewerking en drukgerichte workflows.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Een RGB-kleurruimte met een nog groter gamut dan Adobe RGB, gebruikt als werkruimte bij fotobewerking.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Een RGB-kleurruimte met een zeer groot gamut, gebruikt in UHDTV- en HDR-videostandaarden.</td></tr>
		</tbody>
	</table>
</div>

<p>Kleuren die in RGB-kleurruimten met groot gamut zijn opgegeven, kunnen op sRGB-schermen of met gewone hexkleurcodes mogelijk niet nauwkeurig worden weergegeven. Wanneer DenCode converteert naar <code>#RRGGBB</code> of numeriek <code>rgb(R G B)</code>, worden componenten buiten het sRGB-bereik behandeld zodat ze binnen <code>0</code> tot <code>255</code> passen. Bij keuze van <code>color(display-p3 ...)</code> of <code>color(a98-rgb ...)</code> kunnen ze worden weergegeven als componentwaarden van de gekozen kleurruimte.</p>
