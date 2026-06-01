<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über HWB-Farben</h3>
<p>HWB ist ein Farbmodell, das Farben mit den drei Komponenten Farbton, Weißanteil und Schwarzanteil beschreibt. Der Farbton legt die Grundfarbe fest, während Weißanteil und Schwarzanteil angeben, wie viel Weiß oder Schwarz beigemischt wird. Dadurch lassen sich Farben intuitiv aufhellen, abdunkeln oder in Richtung Grau verschieben.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponente</th><th>Bedeutung</th><th>Beispielwert</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Farbton</td><td>Stellt den Farbton als Winkel dar. Rot liegt etwa bei 0deg, Grün bei 120deg und Blau bei 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Weißanteil</td><td>Gibt an, wie viel Weiß der Farbe beigemischt wird. Je größer der Wert, desto weißlicher wird die Farbe.</td><td><code>20%</code></td></tr>
			<tr><td>B: Schwarzanteil</td><td>Gibt an, wie viel Schwarz der Farbe beigemischt wird. Je größer der Wert, desto dunkler wird die Farbe.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Zum Beispiel lassen sich wichtige Farben wie Rot wie folgt darstellen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>HWB-Schreibweise</th><th>RGB-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Grün</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blau</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Weiß</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Schwarz</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Um Transparenz einzuschließen, fügen Sie einen Alpha-Wert hinzu. Halbtransparentes Rot kann zum Beispiel als <code>hwb(0deg 0% 0% / 0.5)</code> dargestellt werden.</p>

<h4>Behandlung von Farbton, Weißanteil und Schwarzanteil</h4>
<p>Der Farbton wird als Winkel behandelt; Werte über 360deg oder negative Werte werden auf den Bereich von 0deg bis 360deg normalisiert. Zum Beispiel wird <code>hwb(360deg 0% 0%)</code> als dieselbe Farbe wie <code>hwb(0deg 0% 0%)</code> behandelt, und <code>hwb(-120deg 0% 0%)</code> als dieselbe Farbe wie <code>hwb(240deg 0% 0%)</code>.</p>

<p>Weißanteil und Schwarzanteil werden im Bereich von 0% bis 100% behandelt. Ein größerer Weißanteil verschiebt die Farbe näher zu Weiß, ein größerer Schwarzanteil näher zu Schwarz. Wenn die Summe aus Weißanteil und Schwarzanteil 100% oder mehr beträgt, wird die Farbe unabhängig vom Farbton als gräuliche Farbe behandelt.</p>

<h4>Unterschied zwischen HWB und HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> passt Farben über Sättigung und Helligkeit an und eignet sich daher zum Festlegen von Lebendigkeit und Helligkeit. HWB passt Farben über die beigemischte Menge von Weiß und Schwarz an, wodurch sich Vorgänge wie „mit demselben Farbton weißlicher machen“ oder „durch Schwarz abdunkeln“ leicht beschreiben lassen.</p>

<p>HWB ist jedoch ebenfalls kein wahrnehmungsgleichmäßiger Farbraum. Wenn visuelle Helligkeit oder Farbunterschiede leichter behandelt werden sollen, können Farbräume wie <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> und <a href="${dc:h(basePath)}/color/oklch">Oklch</a> verwendet werden.</p>
