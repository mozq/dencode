<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Dacie ISO 8601</h3>
<p>ISO 8601 to międzynarodowy standard zapisu daty i czasu zdefiniowany przez ISO.</p>
<p>Data i czas są połączone literą „T”. Strefa czasowa jest wyrażona jako różnica względem UTC, np. „+09:00”, a dla UTC używa się litery „Z”.</p>
<p>Sekundy i milisekundy są rozdzielone przecinkiem (,) lub kropką (.). W DenCode milisekundy są pomijane, jeśli wynoszą 000.</p>

<p>ISO 8601 posiada kilka formatów.</p>
<p>Przykład konwersji daty 23 stycznia 2000, 01:23:45.678 (JST; +09:00) na ISO 8601:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Format</th><th>Wynik</th></tr>
		<tr><td>Podstawowy</td><td>20000123T012345.678+0900</td></tr>
		<tr><td>Rozszerzony</td><td>2000-01-23T01:23:45.678+09:00</td></tr>
		<tr><td>Tydzień (Rok-Tydzień-Dzień)</td><td>2000-W03-7T01:23:45.678+09:00</td></tr>
		<tr><td>Dzień roku (Rok-Dzień)</td><td>2000-023T01:23:45.678+09:00</td></tr>
	</table>
</div>
