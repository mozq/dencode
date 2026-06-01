<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über Oklab-Farbe</h3>
<p>Oklab-Farbe ist ein wahrnehmungsbasierter Farbraum, der Farben mit Helligkeit und zwei Farbkomponenten darstellt. Wie Lab-Farbe trennt Oklab Helligkeit und Farbigkeit, ist aber als neueres Modell so entworfen, dass Farbänderungen dem visuellen Eindruck näherkommen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponente</th><th>Bedeutung</th><th>Beispielwert</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Helligkeit</td><td>Beschreibt die Helligkeit der Farbe. 0% ist Schwarz, 100% ist Weiß.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Beschreibt die Richtung von Grün nach Rot. Negative Werte sind grünlicher, positive Werte rötlicher.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Beschreibt die Richtung von Blau nach Gelb. Negative Werte sind bläulicher, positive Werte gelblicher.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Zum Beispiel lassen sich wichtige Farben wie Rot wie folgt darstellen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>Oklab Schreibweise</th><th>RGB-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Grün</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blau</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Weiß</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Schwarz</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Um Transparenz einzuschließen, fügen Sie einen Alphawert hinzu. Zum Beispiel kann halbtransparentes Rot so dargestellt werden: <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Umgang mit Helligkeit, a und b</h4>
<p>Die Helligkeit wird im Bereich von 0% bis 100% behandelt. Werte unter 0% werden als 0% behandelt, Werte über 100% werden auf 100% begrenzt.</p>

<p><code>a</code> und <code>b</code> werden als positive oder negative Zahlen angegeben. Ihre Werte werden nicht auf einen festen Bereich beschnitten, sondern als angegebene Oklab-Komponenten behandelt.</p>

<h4>Unterschied zwischen Oklab und Oklch</h4>
<p>Oklab stellt Farben mit den rechtwinkligen Koordinaten <code>a</code> und <code>b</code> dar. <a href="${dc:h(basePath)}/color/oklch">Oklch</a> verwendet denselben wahrnehmungsbasierten Ansatz wie Oklab, stellt den Farbton aber mit Chroma und Farbton dar.</p>

<h4>Unterschied zwischen Oklab und Lab</h4>
<p>Oklab ist so entworfen, dass Änderungen von Farbton oder Chroma optisch gleichmäßiger wirken als bei <a href="${dc:h(basePath)}/color/lab">Lab</a>. Da Helligkeit und Farbkomponenten näher an die menschliche Wahrnehmung angepasst sind, führen gleiche Änderungen der Komponentenwerte meist zu gleichmäßigeren visuellen Änderungen. Beim Erzeugen von Farbverläufen oder beim Ändern nur des Chromas verschieben sich Helligkeit und Farbton daher weniger unnatürlich.</p>
