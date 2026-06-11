<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O sortowaniu linii</h3>
<p>Sortowanie linii porządkuje tekst wielowierszowy linia po linii. Linie wejściowe można ułożyć rosnąco, malejąco albo odwrócić ich bieżącą kolejność.</p>
<p>Przy sortowaniu rosnącym i malejącym każda cała linia jest porównywana jako ciąg Unicode. Przy odwracaniu treść poszczególnych linii się nie zmienia; zmienia się tylko ich kolejność od góry do dołu.</p>

<p>Na przykład po posortowaniu poniższego tekstu rosnąco:</p>

<pre>
banana
apple
orange
</pre>

<p>Wynik jest następujący:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Kolejność</th><th scope="col">Opis</th><th scope="col">Przykład konwersji</th></tr>
		<tr><td>Rosnąco</td><td>Sortuje linie od mniejszej do większej wartości ciągu Unicode.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Malejąco</td><td>Sortuje linie od większej do mniejszej wartości ciągu Unicode.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Odwróć</td><td>Odwraca kolejność wprowadzonych linii.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Wielkie i małe litery, cyfry, symbole oraz znaki spoza alfabetu łacińskiego są porównywane jako znaki Unicode. Wynik opiera się więc na porównaniu ciągów znaków, a nie na kolejności słownikowej języka naturalnego ani na wartości liczbowej.</p>
