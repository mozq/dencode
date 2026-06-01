<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über HSL-Farbe</h3>
<p>HSL-Farbe ist ein Farbmodell, das Farben mit Farbton, Sättigung und Helligkeit darstellt. Anders als RGB, das die Stärke von rotem, grünem und blauem Licht direkt angibt, trennt HSL Farbton, Farbigkeit und Helligkeit und ist daher nützlich für Farbanpassungen und CSS-Design.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponente</th><th>Bedeutung</th><th>Beispielwert</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Farbton</td><td>Beschreibt den Farbton als Winkel. Rot liegt bei etwa 0deg, Grün bei 120deg und Blau bei 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Sättigung</td><td>Beschreibt die Farbigkeit. 0% ist unbunt, 100% ist die kräftigste Farbe.</td><td><code>50%</code></td></tr>
			<tr><td>L: Helligkeit</td><td>Beschreibt die Helligkeit. 0% ist Schwarz, 50% eine normale Helligkeit und 100% Weiß.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Zum Beispiel lassen sich wichtige Farben wie Rot wie folgt darstellen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>HSL-Schreibweise</th><th>RGB-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Grün</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blau</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Weiß</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Schwarz</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Um Transparenz einzuschließen, fügen Sie einen Alphawert hinzu. Halbtransparentes Rot kann zum Beispiel als <code>hsl(0deg 100% 50% / 0.5)</code> dargestellt werden.</p>

<p>Als Eingabe können Sie die durch Leerzeichen getrennte Schreibweise <code>hsl(0deg 100% 50%)</code> sowie die ältere durch Kommas getrennte Schreibweise <code>hsl(0deg, 100%, 50%)</code> verwenden.</p>

<h4>Umgang mit Farbton, Sättigung und Helligkeit</h4>
<p>Der Farbton wird als Winkel behandelt; Werte über 360deg und negative Werte werden auf den Bereich von 0deg bis 360deg normalisiert. Zum Beispiel wird <code>hsl(360deg 100% 50%)</code> als dieselbe Farbe wie <code>hsl(0deg 100% 50%)</code> behandelt, und <code>hsl(-120deg 100% 50%)</code> als dieselbe Farbe wie <code>hsl(240deg 100% 50%)</code>.</p>

<p>Sättigung und Helligkeit werden im Bereich von 0% bis 100% behandelt. Bei 0% Sättigung wird die Farbe unabhängig vom Farbton zu einem unbunten Grau. Bei 0% Helligkeit ist die Farbe Schwarz, bei 100% Weiß.</p>

<h4>Unterschied zwischen HSL und RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> gibt die roten, grünen und blauen Komponenten direkt an und liegt damit nahe an Bildschirmdarstellung und Bilddaten. HSL trennt Farbton, Sättigung und Helligkeit, sodass Anpassungen wie „bei gleichem Farbton heller machen“ oder „nur die Sättigung verringern“ einfacher sind.</p>

<p>HSL ist jedoch kein vollständig wahrnehmungsgleichmäßiger Farbraum. Wenn visuelle Helligkeit oder Farbabstände leichter behandelt werden sollen, werden Farbräume wie <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> oder <a href="${dc:h(basePath)}/color/oklch">Oklch</a> verwendet.</p>
