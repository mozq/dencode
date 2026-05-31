<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O ułamkach</h3>
<p>Liczby ułamkowe (ułamki) reprezentują liczby w postaci „licznik/mianownik” jako stosunek (iloraz) licznika i mianownika.</p>

<p>W DenCode wprowadzona liczba (całkowita lub dziesiętna) jest konwertowana na ułamek nieskracalny (ułamek, którego nie można dalej uprościć).</p>

<p>Przykłady konwersji ułamków są następujące.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Dziesiętny (Wejście)</th><th>Ułamek (Wyjście)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>Ułamek dziesiętny zakończony znakiem „...” jest interpretowany jako „liczba skrócona” i konwertowany na podstawie następujących reguł:</p>
<ul>
	<li><strong>Jeśli istnieje powtarzający się wzorzec (ułamek okresowy):</strong> Powtarzający się wzorzec w części dziesiętnej (okres) jest automatycznie wykrywany i konwertowany na dokładną reprezentację ułamkową.</li>
	<li><strong>Jeśli nie ma powtarzającego się wzorca:</strong> Jest konwertowany na ułamek jako skończony ułamek dziesiętny na podstawie wprowadzonej liczby cyfr.</li>
</ul>

<p>Przykłady konwersji dla ułamków dziesiętnych zakończonych znakiem „...” są następujące.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Dziesiętny (Wejście)</th><th>Ułamek (Wyjście)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
