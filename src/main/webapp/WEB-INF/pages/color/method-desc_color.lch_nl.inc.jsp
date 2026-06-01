<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over LCH-kleur</h3>
<p>LCH-kleur is een kleurruimte die kleuren weergeeft met lichtheid, chroma en tint. Het gebruikt hetzelfde perceptuele idee als Lab, maar drukt de kleur uit met chroma en een hoek, waardoor kleursterkte en tint afzonderlijk gemakkelijker aan te passen zijn.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Betekenis</th><th>Voorbeeldwaarde</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lichtheid</td><td>Geeft de lichtheid van de kleur aan. 0% is zwart en 100% is wit.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Geeft de kleursterkte aan. 0 is achromatisch en grotere waarden geven levendigere kleuren.</td><td><code>80</code></td></tr>
			<tr><td>H: Tint</td><td>Geeft de tint als hoek weer.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Belangrijke kleuren zoals rood kunnen bijvoorbeeld als volgt worden weergegeven.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>LCH notatie</th><th>RGB-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Groen</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blauw</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Wit</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Zwart</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Voeg een alfawaarde toe om transparantie op te nemen. Halftransparant rood kan bijvoorbeeld worden weergegeven als <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Behandeling van lichtheid, chroma en tint</h4>
<p>Geeft de lichtheid van de kleur aan. 0% is zwart en 100% is wit Waarden onder 0% worden als 0% behandeld en waarden boven 100% worden op 100% begrensd.</p>

<p>Geeft de kleursterkte aan. 0 is achromatisch en grotere waarden geven levendigere kleuren. Negatief chroma wordt als 0 behandeld. Wanneer chroma 0 is, wordt de kleur achromatisch en wordt de tint als 0deg behandeld.</p>

<p>De tint wordt als hoek behandeld. <code>lch(54.29% 106.8372 400.86deg)</code> wordt behandeld als dezelfde kleur als <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Verschil tussen LCH en Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> geeft kleuren weer met de rechthoekige coördinaten <code>a</code> en <code>b</code>. LCH drukt dezelfde kleur uit met chroma en tint, wat aanpassingen bij dezelfde lichtheid intuïtiever kan maken.</p>
