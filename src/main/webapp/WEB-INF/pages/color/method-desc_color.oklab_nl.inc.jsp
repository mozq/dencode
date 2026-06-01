<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over Oklab-kleur</h3>
<p>Oklab-kleur is een perceptuele kleurruimte die kleuren weergeeft met lichtheid en twee kleurcomponenten. Net als Lab scheidt Oklab helderheid en kleur, maar als nieuwer model is het ontworpen zodat kleurveranderingen dichter bij de visuele indruk liggen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Betekenis</th><th>Voorbeeldwaarde</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lichtheid</td><td>Geeft de lichtheid van de kleur aan. 0% is zwart en 100% is wit.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Geeft de richting van groen naar rood aan. Negatieve waarden zijn groener en positieve waarden roder.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Geeft de richting van blauw naar geel aan. Negatieve waarden zijn blauwer en positieve waarden geler.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Belangrijke kleuren zoals rood kunnen bijvoorbeeld als volgt worden weergegeven.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>Oklab notatie</th><th>RGB-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Groen</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blauw</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Wit</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Zwart</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Voeg een alfawaarde toe om transparantie op te nemen. Halftransparant rood kan bijvoorbeeld worden weergegeven als <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Behandeling van lichtheid, a en b</h4>
<p>Geeft de lichtheid van de kleur aan. 0% is zwart en 100% is wit Waarden onder 0% worden als 0% behandeld en waarden boven 100% worden op 100% begrensd.</p>

<p><code>a</code> en <code>b</code> worden opgegeven als positieve of negatieve getallen. Hun waarden worden niet tot een vaste reeks begrensd en worden als opgegeven componenten behandeld.</p>

<h4>Verschil tussen Oklab en Oklch</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> gebruikt hetzelfde perceptuele idee als Oklab, maar drukt de kleur uit met chroma en tint.</p>

<h4>Verschil tussen Oklab en Lab</h4>
<p>Oklab is ontworpen om visuele veranderingen gelijkmatiger te maken dan <a href="${dc:h(basePath)}/color/lab">Lab</a> wanneer tint of chroma verandert.</p>
