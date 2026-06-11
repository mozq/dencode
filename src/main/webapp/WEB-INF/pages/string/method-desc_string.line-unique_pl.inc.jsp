<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O usuwaniu duplikatów linii</h3>
<p>Usuwanie duplikatów linii usuwa powtarzające się linie z tekstu wielowierszowego. Jeśli ta sama linia pojawia się więcej niż raz, zostaje tylko pierwsze wystąpienie, a kolejne są usuwane.</p>
<p>Pozostałe linie zachowują pierwotną kolejność. Tekst nie jest sortowany.</p>

<p>Na przykład po usunięciu zduplikowanych linii z poniższego tekstu:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>Wynik jest następujący:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Linia wejściowa</th><th scope="col">Wynik</th><th scope="col">Opis</th></tr>
		<tr><td><code>apple</code> (1. raz)</td><td>Pozostaje</td><td>Jest to pierwsze wystąpienie linii.</td></tr>
		<tr><td><code>banana</code> (1. raz)</td><td>Pozostaje</td><td>Jest to pierwsze wystąpienie linii.</td></tr>
		<tr><td><code>apple</code> (2. raz)</td><td>Usunięta</td><td>Taka sama linia już się pojawiła.</td></tr>
		<tr><td><code>orange</code> (1. raz)</td><td>Pozostaje</td><td>Jest to pierwsze wystąpienie linii.</td></tr>
		<tr><td><code>banana</code> (2. raz)</td><td>Usunięta</td><td>Taka sama linia już się pojawiła.</td></tr>
	</table>
</div>

<p>Wykrywanie duplikatów porównuje całą linię. Różnice w wielkości liter, spacje na początku lub końcu oraz znaki pełnej i półszerokości są traktowane jako inny tekst.</p>
