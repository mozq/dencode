<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O kolorze HSL</h3>
<p>Kolor HSL to model barw opisujący kolory za pomocą odcienia, nasycenia i jasności. W przeciwieństwie do RGB, które bezpośrednio określa natężenie czerwonego, zielonego i niebieskiego światła, HSL oddziela ton koloru, żywość i jasność, dlatego jest przydatny przy korekcji kolorów i pracy z CSS.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Składnik</th><th>Znaczenie</th><th>Przykładowa wartość</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Odcień</td><td>Oznacza odcień jako kąt. Czerwony jest w okolicy 0deg, zielony 120deg, a niebieski 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Nasycenie</td><td>Oznacza żywość koloru. 0% jest achromatyczne, a 100% to najbardziej żywy kolor.</td><td><code>50%</code></td></tr>
			<tr><td>L: Jasność</td><td>Oznacza jasność koloru. 0% to czerń, 50% to normalna jasność, a 100% to biel.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Na przykład główne kolory, takie jak czerwony, można przedstawić następująco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Notacja HSL</th><th>Notacja RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Zielony</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Limonkowy</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Niebieski</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Biały</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Czarny</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczoną czerwień można zapisać jako <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>Jako wejście można użyć zapisu rozdzielonego spacjami <code>hsl(0deg 100% 50%)</code>, a także starszego zapisu rozdzielonego przecinkami <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Obsługa odcienia, nasycenia i jasności</h4>
<p>Odcień jest traktowany jako kąt; wartości większe niż 360deg lub ujemne są normalizowane do zakresu od 0deg do 360deg. Na przykład <code>hsl(360deg 100% 50%)</code> jest traktowane jako ten sam kolor co <code>hsl(0deg 100% 50%)</code>, a <code>hsl(-120deg 100% 50%)</code> jako ten sam kolor co <code>hsl(240deg 100% 50%)</code>.</p>

<p>Nasycenie i jasność są obsługiwane w zakresie od 0% do 100%. Gdy nasycenie wynosi 0%, kolor staje się achromatyczną szarością niezależnie od odcienia. Gdy jasność wynosi 0%, kolor jest czarny; gdy wynosi 100%, jest biały.</p>

<h4>Różnica między HSL a RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> bezpośrednio określa składniki czerwony, zielony i niebieski, dlatego jest bliskie wyświetlaniu na ekranie i danym obrazu. HSL oddziela odcień, nasycenie i jasność, ułatwiając operacje takie jak „rozjaśnić przy tym samym odcieniu” lub „zmniejszyć tylko nasycenie”.</p>

<p>HSL nie jest jednak percepcyjnie równomierną przestrzenią barw. Gdy potrzebna jest łatwiejsza obsługa jasności wizualnej lub różnic kolorów, można użyć przestrzeni barw takich jak <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> i <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
