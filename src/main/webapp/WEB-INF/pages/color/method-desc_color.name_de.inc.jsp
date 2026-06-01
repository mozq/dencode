<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über Farbnamen</h3>
<p>Farbnamen sind eine Möglichkeit, Farben mit in CSS definierten benannten Farben darzustellen. Da Farben mit Schlüsselwörtern wie <code>red</code>, <code>blue</code> und <code>orange</code> angegeben werden können, lassen sich häufig verwendete Farben in HTML und CSS gut lesbar schreiben.</p>

<p>Zum Beispiel lassen sich wichtige Farben wie Rot wie folgt darstellen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>Farbname</th><th>RGB-Schreibweise</th><th>Hex-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lime</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Blau</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Weiß</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Schwarz</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Orange</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Transparent</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> ist ein besonderer Farbname, der transparentes Schwarz darstellt.</p>

<p>Farbnamen enthalten, mit Ausnahme von <code>transparent</code>, keine Transparenzinformationen. In DenCode wird eine Farbe mit Transparenz, wenn sie als benannte Farbe dargestellt werden kann, mit der relativen CSS-Farbsyntax angezeigt. Halbtransparentes <code>red</code> wird zum Beispiel als <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code> dargestellt.</p>

<h4>Unterschied zwischen Farbnamen und RGB</h4>
<p>Farbnamen stellen typische Farben mit gut lesbaren Schlüsselwörtern dar. <a href="${dc:h(basePath)}/color/rgb">RGB</a> gibt dagegen die Komponentenwerte für Rot, Grün und Blau an und kann deutlich mehr Farben numerisch darstellen. Farbnamen werden häufig verwendet, wenn Lesbarkeit in CSS oder HTML wichtig ist; RGB-Schreibweise wird oft für genaue Farbangaben oder Farbkonvertierungen genutzt.</p>
