<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O kolorze Oklab</h3>
<p>Kolor Oklab to percepcyjna przestrzeń barw opisująca kolory za pomocą jasności i dwóch składników barwy. Podobnie jak Lab oddziela jasność od barwy, ale jako nowszy model jest zaprojektowany tak, aby zmiany koloru były bliższe wyglądowi wizualnemu.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Składnik</th><th>Znaczenie</th><th>Przykładowa wartość</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Jasność</td><td>Oznacza jasność koloru. 0% to czerń, a 100% to biel.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Oznacza kierunek od zieleni do czerwieni. Wartości ujemne są bardziej zielone, a dodatnie bardziej czerwone.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Oznacza kierunek od błękitu do żółci. Wartości ujemne są bardziej niebieskie, a dodatnie bardziej żółte.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Na przykład główne kolory, takie jak czerwony, można przedstawić następująco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Oklab notacja</th><th>Notacja RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Zielony</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Limonkowy</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Niebieski</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Biały</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Czarny</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczoną czerwień można zapisać jako <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Obsługa jasności, a i b</h4>
<p>Oznacza jasność koloru. 0% to czerń, a 100% to biel Wartości poniżej 0% są traktowane jako 0%, a powyżej 100% ograniczane do 100%.</p>

<p><code>a</code> i <code>b</code> podaje się jako liczby dodatnie lub ujemne. Ich wartości nie są przycinane do stałego zakresu i są traktowane jako podane składniki.</p>

<h4>Różnica między Oklab a Oklch</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> korzysta z tej samej idei percepcyjnej co Oklab, ale wyraża kolor przez chromę i odcień.</p>

<h4>Różnica między Oklab a Lab</h4>
<p>Oklab zaprojektowano tak, aby zmiany wizualne były bardziej równomierne niż w <a href="${dc:h(basePath)}/color/lab">Lab</a> podczas zmiany odcienia lub chromy.</p>
