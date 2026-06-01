<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over HSL-kleur</h3>
<p>HSL-kleur is een kleurmodel dat kleuren weergeeft met tint, verzadiging en lichtheid. In tegenstelling tot RGB, dat de sterkte van rood, groen en blauw licht direct opgeeft, scheidt HSL kleurtoon, levendigheid en helderheid, waardoor het handig is voor kleurcorrecties en CSS-ontwerp.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Betekenis</th><th>Voorbeeldwaarde</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Tint</td><td>Geeft de kleurtoon als hoek weer. Rood ligt rond 0deg, groen rond 120deg en blauw rond 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Verzadiging</td><td>Geeft de levendigheid van de kleur aan. 0% is achromatisch en 100% is de meest levendige kleur.</td><td><code>50%</code></td></tr>
			<tr><td>L: Lichtheid</td><td>Geeft de helderheid van de kleur aan. 0% is zwart, 50% is normale helderheid en 100% is wit.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Belangrijke kleuren zoals rood kunnen bijvoorbeeld als volgt worden weergegeven.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>HSL-notatie</th><th>RGB-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Groen</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blauw</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Wit</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Zwart</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Voeg een alfawaarde toe om transparantie op te nemen. Halftransparant rood kan bijvoorbeeld worden weergegeven als <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>Als invoer kunt u de spatiegescheiden notatie <code>hsl(0deg 100% 50%)</code> gebruiken, maar ook de oudere kommagescheiden notatie <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Behandeling van tint, verzadiging en lichtheid</h4>
<p>Tint wordt als hoek behandeld; waarden groter dan 360deg of negatieve waarden worden genormaliseerd naar het bereik van 0deg tot 360deg. Bijvoorbeeld, <code>hsl(360deg 100% 50%)</code> wordt behandeld als dezelfde kleur als <code>hsl(0deg 100% 50%)</code>, en <code>hsl(-120deg 100% 50%)</code> als dezelfde kleur als <code>hsl(240deg 100% 50%)</code>.</p>

<p>Verzadiging en lichtheid worden behandeld in het bereik van 0% tot 100%. Bij 0% verzadiging wordt de kleur een achromatische grijstint, ongeacht de tint. Bij 0% lichtheid is de kleur zwart; bij 100% is de kleur wit.</p>

<h4>Verschil tussen HSL en RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> specificeert de rode, groene en blauwe componenten direct en ligt daardoor dicht bij schermweergave en afbeeldingsgegevens. HSL scheidt tint, verzadiging en lichtheid, waardoor bewerkingen zoals “lichter maken met dezelfde tint” of “alleen de verzadiging verlagen” eenvoudiger zijn.</p>

<p>HSL is echter geen perceptueel uniforme kleurruimte. Wanneer visuele helderheid of kleurverschillen gemakkelijker moeten worden behandeld, kunnen kleurruimten zoals <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> en <a href="${dc:h(basePath)}/color/oklch">Oklch</a> worden gebruikt.</p>
