<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O kolorze LCH</h3>
<p>Kolor LCH to przestrzeń barw opisująca kolory za pomocą jasności, chromy i odcienia. Korzysta z tej samej idei percepcyjnej co Lab, ale przedstawia barwę przez chromę i kąt, co ułatwia oddzielną regulację intensywności i odcienia.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Składnik</th><th>Znaczenie</th><th>Przykładowa wartość</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Jasność</td><td>Oznacza jasność koloru. 0% to czerń, a 100% to biel.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Oznacza intensywność koloru. 0 jest achromatyczne, a większe wartości dają żywsze kolory.</td><td><code>80</code></td></tr>
			<tr><td>H: Odcień</td><td>Oznacza odcień jako kąt.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Na przykład główne kolory, takie jak czerwony, można przedstawić następująco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>LCH notacja</th><th>Notacja RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Zielony</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Limonkowy</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Niebieski</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Biały</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Czarny</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczoną czerwień można zapisać jako <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Obsługa jasności, chromy i odcienia</h4>
<p>Oznacza jasność koloru. 0% to czerń, a 100% to biel Wartości poniżej 0% są traktowane jako 0%, a powyżej 100% ograniczane do 100%.</p>

<p>Oznacza intensywność koloru. 0 jest achromatyczne, a większe wartości dają żywsze kolory. Ujemna chroma jest traktowana jako 0. Gdy chroma wynosi 0, kolor staje się achromatyczny, a odcień jest traktowany jako 0deg.</p>

<p>Odcień jest traktowany jako kąt. <code>lch(54.29% 106.8372 400.86deg)</code> jest traktowany jako ten sam kolor co <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Różnica między LCH a Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> przedstawia kolory za pomocą prostokątnych współrzędnych <code>a</code> i <code>b</code>. LCH wyraża kolor przez chromę i odcień, co może być bardziej intuicyjne przy tej samej jasności.</p>
