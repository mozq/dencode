<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Szyfrze Playfaira</h3>
<p>Szyfr Playfaira to szyfr podstawieniowy, który zamienia pary liter przy użyciu tabeli liter 5×5.</p>

<p>Na przykład, gdy kluczem jest "SECRET", a tekstem jawnym "HELLO", szyfrowanie wygląda następująco.</p>

<pre>
Tekst jawny : HELLO
Szyfrogram  : ISKYIQ
</pre>

<p>Podczas szyfrowania tekst jawny najpierw dzieli się na pary liter. Jeśli para zawiera tę samą literę, na przykład "LL", między nie wstawiana jest litera pomocnicza "X". Jeśli na końcu pozostanie jedna litera, również dodaje się "X".</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Następnie przygotowuje się tabelę szyfrującą 5×5, czyli 25 pól. Ponieważ alfabet ma 26 liter, zwykle "I=J" umieszcza się w tym samym polu.</p>
<p>Najpierw wpisuje się do tabeli litery klucza, pomijając powtórzenia. Przy kluczu "SECRET" drugie "E" zostaje pominięte. Następnie wpisuje się "ABCDEFGHIKLMNOPQRSTUVWXYZ", również pomijając litery, które już wystąpiły w kluczu. W ten sposób powstaje tabela 5×5 bez powtarzających się liter.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Za pomocą tej tabeli każda para liter jest szyfrowana według poniższych zasad. Sposób zależy od położenia obu liter w tabeli.</p>

<ul>
	<li>W tym samym wierszu: każdą literę zastępuje się literą po jej prawej stronie. Na prawym końcu przechodzi się na lewy koniec.</li>
	<li>W tej samej kolumnie: każdą literę zastępuje się literą pod nią. Na dole przechodzi się na górę.</li>
	<li>W różnych wierszach i kolumnach: wyobraź sobie prostokąt, którego rogami są te dwie litery, i zastąp je literami z pozostałych dwóch rogów.</li>
</ul>

<pre>
S <strong>E</strong>
A B
<strong>H</strong> I

K <strong>L</strong>
P Q
<strong>X</strong> Y

I K <strong>L</strong>
<strong>O</strong> P Q
</pre>

<pre>
HE LX LO
↓
IS KY IQ
</pre>

<p>Podczas deszyfrowania szyfrogram jest przetwarzany parami z użyciem tej samej tabeli liter. Litera pomocnicza "X" nie jest usuwana automatycznie.</p>

<pre>
Szyfrogram  : ISKYIQ
Tekst jawny : HEL<strong>X</strong>LO
</pre>
