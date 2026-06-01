<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over HWB-kleur</h3>
<p>HWB-kleur is een kleurmodel dat kleuren weergeeft met tint, witheid en zwartheid. De tint bepaalt de basiskleur, terwijl witheid en zwartheid aangeven hoeveel wit en zwart wordt gemengd. Daardoor zijn aanpassingen zoals lichter maken, donkerder maken of richting grijs brengen intuïtief te begrijpen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Betekenis</th><th>Voorbeeldwaarde</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Tint</td><td>Geeft de kleurtoon als hoek weer. Rood ligt rond 0deg, groen rond 120deg en blauw rond 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Witheid</td><td>Geeft de hoeveelheid wit aan die met de kleur wordt gemengd. Hoe groter de waarde, hoe witter de kleur wordt.</td><td><code>20%</code></td></tr>
			<tr><td>B: Zwartheid</td><td>Geeft de hoeveelheid zwart aan die met de kleur wordt gemengd. Hoe groter de waarde, hoe donkerder de kleur wordt.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Belangrijke kleuren zoals rood kunnen bijvoorbeeld als volgt worden weergegeven.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>HWB-notatie</th><th>RGB-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Groen</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blauw</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Wit</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Zwart</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Voeg een alfawaarde toe om transparantie op te nemen. Halftransparant rood kan bijvoorbeeld worden weergegeven als <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Behandeling van tint, witheid en zwartheid</h4>
<p>Tint wordt als hoek behandeld; waarden groter dan 360deg of negatieve waarden worden genormaliseerd naar het bereik van 0deg tot 360deg. Bijvoorbeeld, <code>hwb(360deg 0% 0%)</code> wordt behandeld als dezelfde kleur als <code>hwb(0deg 0% 0%)</code>, en <code>hwb(-120deg 0% 0%)</code> als dezelfde kleur als <code>hwb(240deg 0% 0%)</code>.</p>

<p>Witheid en zwartheid worden behandeld binnen het bereik van 0% tot 100%. Een grotere witheid brengt de kleur dichter bij wit, en een grotere zwartheid dichter bij zwart. Als de som van witheid en zwartheid 100% of meer is, wordt de kleur ongeacht de tint als een grijsachtige kleur behandeld.</p>

<h4>Verschil tussen HWB en HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> past kleur aan met verzadiging en lichtheid, waardoor het geschikt is om levendigheid en helderheid aan te geven. HWB past kleur aan met de hoeveelheid gemengd wit en zwart, waardoor bewerkingen zoals “witter maken met dezelfde tint” of “zwart toevoegen om donkerder te maken” makkelijk te beschrijven zijn.</p>

<p>HWB is echter ook geen perceptueel uniforme kleurruimte. Wanneer u visuele helderheid of kleurverschillen gemakkelijker wilt behandelen, kunnen kleurruimten zoals <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> en <a href="${dc:h(basePath)}/color/oklch">Oklch</a> worden gebruikt.</p>
