<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informacje o kolorze RGB</h3>
<p>Kolor RGB to model koloru przedstawiający barwy przez połączenie trzech składników światła: czerwonego, zielonego i niebieskiego. Jest szeroko używany do kolorów na ekranie, takich jak wyświetlacze, strony internetowe i dane obrazów.</p>

<p>W RGB intensywność każdej składowej określa się wartością liczbową. Zwykle jest to liczba całkowita od 0 do 255 albo procent od 0% do 100%. Gdy wszystkie składowe wynoszą 0, kolor jest czarny; gdy wszystkie są maksymalne, kolor jest biały.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Notacja RGB</th><th>Notacja szesnastkowa</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Zielony</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Niebieski</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Biały</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Czarny</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>Kolory RGB można zapisać jako funkcję albo w postaci szesnastkowej. Na przykład czerwony można przedstawić jako <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> lub <code>#f00</code>.</p>

<p>Aby uwzględnić przezroczystość, dodaj wartość alfa. Na przykład półprzezroczysty czerwony można zapisać jako <code>rgb(255 0 0 / 50%)</code> lub <code>#ff000080</code>.</p>

<p>Konwersja kolorów RGB w DenCode obsługuje następujące opcje notacji.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Kolor RGB (hex)</caption>
		<thead>
			<tr><th>Opcja notacji</th><th>Format</th><th>Przykład</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Kolor RGB</caption>
		<thead>
			<tr><th>Opcja notacji</th><th>Format</th><th>Przykład</th></tr>
		</thead>
		<tbody>
			<tr><td>Liczba</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Procent</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> nie jest standardową szesnastkową notacją koloru CSS, lecz formatem ARGB używanym czasem w programach i ustawieniach aplikacji. Początkowe <code>AA</code> oznacza alfa, a kolejne <code>RR</code>, <code>GG</code> i <code>BB</code> oznaczają czerwony, zielony i niebieski.</p>

<h4>sRGB i inne przestrzenie kolorów RGB</h4>
<p>RGB to model koloru z trzema składowymi: czerwonym, zielonym i niebieskim. Jednak nawet przy tych samych wartościach RGB rzeczywisty kolor zależy od przestrzeni kolorów użytej do interpretacji. Typowe wartości webowe <code>rgb()</code> i <code>#RRGGBB</code> są zwykle traktowane jako kolory sRGB.</p>

<p>CSS Color Module Level 4 definiuje także przestrzenie RGB o gamie innej niż sRGB, takie jak Display P3 i ProPhoto RGB. DenCode obsługuje również konwersję tych przestrzeni.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Przestrzeń kolorów</th><th>Format</th><th>Przykład</th><th>Charakterystyka</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Typowa przestrzeń RGB dla webu i CSS. Kody szesnastkowe i zwykłe wartości <code>rgb()</code> są zasadniczo traktowane jako sRGB. <code>color(srgb ...)</code> to format CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Przestrzeń kolorów o tej samej gamie co sRGB, ale z liniowymi wartościami składowych. Jest używana do obliczeń i kompozycji kolorów.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Przestrzeń o szerszej gamie niż sRGB, używana na ekranach wide gamut i niektórych urządzeniach mobilnych.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Przestrzeń szersza niż sRGB, czasem używana w edycji zdjęć i przepływach związanych z drukiem.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Przestrzeń RGB o jeszcze szerszej gamie niż Adobe RGB, używana jako robocza przestrzeń w edycji zdjęć.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Przestrzeń RGB o bardzo szerokiej gamie, używana w standardach wideo UHDTV i HDR.</td></tr>
		</tbody>
	</table>
</div>

<p>Kolory określone w szerokogamutowych przestrzeniach RGB mogą nie być dokładnie przedstawione na ekranach sRGB ani zwykłymi kodami szesnastkowymi. Gdy DenCode konwertuje do <code>#RRGGBB</code> lub liczbowego <code>rgb(R G B)</code>, składowe poza zakresem sRGB są traktowane tak, aby mieściły się w zakresie od <code>0</code> do <code>255</code>. Wybór <code>color(display-p3 ...)</code> lub <code>color(a98-rgb ...)</code> pozwala wyświetlić je jako wartości wybranej przestrzeni.</p>
