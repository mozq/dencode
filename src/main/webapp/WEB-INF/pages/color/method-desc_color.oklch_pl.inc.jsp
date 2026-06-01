<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O kolorze Oklch</h3>
<p>Kolor Oklch to percepcyjna przestrzeń barw opisująca kolory za pomocą jasności, chromy i odcienia. Korzysta z tej samej idei co Oklab, ale przedstawia barwę przez chromę i kąt, co ułatwia oddzielną regulację intensywności i odcienia.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Składnik</th><th>Znaczenie</th><th>Przykładowa wartość</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Jasność</td><td>Oznacza jasność koloru. 0% to czerń, a 100% to biel.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Oznacza intensywność koloru. 0 jest achromatyczne, a większe wartości dają żywsze kolory.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Odcień</td><td>Oznacza odcień jako kąt.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Na przykład główne kolory, takie jak czerwony, można przedstawić następująco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Oklch notacja</th><th>Notacja RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Zielony</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Limonkowy</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Niebieski</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Biały</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Czarny</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczoną czerwień można zapisać jako <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Obsługa jasności, chromy i odcienia</h4>
<p>Oznacza jasność koloru. 0% to czerń, a 100% to biel Wartości poniżej 0% są traktowane jako 0%, a powyżej 100% ograniczane do 100%.</p>

<p>Oznacza intensywność koloru. 0 jest achromatyczne, a większe wartości dają żywsze kolory. Ujemna chroma jest traktowana jako 0. Gdy chroma wynosi 0, kolor staje się achromatyczny, a odcień jest traktowany jako 0deg.</p>

<p>Odcień jest traktowany jako kąt. <code>oklch(62.8% 0.2577 389.23deg)</code> jest traktowany jako ten sam kolor co <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Różnica między Oklch a Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> przedstawia kolory za pomocą prostokątnych współrzędnych <code>a</code> i <code>b</code>. Oklch przekształca tę barwę w chromę i odcień.</p>

<h4>Różnica między Oklch a LCH</h4>
<p>Oklch zaprojektowano tak, aby zmiany wizualne były bardziej równomierne niż w <a href="${dc:h(basePath)}/color/lch">LCH</a> podczas zmiany odcienia lub chromy.</p>
