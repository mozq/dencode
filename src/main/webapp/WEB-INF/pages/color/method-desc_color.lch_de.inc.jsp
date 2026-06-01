<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über LCH-Farbe</h3>
<p>LCH-Farbe ist ein Farbraum, der Farben mit Helligkeit, Chroma und Farbton darstellt. Sie verwendet denselben wahrnehmungsbasierten Ansatz wie Lab-Farbe, stellt den Farbton aber mit Chroma und einem Winkel dar, sodass Farbintensität und Farbton leichter getrennt angepasst werden können.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponente</th><th>Bedeutung</th><th>Beispielwert</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Helligkeit</td><td>Beschreibt die Helligkeit der Farbe. 0% ist Schwarz, 100% ist Weiß.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Beschreibt die Stärke der Farbe. 0 ist unbunt, größere Werte ergeben kräftigere Farben.</td><td><code>80</code></td></tr>
			<tr><td>H: Farbton</td><td>Beschreibt den Farbton als Winkel.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Zum Beispiel lassen sich wichtige Farben wie Rot wie folgt darstellen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>LCH Schreibweise</th><th>RGB-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Grün</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blau</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Weiß</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Schwarz</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Um Transparenz einzuschließen, fügen Sie einen Alphawert hinzu. Zum Beispiel kann halbtransparentes Rot so dargestellt werden: <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Umgang mit Helligkeit, Chroma und Farbton</h4>
<p>Die Helligkeit wird im Bereich von 0% bis 100% behandelt. Werte unter 0% werden als 0% behandelt, Werte über 100% werden auf 100% begrenzt.</p>

<p>Chroma wird als Wert ab 0 behandelt. Negatives Chroma wird als 0 behandelt. Wenn Chroma 0 ist, wird die Farbe unbunt und der Farbton als 0deg behandelt.</p>

<p>Der Farbton wird als Winkel behandelt; Werte über 360deg und negative Werte werden auf den Bereich von 0deg bis 360deg normalisiert. Zum Beispiel wird <code>lch(54.29% 106.8372 400.86deg)</code> als dieselbe Farbe wie <code>lch(54.29% 106.8372 40.86deg)</code> behandelt.</p>

<h4>Unterschied zwischen LCH und Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> stellt Farben mit den rechtwinkligen Koordinaten <code>a</code> und <code>b</code> dar. LCH wandelt den Farbton in Chroma und Farbton um. Dadurch ist LCH oft intuitiver, wenn Chroma oder Farbton bei gleicher Helligkeit angepasst werden sollen.</p>
