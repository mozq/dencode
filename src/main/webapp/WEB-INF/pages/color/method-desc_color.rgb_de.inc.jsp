<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über RGB-Farben</h3>
<p>RGB ist ein Farbmodell, das Farben durch Rot, Grün und Blau als Lichtkomponenten darstellt. Es wird häufig für Farben auf Bildschirmen, Webseiten und Bilddaten verwendet.</p>

<p>In RGB wird jede Komponente als Zahl angegeben, meist als Ganzzahl von 0 bis 255 oder als Prozentwert von 0% bis 100%. Sind alle Komponenten 0, ist die Farbe schwarz; sind alle maximal, ist sie weiß.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>RGB-Schreibweise</th><th>Hex-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Grün</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Blau</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Weiß</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Schwarz</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGB-Farben können als Funktion oder hexadezimal geschrieben werden. Rot kann zum Beispiel als <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> oder <code>#f00</code> dargestellt werden.</p>

<p>Um Transparenz einzuschließen, fügen Sie einen Alpha-Wert hinzu. Halbtransparentes Rot kann zum Beispiel als <code>rgb(255 0 0 / 50%)</code> oder <code>#ff000080</code> dargestellt werden.</p>

<p>Die RGB-Farbkonvertierung von DenCode unterstützt die folgenden Schreiboptionen.</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGB-Farbe (Hex)</caption>
		<thead>
			<tr><th>Schreiboption</th><th>Format</th><th>Beispiel</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB-Farbe</caption>
		<thead>
			<tr><th>Schreiboption</th><th>Format</th><th>Beispiel</th></tr>
		</thead>
		<tbody>
			<tr><td>Zahl</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Prozentwert</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> ist keine standardmäßige CSS-Hex-Farbschreibweise, sondern ein ARGB-Format, das manchmal in Programmen und Anwendungseinstellungen verwendet wird. Das führende <code>AA</code> steht für Alpha, danach folgen <code>RR</code>, <code>GG</code> und <code>BB</code> für Rot, Grün und Blau.</p>

<h4>sRGB und andere RGB-Farbräume</h4>
<p>RGB ist ein Farbmodell mit den drei Komponenten Rot, Grün und Blau. Dieselben RGB-Werte können jedoch je nach Farbraum unterschiedlich aussehen. Im Web übliche Werte wie <code>rgb()</code> und <code>#RRGGBB</code> werden normalerweise als Farben im sRGB-Farbraum behandelt.</p>

<p>CSS Color Module Level 4 definiert auch RGB-Farbräume mit anderem Farbumfang als sRGB, etwa Display P3 und ProPhoto RGB. DenCode unterstützt auch Konvertierungen für diese Farbräume.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbraum</th><th>Format</th><th>Beispiel</th><th>Merkmale</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Der übliche RGB-Farbraum für Web und CSS. Hex-Farbcodes und normale <code>rgb()</code>-Werte werden grundsätzlich als sRGB behandelt. <code>color(srgb ...)</code> ist ein Format aus CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Ein Farbraum mit demselben Farbumfang wie sRGB, aber mit linearisierten Komponentenwerten. Er wird für Farbberechnungen und Compositing verwendet.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Ein Farbraum mit größerem Farbumfang als sRGB, der auf Wide-Gamut-Displays und manchen Mobilgeräten verwendet wird.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Ein größerer Farbraum als sRGB, der manchmal in Fotoverarbeitung und druckorientierten Workflows verwendet wird.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Ein RGB-Farbraum mit noch größerem Farbumfang als Adobe RGB, der als Arbeitsfarbraum in der Fotoverarbeitung verwendet wird.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Ein RGB-Farbraum mit sehr großem Farbumfang, der in UHDTV- und HDR-Videostandards verwendet wird.</td></tr>
		</tbody>
	</table>
</div>

<p>Farben aus RGB-Farbräumen mit großem Farbumfang können auf sRGB-Bildschirmen oder mit normalen Hex-Farbcodes möglicherweise nicht exakt dargestellt werden. Wenn DenCode in <code>#RRGGBB</code> oder numerisches <code>rgb(R G B)</code> konvertiert, werden Komponenten außerhalb des in sRGB darstellbaren Bereichs so behandelt, dass sie in den Bereich von <code>0</code> bis <code>255</code> passen. Wird dagegen ein Farbraum wie <code>color(display-p3 ...)</code> oder <code>color(a98-rgb ...)</code> gewählt, können die Werte als Komponenten des gewählten Farbraums angezeigt werden.</p>
