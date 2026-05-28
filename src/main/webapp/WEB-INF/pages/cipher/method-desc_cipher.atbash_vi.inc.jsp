<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Mật mã Atbash</h3>
<p>Mật mã Atbash là một dạng mật mã thay thế đơn, trong đó mỗi ký tự trong văn bản được thay thế bằng một ký tự khác.</p>
<p>Việc thay thế ký tự được thực hiện bằng cách ánh xạ danh sách ký tự theo thứ tự ngược lại.</p>
<p>Ví dụ, đối với các chữ cái tiếng Anh "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "A" được mã hóa thành "Z", "B" thành "Y".</p>

<pre>
Trước mã hóa : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Sau mã hóa   : ZYXWVUTSRQPONMLKJIHGFEDCBA
</pre>

<pre>
Văn bản trước mã hóa : THIS IS A SECRET MESSAGE
Văn bản sau mã hóa   : GSRH RH Z HVXIVG NVHHZTV
</pre>

<p>Ban đầu nó được sử dụng như một mật mã cho tiếng Do Thái. Mã hóa tiếng Do Thái như sau:</p>

<pre>
Trước mã hóa : אבגדהוזחטיכלמנסעפצקרשת
Sau mã hóa   : תשרקצפעסנמלכיטחזוהדגבא
</pre>

<p>Do tính chất đảo ngược (mã hóa lại văn bản đã mã hóa sẽ ra văn bản gốc), quá trình giải mã cũng giống hệt quá trình mã hóa.</p>


<h4>Hỗ trợ ngôn ngữ khác</h4>
<p>Ngoài chữ Latinh và tiếng Do Thái, DenCode còn hỗ trợ chữ Cyrillic và chữ Kana Nhật Bản (Hiragana/Katakana).</p>

<h5>Chữ Cyrillic</h5>
<pre>
Trước mã hóa : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Sau mã hóa   : ЯЮЭЬЫЪЩШЧЦХФУТСРПОНМЛКЙИЗЖЕДГВБА
</pre>

<h5>Chữ Kana Nhật Bản (Hiragana/Katakana)</h5>
<pre>
Trước mã hóa : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Sau mã hóa   : ゔんをゑゐわゎろれるりらよょゆゅやゃもめむみまぽぼほぺべへぷぶふぴびひぱばはのねぬになどとでてづつっぢちだたぞそぜせずすじしざさごこげけぐくぎきがかおぉえぇうぅいぃあぁ
</pre>

<pre>
Trước mã hóa : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Sau mã hóa   : ヴンヲヱヰワヮロレルリラヨョユュヤャモメムミマポボホペベヘプブフピビヒパバハノネヌニナドトデテヅツッヂチダタゾソゼセズスジシザサゴコゲケグクギキガカオォエェウゥイィアァ
</pre>

<p>Thứ tự ký tự dựa trên định nghĩa Unicode. Lưu ý rằng các ký tự "ゕ", "ゖ", "ヵ", "ヶ" và "ヷ", "ヸ", "ヹ", "ヺ" không được mã hóa.</p>
