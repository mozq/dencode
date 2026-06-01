<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O kolorze Lab</h3>
<p>Kolor Lab to przestrzeń barw opisująca kolory za pomocą jasności, osi od zieleni do czerwieni oraz osi od błękitu do żółci. W przeciwieństwie do RGB, które bezpośrednio określa czerwony, zielony i niebieski składnik ekranu, Lab oddziela jasność od barwy w sposób bliższy ludzkiemu widzeniu.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Składnik</th><th>Znaczenie</th><th>Przykładowa wartość</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Jasność</td><td>Oznacza jasność koloru. 0% to czerń, a 100% to biel.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Oznacza kierunek od zieleni do czerwieni. Wartości ujemne są bardziej zielone, a dodatnie bardziej czerwone.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Oznacza kierunek od błękitu do żółci. Wartości ujemne są bardziej niebieskie, a dodatnie bardziej żółte.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Na przykład główne kolory, takie jak czerwony, można przedstawić następująco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Lab notacja</th><th>Notacja RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Zielony</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Limonkowy</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Niebieski</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Biały</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Czarny</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczoną czerwień można zapisać jako <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Obsługa jasności, a i b</h4>
<p>Oznacza jasność koloru. 0% to czerń, a 100% to biel Wartości poniżej 0% są traktowane jako 0%, a powyżej 100% ograniczane do 100%.</p>

<p><code>a</code> i <code>b</code> podaje się jako liczby dodatnie lub ujemne. Ich wartości nie są przycinane do stałego zakresu i są traktowane jako podane składniki.</p>

<h4>Różnica między Lab a LCH</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> korzysta z tej samej idei percepcyjnej co Lab, ale wyraża kolor przez chromę i odcień.</p>
