<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>UNIX समय (Time) के बारे में</h3>
<p>UNIX समय (POSIX समय, Epoch सेकंड) 1970-01-01 00:00:00 (UTC) से अब तक बीते सेकंड की संख्या है, जिसमें लीप सेकंड शामिल नहीं हैं।</p>
<p>UNIX Epoch से पहले के समय को नकारात्मक मान (negative value) से दर्शाया जाता है।</p>
<p>DenCode में, UNIX समय को सेकंड में संभाला जाता है। मिलीसेकंड और माइक्रोसेकंड को दशमलव बिंदु के बाद की संख्याओं के रूप में दर्शाया जाता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>दिनांक और समय</th><th>UNIX समय</th></tr>
		<tr><td>1900-01-01 00:00:00 UTC</td><td>-2208988800</td></tr>
		<tr><td>1970-01-01 00:00:00 UTC (UNIX Epoch)</td><td>0</td></tr>
		<tr><td>2000-01-23 01:23:45.678 UTC</td><td>948590625.678</td></tr>
	</table>
</div>
