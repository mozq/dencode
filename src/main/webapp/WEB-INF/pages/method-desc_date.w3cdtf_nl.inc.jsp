<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over W3C-DTF</h3>
<p>W3C-DTF is een formaat voor datum/tijd-representatie gedefinieerd in <a href="https://www.w3.org/TR/NOTE-datetime" target="_blank">W3C NOTE-datetime</a>. Het is een subset beperkt tot slechts enkele formaten van ISO 8601.</p>
<p>De datum en tijd worden verbonden door een "T". De tijdzone wordt uitgedrukt als het tijdsverschil met UTC, zoals "+09:00", en "Z" wordt gebruikt voor UTC.</p>
<p>Seconden en milliseconden worden gescheiden door een punt (.).</p>

<p>W3C-DTF wordt gebruikt als datum/tijd-representatie in HTTP-headers en RSS.</p>

<p>Bijvoorbeeld, als 23 januari 2000 01:23:45.678 (JST; +09:00) wordt geconverteerd naar W3C-DTF, is het resultaat als volgt:</p>

<pre>2000-01-23T01:23:45.678+09:00</pre>
