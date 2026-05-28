<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Atbash Cijfer</h3>
<p>Het Atbash Cijfer is een type mono-alfabetisch substitutiecijfer waarbij elke letter in een tekst wordt vervangen door een andere.</p>
<p>De vervanging van letters gebeurt door de lijst met letters in omgekeerde volgorde te mappen.</p>
<p>Bijvoorbeeld, in het geval van de letters "ABCDEFGHIJKLMNOPQRSTUVWXYZ", wordt "A" versleuteld als "Z" en "B" als "Y".</p>

<pre>
Voor encryptie : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Na encryptie   : ZYXWVUTSRQPONMLKJIHGFEDCBA
</pre>

<pre>
Tekst voor encryptie : THIS IS A SECRET MESSAGE
Tekst na encryptie   : GSRH RH Z HVXIVG NVHHZTV
</pre>

<p>Oorspronkelijk werd het gebruikt als een Hebreeuws cijfer. De Hebreeuwse encryptie is als volgt:</p>

<pre>
Voor encryptie : אבגדהוזחטיכלמנסעפצקרשת
Na encryptie   : תשרקצפעסנמלכיטחזוהדגבא
</pre>

<p>Omdat het opnieuw versleutelen van de cijfertekst de platte tekst oplevert (omkeerbaarheid), kan decoderen op dezelfde manier worden uitgevoerd als coderen.</p>


<h4>Andere taalondersteuning</h4>
<p>Naast Latijnse letters en Hebreeuws, worden ook Cyrillisch en Japans Hiragana / Katakana ondersteund.</p>

<h5>Cyrillisch</h5>
<pre>
Voor encryptie : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Na encryptie   : ЯЮЭЬЫЪЩШЧЦХФУТСРПОНМЛКЙИЗЖЕДГВБА
</pre>

<h5>Japans Hiragana / Katakana</h5>
<pre>
Voor encryptie : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Na encryptie   : ゔんをゑゐわゎろれるりらよょゆゅやゃもめむみまぽぼほぺべへぷぶふぴびひぱばはのねぬになどとでてづつっぢちだたぞそぜせずすじしざさごこげけぐくぎきがかおぉえぇうぅいぃあぁ
</pre>

<pre>
Voor encryptie : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Na encryptie   : ヴンヲヱヰワヮロレルリラヨョユュヤャモメムミマポボホペベヘプブフピビヒパバハノネヌニナドトデテヅツッヂチダタゾソゼセズスジシザサゴコゲケグクギキガカオォエェウゥイィアァ
</pre>

<p>De volgorde van tekens is de definitievolgorde in Unicode. Houd er rekening mee dat "ゕ", "ゖ", "ヵ", "ヶ" en "ヷ", "ヸ", "ヹ", "ヺ" niet worden versleuteld.</p>
