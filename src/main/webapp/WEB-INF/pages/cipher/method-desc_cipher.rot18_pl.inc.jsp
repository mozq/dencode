<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O ROT18</h3>
<p>ROT18 to prosty szyfr przesuwający, który zamienia litery i cyfry.</p>
<p>Jest to połączenie ROT13 (dla liter A-Z) i ROT5 (dla cyfr 0-9).</p>
<p>Litery są przesuwane o 13 pozycji (A->N), a cyfry o 5 pozycji (0->5).</p>

<pre>
Przed : ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
Po    : NOPQRSTUVWXYZABCDEFGHIJKLM5678901234
</pre>

<pre>
Tekst jawny        : THIS IS A SECRET MESSAGE 123
Tekst zaszyfrowany : GUVF VF N FRPERG ZRFFNTR 567
</pre>

<p>Ponieważ ponowne zaszyfrowanie kryptogramu daje tekst jawny (13+13=26 dla liter, 5+5=10 dla cyfr), ta sama procedura służy do szyfrowania i deszyfrowania.</p>
