<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over ISO 8601</h3>
<p>ISO 8601 is een formaat voor datum/tijd-representatie dat is gedefinieerd als een internationale standaard door ISO.</p>
<p>De datum en tijd worden verbonden door een "T". De tijdzone wordt uitgedrukt als het tijdsverschil met UTC, zoals "+09:00", en "Z" wordt gebruikt voor UTC.</p>
<p>Seconden en milliseconden worden gescheiden door een komma (,) of punt (.). In DenCode worden milliseconden weggelaten als ze 000 zijn.</p>

<p>ISO 8601 heeft verschillende formaten.</p>
<p>Bijvoorbeeld, als 23 januari 2000 01:23:45.678 (JST; +09:00) wordt geconverteerd naar ISO 8601, zijn de resultaten als volgt:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Formaat</th><th>Resultaat</th></tr>
		<tr><td>Basisformaat</td><td>20000123T012345.678+0900</td></tr>
		<tr><td>Uitgebreid formaat</td><td>2000-01-23T01:23:45.678+09:00</td></tr>
		<tr><td>Week (Jaar-Week-Dag)</td><td>2000-W03-7T01:23:45.678+09:00</td></tr>
		<tr><td>Dag (Jaar-Dag van jaar)</td><td>2000-023T01:23:45.678+09:00</td></tr>
	</table>
</div>
