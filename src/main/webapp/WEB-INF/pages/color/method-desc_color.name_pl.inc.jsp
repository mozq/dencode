<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informacje o nazwach kolorów</h3>
<p>Nazwy kolorów to sposób przedstawiania barw za pomocą nazwanych kolorów zdefiniowanych w CSS. Ponieważ kolory można określać słowami kluczowymi takimi jak <code>red</code>, <code>blue</code> i <code>orange</code>, często używane kolory w HTML i CSS można zapisywać czytelnie.</p>

<p>Na przykład główne kolory, takie jak czerwony, można przedstawić następująco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Kolor</th><th>Nazwa koloru</th><th>Notacja RGB</th><th>Notacja szesnastkowa</th></tr>
		</thead>
		<tbody>
			<tr><td>Czerwony</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Limonkowy</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Niebieski</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Biały</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Czarny</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Pomarańczowy</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Przezroczysty</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> to specjalna nazwa koloru oznaczająca przezroczystą czerń.</p>

<p>Nazwy kolorów, z wyjątkiem <code>transparent</code>, nie zawierają informacji o przezroczystości. W DenCode, jeśli kolor z przezroczystością można przedstawić jako kolor nazwany, jest wyświetlany z użyciem względnej składni kolorów CSS. Na przykład półprzezroczysty <code>red</code> jest przedstawiany jako <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Różnica między nazwami kolorów i RGB</h4>
<p>Nazwy kolorów przedstawiają typowe barwy za pomocą czytelnych słów kluczowych. Natomiast <a href="${dc:h(basePath)}/color/rgb">RGB</a> określa wartości składowych czerwonej, zielonej i niebieskiej, dzięki czemu może liczbowo przedstawić znacznie więcej kolorów. Nazwy kolorów są często używane, gdy ważna jest czytelność w CSS lub HTML; notacja RGB przydaje się przy dokładnym określaniu lub konwersji kolorów.</p>
