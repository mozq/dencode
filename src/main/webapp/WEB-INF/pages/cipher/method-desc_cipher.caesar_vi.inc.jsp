<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Mật mã Caesar</h3>
<p>Mật mã Caesar là một dạng mật mã thay thế đơn, trong đó mỗi ký tự trong văn bản được thay thế bằng một ký tự khác.</p>
<p>Việc thay thế ký tự được thực hiện bằng cách dịch chuyển các ký tự từ "A" đến "Z" trong bảng chữ cái.</p>
<p>Ví dụ, nếu dịch chuyển -3 ký tự, "A" sẽ được mã hóa thành "X", "Z" thành "W".</p>

<pre>
Trước mã hóa : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Sau mã hóa   : XYZABCDEFGHIJKLMNOPQRSTUVW
</pre>

<pre>
Văn bản trước mã hóa : THIS IS A SECRET MESSAGE
Văn bản sau mã hóa   : QEFP FP X PBZOBQ JBPPXDB
</pre>

<p>Số lượng dịch chuyển chính là khóa của mật mã.</p>
<p>Chỉ các chữ cái được mã hóa, số và ký hiệu không thay đổi.</p>
<p>Nếu số lượng dịch chuyển là 13, kết quả sẽ giống <a href="rot13">ROT13</a>.</p>

<p>Các ký tự có dấu (diacritical marks) được dịch chuyển trong khi vẫn giữ nguyên dấu. Ví dụ, "Á" sẽ được mã hóa thành "X́".</p>


<h4>Hỗ trợ ngôn ngữ khác</h4>
<p>Ngoài chữ Latinh, DenCode còn hỗ trợ chữ Cyrillic và chữ Kana Nhật Bản (Hiragana/Katakana).</p>

<h5>Chữ Cyrillic</h5>
<p>Nếu dịch chuyển chữ Cyrillic -3 ký tự, nó sẽ được mã hóa như sau:</p>

<pre>
Trước mã hóa : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Sau mã hóa   : ЭЮЯАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬ
</pre>

<p>Các ký tự có dấu được dịch chuyển trong khi vẫn giữ nguyên dấu. Do đó, ví dụ chữ cái Nga "Ё" sẽ được mã hóa thành "В̈". Các ký tự "Й" và "й" được xử lý như một ký tự riêng biệt, không phải là "И", "и" với dấu " ̆" (Breve).</p>

<h5>Chữ Kana Nhật Bản (Hiragana/Katakana)</h5>
<p>Nếu dịch chuyển chữ Kana Nhật Bản -3 ký tự, nó sẽ được mã hóa như sau:</p>

<pre>
Trước mã hóa : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Sau mã hóa   : をんゔぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑ
</pre>

<pre>
Trước mã hóa : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Sau mã hóa   : ヲンヴァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱ
</pre>

<p>Thứ tự ký tự dựa trên định nghĩa Unicode. Lưu ý rằng các ký tự "ゕ", "ゖ", "ヵ", "ヶ" và "ヷ", "ヸ", "ヹ", "ヺ" không được mã hóa.</p>
