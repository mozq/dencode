<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Szyfrze Cezara</h3>
<p>Szyfr Cezara to rodzaj szyfru podstawieniowego monoalfabetycznego, w którym litery tekstu jawnego są zastępowane innymi literami.</p>
<p>Szyfrowanie polega na przesunięciu liter alfabetu (A-Z) o stałą liczbę pozycji.</p>
<p>Na przykład przy przesunięciu o -3, „A” staje się „X”, a „Z” staje się „W”.</p>

<pre>
Przed : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Po    : XYZABCDEFGHIJKLMNOPQRSTUVW
</pre>

<pre>
Tekst jawny        : THIS IS A SECRET MESSAGE
Tekst zaszyfrowany : QEFP FP X PBZOBQ JBPPXDB
</pre>

<p>Liczba miejsc przesunięcia jest kluczem szyfrowania.</p>
<p>Szyfrowane są tylko litery, cyfry i symbole pozostają bez zmian.</p>
<p>Przesunięcie o 13 daje ten sam wynik co <a href="rot13">ROT13</a>.</p>

<p>Znaki diakrytyczne są zachowywane podczas przesuwania. Na przykład „Á” zostanie zaszyfrowane jako „X́”.</p>


<h4>Obsługa innych języków</h4>
<p>Oprócz alfabetu łacińskiego, obsługiwana jest cyrylica oraz japońska Hiragana/Katakana.</p>

<h5>Cyrylica</h5>
<p>Przy przesunięciu o -3 dla cyrylicy:</p>

<pre>
Przed : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Po    : ЭЮЯАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬ
</pre>

<p>Znaki diakrytyczne są zachowywane. Na przykład rosyjskie „Ё” staje się „В̈”. Znaki „Й” i „й” są traktowane jako oddzielne litery, a nie jako „И”/„и” ze znakiem diakrytycznym „ ̆” (Breve).</p>

<h5>Japońska Hiragana/Katakana</h5>
<p>Przy przesunięciu o -3 dla japońskiej Hiragany/Katakany:</p>

<pre>
Przed : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Po    : をんゔぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑ
</pre>

<pre>
Przed : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Po    : ヲンヴァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱ
</pre>

<p>Kolejność znaków jest zgodna z definicją w Unicode. Znaki takie jak „ゕ”, „ゖ”, „ヵ”, „ヶ”, „ヷ”, „ヸ”, „ヹ”, „ヺ” nie są szyfrowane.</p>
