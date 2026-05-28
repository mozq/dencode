<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O ROT13</h3>
<p>ROT13 to prosty szyfr przesuwający, który zamienia litery tekstu na inne litery.</p>
<p>Jest to szczególny przypadek Szyfru Cezara z przesunięciem o 13 pozycji w 26-literowym alfabecie łacińskim (A-Z).</p>
<p>Na przykład „A” zamienia się na „N”, a „Z” na „M”.</p>

<pre>
Przed : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Po    : NOPQRSTUVWXYZABCDEFGHIJKLM
</pre>

<pre>
Tekst jawny        : THIS IS A SECRET MESSAGE
Tekst zaszyfrowany : GUVF VF N FRPERG ZRFFNTR
</pre>

<p>Ponieważ ponowne zaszyfrowanie kryptogramu daje tekst jawny (13 + 13 = 26), ta sama procedura służy do szyfrowania i deszyfrowania.</p>
