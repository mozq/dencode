<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O ROT47</h3>
<p>ROT47 to szyfr przesuwający, który operuje na zestawie znaków ASCII.</p>
<p>Zamienia on znaki z zakresu od „!” (33) do „~” (126) poprzez przesunięcie ich o 47 pozycji w cyklu liczącym 94 znaki.</p>
<p>Na przykład „!” staje się „P”, „A” staje się „p”, a „0” staje się „_”.</p>

<pre>
Przed : !"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
Po    : PQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNO
</pre>

<pre>
Tekst jawny        : THIS IS A SECRET MESSAGE 123!
Tekst zaszyfrowany : %wx$ x$ p $tr#t% |t$$pvt `abP
</pre>

<p>Ponieważ 47 + 47 = 94 (cały zakres używanych znaków), ponowne zaszyfrowanie kryptogramu przywraca oryginalny tekst. Ta sama procedura służy do szyfrowania i deszyfrowania.</p>
