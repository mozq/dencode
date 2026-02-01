<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Caesarcijfer</h3>
<p>Het Caesarcijfer is een type mono-alfabetisch substitutiecijfer waarbij elke letter in een tekst wordt vervangen door een andere.</p>
<p>De vervanging van letters gebeurt door de letters van "A" tot "Z" te schuiven binnen de 26 letters "ABCDEFGHIJKLMNOPQRSTUVWXYZ".</p>
<p>Bijvoorbeeld, bij het schuiven van -3 tekens, wordt "A" versleuteld als "X" en "Z" als "W".</p>

<pre>
Voor encryptie : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Na encryptie   : XYZABCDEFGHIJKLMNOPQRSTUVW
</pre>

<pre>
Tekst voor encryptie : THIS IS A SECRET MESSAGE
Tekst na encryptie   : QEFP FP X PBZOBQ JBPPXDB
</pre>

<p>Het aantal verschuivingen is de sleutel van de encryptie.</p>
<p>Alleen letters worden versleuteld; cijfers en symbolen worden niet versleuteld.</p>
<p>Als het aantal verschuivingen 13 is, is het resultaat hetzelfde als <a href="rot13">ROT13</a>.</p>

<p>Letters worden geschoven terwijl diakritische tekens behouden blijven. Daarom wordt bijvoorbeeld "Á" versleuteld als "X́".</p>


<h4>Andere taalondersteuning</h4>
<p>Naast Latijnse letters worden ook Cyrillisch en Japans Hiragana / Katakana ondersteund.</p>

<h5>Cyrillisch</h5>
<p>Als Cyrillische tekens met -3 tekens worden verschoven, vindt de encryptie als volgt plaats:</p>

<pre>
Voor encryptie : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Na encryptie   : ЭЮЯАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬ
</pre>

<p>Letters worden geschoven terwijl diakritische tekens behouden blijven. Daarom wordt bijvoorbeeld de Russische "Ё" versleuteld als "В̈". De letters "Й" en "й" worden behandeld als unieke enkele tekens, niet als "И" en "и" met een " ̆ " (Breve) diakritisch teken.</p>

<h5>Japans Hiragana / Katakana</h5>
<p>Als Japanse Hiragana / Katakana met -3 tekens worden verschoven, vindt de encryptie als volgt plaats:</p>

<pre>
Voor encryptie : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Na encryptie   : をんゔぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑ
</pre>

<pre>
Voor encryptie : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Na encryptie   : ヲンヴァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱ
</pre>

<p>De volgorde van tekens is de definitievolgorde in Unicode. Houd er rekening mee dat "ゕ", "ゖ", "ヵ", "ヶ" en "ヷ", "ヸ", "ヹ", "ヺ" niet worden versleuteld.</p>
