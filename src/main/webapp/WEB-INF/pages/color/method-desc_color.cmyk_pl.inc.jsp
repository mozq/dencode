<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informacje o kolorze CMYK</h3>
<p>Kolor CMYK to model koloru opisujący barwy czterema składnikami: cyjanem, magentą, żółtym i czarnym (key plate). Jest używany głównie w druku i DTP, a opiera się na subtraktywnym mieszaniu kolorów, w którym barwy powstają przez nakładanie farb.</p>

<p>W CMYK każda składowa jest wyrażana w zakresie od 0% do 100%. Zwykle <code>C</code>, <code>M</code> i <code>Y</code> opisują ton koloru, a <code>K</code> ilość czerni. Gdy wszystkie składowe wynoszą 0%, kolor jest biały; gdy <code>K</code> wynosi 100%, kolor jest bliski czerni.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Notacja CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Cyjan</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Żółty</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Biały</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Czarny</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczysty czerwony można zapisać jako <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Profile kolorów</h4>
<p>DenCode pozwala wybrać kilka profili kolorów. Obsługiwane profile są wymienione poniżej.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Kolor CMYK</caption>
		<thead>
			<tr><th>Profil koloru</th><th>Przykład notacji CMYK</th><th>Charakterystyka</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Prosta konwersja między RGB i CMYK. Nie zależy od konkretnych warunków druku ani profili ICC.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Profil koloru CMYK przybliżający U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Konwersja CMYK z użyciem profilu ICC SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Konwersja CMYK z użyciem profilu ICC GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Konwersja CMYK z użyciem profilu ICC FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Profil koloru CMYK przybliżający FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Profil koloru CMYK przybliżający FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>Kolory CMYK z „profilem ICC” lub „przybliżonym profilem koloru” są przedstawiane w formacie niestandardowej przestrzeni kolorów CSS <code>color(--profile C% M% Y% K%)</code>. Aby użyć ich w rzeczywistym CSS, określ odpowiedni profil ICC za pomocą <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Przybliżone profile kolorów obliczają przybliżone kolory CMYK na podstawie opublikowanych Characterization data. Dlatego nawet przy użyciu podobnego profilu ICC w CSS przez <code>@color-profile</code> wyświetlany kolor może się nieznacznie różnić.</p>

<h4>Różnica między CMYK i RGB</h4>
<p>CMYK to subtraktywny model koloru dla farb drukarskich. Natomiast <a href="${dc:h(basePath)}/color/rgb">RGB</a> to addytywny model koloru dla światła, na przykład w wyświetlaczach. Nawet dla kolorów wyglądających tak samo wartości składowych CMYK i RGB mogą znacznie się różnić.</p>
