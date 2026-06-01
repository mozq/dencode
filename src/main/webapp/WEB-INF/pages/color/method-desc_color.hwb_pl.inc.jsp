<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informacje o kolorze HWB</h3>
<p>Kolor HWB to model koloru opisujący barwę trzema składnikami: odcieniem, bielą i czernią. Odcień określa podstawowy ton koloru, a biel i czerń określają, ile bieli i czerni jest domieszane. Dzięki temu łatwo intuicyjnie rozumieć rozjaśnianie, przyciemnianie i przesuwanie koloru w stronę szarości.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Składnik</th><th>Znaczenie</th><th>Przykładowa wartość</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Odcień</td><td>Przedstawia ton koloru jako kąt. Czerwony jest około 0deg, zielony około 120deg, a niebieski około 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Biel</td><td>Oznacza ilość bieli domieszanej do koloru. Im większa wartość, tym bardziej białawy kolor.</td><td><code>20%</code></td></tr>
			<tr><td>B: Czerń</td><td>Oznacza ilość czerni domieszanej do koloru. Im większa wartość, tym ciemniejszy kolor.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Na przykład główne kolory, takie jak czerwony, można przedstawić następująco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Notacja HWB</th><th>Notacja RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Zielony</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Limonkowy</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Niebieski</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Biały</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Czarny</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczysty czerwony można zapisać jako <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Obsługa odcienia, bieli i czerni</h4>
<p>Odcień jest traktowany jako kąt, a wartości większe niż 360deg lub ujemne są normalizowane do zakresu od 0deg do 360deg. Na przykład <code>hwb(360deg 0% 0%)</code> jest traktowane jako ten sam kolor co <code>hwb(0deg 0% 0%)</code>, a <code>hwb(-120deg 0% 0%)</code> jako ten sam kolor co <code>hwb(240deg 0% 0%)</code>.</p>

<p>Biel i czerń są traktowane w zakresie od 0% do 100%. Większa biel zbliża kolor do białego, a większa czerń do czarnego. Jeśli suma bieli i czerni wynosi 100% lub więcej, kolor jest traktowany jako szarawy niezależnie od odcienia.</p>

<h4>Różnica między HWB i HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> reguluje kolor za pomocą nasycenia i jasności, dlatego nadaje się do określania żywości i jasności. HWB reguluje kolor przez ilość domieszanego białego i czarnego, co ułatwia opis operacji takich jak „uczynić bielszym przy tym samym odcieniu” lub „dodać czerni, aby przyciemnić”.</p>

<p>HWB również nie jest przestrzenią kolorów równomierną percepcyjnie. Gdy chcesz łatwiej obsługiwać postrzeganą jasność lub różnice kolorów, można użyć przestrzeni kolorów takich jak <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> i <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
