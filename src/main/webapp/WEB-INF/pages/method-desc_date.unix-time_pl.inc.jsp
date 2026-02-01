<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Czasie UNIX</h3>
<p>Czas UNIX (czas POSIX, sekundy epoki) to liczba sekund, które upłynęły od epoki UNIX, czyli 1 stycznia 1970, 00:00:00 UTC (z wyłączeniem sekund przestępnych).</p>
<p>Daty przed epoką UNIX są reprezentowane przez wartości ujemne.</p>
<p>W DenCode czas UNIX jest traktowany w sekundach. Milisekundy i mikrosekundy są reprezentowane jako ułamki dziesiętne.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Data</th><th>Czas UNIX</th></tr>
		<tr><td>1900-01-01 00:00:00 UTC</td><td>-2208988800</td></tr>
		<tr><td>1970-01-01 00:00:00 UTC (UNIX Epoch)</td><td>0</td></tr>
		<tr><td>2000-01-23 01:23:45.678 UTC</td><td>948590625.678</td></tr>
	</table>
</div>
