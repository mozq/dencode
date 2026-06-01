<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over CMYK-kleur</h3>
<p>CMYK-kleur is een kleurmodel dat kleuren weergeeft met vier componenten: cyaan, magenta, geel en zwart (key plate). Het wordt vooral gebruikt in drukwerk en desktop publishing, en is gebaseerd op subtractieve kleurmenging, waarbij kleuren ontstaan door inkten over elkaar te leggen.</p>

<p>In CMYK wordt elke component weergegeven in het bereik van 0% tot 100%. Meestal geven <code>C</code>, <code>M</code> en <code>Y</code> de kleurtoon aan, terwijl <code>K</code> de hoeveelheid zwart aangeeft. Als alle componenten 0% zijn, is de kleur wit; als <code>K</code> 100% is, ligt de kleur dicht bij zwart.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kleur</th><th>CMYK-notatie</th></tr>
		</thead>
		<tbody>
			<tr><td>Rood</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Cyaan</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Geel</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Wit</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Zwart</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Voeg een alfawaarde toe om transparantie op te nemen. Halftransparant rood kan bijvoorbeeld worden weergegeven als <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Kleurprofielen</h4>
<p>In DenCode kunt u verschillende kleurprofielen kiezen. De ondersteunde kleurprofielen staan hieronder.</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYK-kleur</caption>
		<thead>
			<tr><th>Kleurprofiel</th><th>Voorbeeld van CMYK-notatie</th><th>Kenmerken</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Een eenvoudige RGB- en CMYK-conversie. Deze hangt niet af van specifieke drukomstandigheden of ICC-profielen.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Een CMYK-kleurprofiel dat U.S. Web Coated (SWOP) v2 benadert.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Een CMYK-conversie met het ICC-profiel SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Een CMYK-conversie met het ICC-profiel GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Een CMYK-conversie met het ICC-profiel FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Een CMYK-kleurprofiel dat FOGRA51 benadert.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Een CMYK-kleurprofiel dat FOGRA52 benadert.</td></tr>
		</tbody>
	</table>
</div>

<p>CMYK-kleuren met een “ICC-profiel” of “benaderend kleurprofiel” worden weergegeven in de CSS-indeling voor aangepaste kleurruimten <code>color(--profile C% M% Y% K%)</code>. Voor gebruik in echte CSS specificeert u het bijbehorende ICC-profiel met <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Benaderende kleurprofielen berekenen benaderende CMYK-kleuren op basis van gepubliceerde Characterization data. Daardoor kan de weergegeven kleur iets afwijken, zelfs wanneer een vergelijkbaar ICC-profiel met CSS <code>@color-profile</code> wordt gebruikt.</p>

<h4>Verschil tussen CMYK en RGB</h4>
<p>CMYK is een subtractief kleurmodel voor drukinkten. <a href="${dc:h(basePath)}/color/rgb">RGB</a> is daarentegen een additief kleurmodel voor licht, zoals bij schermen. Zelfs bij kleuren die er hetzelfde uitzien, kunnen CMYK- en RGB-componentwaarden sterk verschillen.</p>
