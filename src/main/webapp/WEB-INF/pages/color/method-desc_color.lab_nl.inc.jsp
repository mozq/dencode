<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over Lab-kleur</h3>
<p>Lab-kleur is een kleurruimte die kleuren weergeeft met lichtheid, een as van groen naar rood en een as van blauw naar geel. In tegenstelling tot RGB, dat de rode, groene en blauwe componenten van een scherm direct opgeeft, scheidt Lab helderheid en kleur op een manier die dichter bij de menselijke waarneming ligt.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Component</th><th>Betekenis</th><th>Voorbeeldwaarde</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lichtheid</td><td>Geeft de lichtheid van de kleur aan. 0% is zwart en 100% is wit.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Geeft de richting van groen naar rood aan. Negatieve waarden zijn groener en positieve waarden roder.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Geeft de richting van blauw naar geel aan. Negatieve waarden zijn blauwer en positieve waarden geler.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Belangrijke kleuren zoals rood kunnen bijvoorbeeld als volgt worden weergegeven.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>Lab notatie</th><th>RGB-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Groen</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blauw</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Wit</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Zwart</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Voeg een alfawaarde toe om transparantie op te nemen. Halftransparant rood kan bijvoorbeeld worden weergegeven als <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Behandeling van lichtheid, a en b</h4>
<p>Geeft de lichtheid van de kleur aan. 0% is zwart en 100% is wit Waarden onder 0% worden als 0% behandeld en waarden boven 100% worden op 100% begrensd.</p>

<p><code>a</code> en <code>b</code> worden opgegeven als positieve of negatieve getallen. Hun waarden worden niet tot een vaste reeks begrensd en worden als opgegeven componenten behandeld.</p>

<h4>Verschil tussen Lab en LCH</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> gebruikt hetzelfde perceptuele idee als Lab, maar drukt de kleur uit met chroma en tint.</p>
