<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über Lab-Farbe</h3>
<p>Lab-Farbe ist ein Farbraum, der Farben mit Helligkeit, einer Grün-Rot-Achse und einer Blau-Gelb-Achse darstellt. Anders als RGB, das die roten, grünen und blauen Komponenten eines Displays direkt angibt, trennt Lab Helligkeit und Farbigkeit auf eine Weise, die der menschlichen Wahrnehmung näherkommt.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponente</th><th>Bedeutung</th><th>Beispielwert</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Helligkeit</td><td>Beschreibt die Helligkeit der Farbe. 0% ist Schwarz, 100% ist Weiß.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Beschreibt die Richtung von Grün nach Rot. Negative Werte sind grünlicher, positive Werte rötlicher.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Beschreibt die Richtung von Blau nach Gelb. Negative Werte sind bläulicher, positive Werte gelblicher.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Zum Beispiel lassen sich wichtige Farben wie Rot wie folgt darstellen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>Lab Schreibweise</th><th>RGB-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Grün</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blau</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Weiß</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Schwarz</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Um Transparenz einzuschließen, fügen Sie einen Alphawert hinzu. Zum Beispiel kann halbtransparentes Rot so dargestellt werden: <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Umgang mit Helligkeit, a und b</h4>
<p>Die Helligkeit wird im Bereich von 0% bis 100% behandelt. Werte unter 0% werden als 0% behandelt, Werte über 100% werden auf 100% begrenzt.</p>

<p><code>a</code> und <code>b</code> werden als positive oder negative Zahlen angegeben. Ihre Werte werden nicht auf einen festen Bereich beschnitten, sondern als angegebene Lab-Komponenten behandelt.</p>

<h4>Unterschied zwischen Lab und LCH</h4>
<p>Lab stellt Farben mit den rechtwinkligen Koordinaten <code>a</code> und <code>b</code> dar. <a href="${dc:h(basePath)}/color/lch">LCH</a> verwendet denselben wahrnehmungsbasierten Ansatz wie Lab, stellt den Farbton aber mit Chroma und Farbton dar.</p>
