<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Szyfrze Atbash</h3>
<p>Szyfr Atbash to rodzaj szyfru podstawieniowego monoalfabetycznego, w którym litery tekstu jawnego są zastępowane innymi literami.</p>
<p>Zasada działania polega na odwróceniu alfabetu: pierwsza litera jest zastępowana ostatnią, druga przedostatnią itd.</p>
<p>Na przykład dla alfabetu angielskiego „A” jest zamieniane na „Z”, „B” na „Y”.</p>

<pre>
Przed : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Po    : ZYXWVUTSRQPONMLKJIHGFEDCBA
</pre>

<pre>
Tekst jawny        : THIS IS A SECRET MESSAGE
Tekst zaszyfrowany : GSRH RH Z HVXIVG NVHHZTV
</pre>

<p>Pierwotnie był używany jako szyfr hebrajski. Szyfrowanie w języku hebrajskim wygląda następująco:</p>

<pre>
Przed : אבגדהוזחטיכלמנסעפצקרשת
Po    : תשרקצפעסנמלכיטחזוהדגבא
</pre>

<p>Ponieważ ponowne zaszyfrowanie kryptogramu daje tekst jawny (inwolucja), proces deszyfrowania jest identyczny jak szyfrowania.</p>


<h4>Obsługa innych języków</h4>
<p>Oprócz łaciny i hebrajskiego, obsługiwana jest cyrylica oraz japońska Hiragana/Katakana.</p>

<h5>Cyrylica</h5>
<pre>
Przed : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Po    : ЯЮЭЬЫЪЩШЧЦХФУТСРПОНМЛКЙИЗЖЕДГВБА
</pre>

<h5>Japońska Hiragana/Katakana</h5>
<pre>
Przed : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Po    : ゔんをゑゐわゎろれるりらよょゆゅやゃもめむみまぽぼほぺべへぷぶふぴびひぱばはのねぬになどとでてづつっぢちだたぞそぜせずすじしざさごこげけぐくぎきがかおぉえぇうぅいぃあぁ
</pre>

<pre>
Przed : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Po    : ヴンヲヱヰワヮロレルリラヨョユュヤャモメムミマポボホペベヘプブフピビヒパバハノネヌニナドトデテヅツッヂチダタゾソゼセズスジシザサゴコゲケグクギキガカオォエェウゥイィアァ
</pre>

<p>Kolejność znaków jest zgodna z definicją w Unicode. Znaki takie jak „ゕ”, „ゖ”, „ヵ”, „ヶ”, „ヷ”, „ヸ”, „ヹ”, „ヺ” nie są szyfrowane.</p>
