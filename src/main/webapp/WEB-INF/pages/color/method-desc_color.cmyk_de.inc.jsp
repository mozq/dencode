<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über CMYK-Farben</h3>
<p>CMYK ist ein Farbmodell, das Farben mit vier Komponenten beschreibt: Cyan, Magenta, Gelb und Schwarz (Key Plate). Es wird vor allem im Druck und im Desktop-Publishing verwendet und basiert auf subtraktiver Farbmischung, bei der Farben durch übereinanderliegende Tinten entstehen.</p>

<p>In CMYK wird jede Komponente im Bereich von 0% bis 100% angegeben. Im Allgemeinen beschreiben <code>C</code>, <code>M</code> und <code>Y</code> den Farbton, während <code>K</code> die Menge an Schwarz angibt. Wenn alle Komponenten 0% sind, ist die Farbe weiß; wenn <code>K</code> 100% ist, liegt die Farbe nahe bei Schwarz.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Farbe</th><th>CMYK-Schreibweise</th></tr>
		</thead>
		<tbody>
			<tr><td>Rot</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Cyan</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Gelb</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Weiß</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Schwarz</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Um Transparenz einzuschließen, fügen Sie einen Alpha-Wert hinzu. Halbtransparentes Rot kann zum Beispiel als <code>device-cmyk(0% 100% 100% 0% / 0.5)</code> dargestellt werden.</p>

<h4>Farbprofile</h4>
<p>In DenCode können mehrere Farbprofile ausgewählt werden. Die unterstützten Farbprofile sind unten aufgeführt.</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYK-Farbe</caption>
		<thead>
			<tr><th>Farbprofil</th><th>CMYK-Beispiel</th><th>Merkmale</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Eine einfache Umrechnung zwischen RGB und CMYK. Sie hängt nicht von bestimmten Druckbedingungen oder ICC-Profilen ab.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Ein CMYK-Farbprofil, das U.S. Web Coated (SWOP) v2 annähert.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Eine CMYK-Umrechnung mit dem ICC-Profil SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Eine CMYK-Umrechnung mit dem ICC-Profil GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Eine CMYK-Umrechnung mit dem ICC-Profil FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Ein CMYK-Farbprofil, das FOGRA51 annähert.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Ein CMYK-Farbprofil, das FOGRA52 annähert.</td></tr>
		</tbody>
	</table>
</div>

<p>CMYK-Farben mit einem „ICC-Profil“ oder einem „angenäherten Farbprofil“ werden im CSS-Format für benutzerdefinierte Farbräume <code>color(--profile C% M% Y% K%)</code> dargestellt. Für die Verwendung in echtem CSS geben Sie das entsprechende ICC-Profil mit <code>@color-profile</code> an.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Angenäherte Farbprofile berechnen angenäherte CMYK-Farben auf Grundlage veröffentlichter Characterization data. Daher kann die angezeigte Farbe leicht abweichen, auch wenn in CSS mit <code>@color-profile</code> ein ähnliches ICC-Profil verwendet wird.</p>

<h4>Unterschied zwischen CMYK und RGB</h4>
<p>CMYK ist ein subtraktives Farbmodell für Druckfarben. <a href="${dc:h(basePath)}/color/rgb">RGB</a> ist dagegen ein additives Farbmodell für Licht, etwa bei Displays. Selbst bei gleich aussehenden Farben können sich die Komponentenwerte von CMYK und RGB stark unterscheiden.</p>
