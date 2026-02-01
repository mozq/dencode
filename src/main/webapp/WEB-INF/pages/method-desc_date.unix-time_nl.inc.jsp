<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over UNIX-tijd</h3>
<p>UNIX-tijd (POSIX-tijd, Epoch-seconden) is het aantal verstreken seconden sinds de UNIX Epoch, 1 januari 1970 00:00:00 (UTC), exclusief schrikkelseconden.</p>
<p>Tijden vóór de UNIX Epoch worden weergegeven met negatieve waarden.</p>
<p>DenCode behandelt UNIX-tijd in seconden. Milliseconden en microseconden worden weergegeven met decimalen achter de komma.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Datum/Tijd</th><th>UNIX-tijd</th></tr>
		<tr><td>1900-01-01 00:00:00 UTC</td><td>-2208988800</td></tr>
		<tr><td>1970-01-01 00:00:00 UTC (UNIX Epoch)</td><td>0</td></tr>
		<tr><td>2000-01-23 01:23:45.678 UTC</td><td>948590625.678</td></tr>
	</table>
</div>
