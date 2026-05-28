<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over ROT18</h3>
<p>ROT18 is een type mono-alfabetisch substitutiecijfer waarbij elke letter in een tekst wordt vervangen door een andere.</p>
<p>De vervanging van letters gebeurt door de letters van "A" tot "Z" 13 tekens te schuiven binnen de 26 letters "ABCDEFGHIJKLMNOPQRSTUVWXYZ". Ook worden de cijfers "0" tot "9" 5 tekens geschoven binnen de 10 tekens "0123456789".</p>
<p>Bijvoorbeeld, "A" wordt versleuteld als "N" en "0" als "5".</p>

<pre>
Voor encryptie : ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
Na encryptie   : NOPQRSTUVWXYZABCDEFGHIJKLM5678901234
</pre>

<pre>
Tekst voor encryptie : THIS IS A SECRET MESSAGE 123
Tekst na encryptie   : GUVF VF N FRPERG ZRFFNTR 567
</pre>

<p>Omdat het opnieuw versleutelen van de cijfertekst de platte tekst oplevert (omkeerbaarheid), kan decoderen op dezelfde manier worden uitgevoerd als coderen.</p>
