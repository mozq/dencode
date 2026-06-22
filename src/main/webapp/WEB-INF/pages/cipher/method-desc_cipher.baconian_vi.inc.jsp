<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về mật mã Bacon</h3>
<p>Mật mã Bacon là một mật mã thay thế, trong đó mỗi chữ cái được biểu diễn bằng một mẫu nhị phân gồm năm ký hiệu, chẳng hạn A/B.</p>

<pre>
Văn bản gốc: HELLO, WORLD!
Bản mã     : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Mật mã Bacon nguyên bản dùng bảng chữ cái 24 chữ, trong đó I/J và U/V được xem là cùng một chữ. Phiên bản thứ hai gán mã riêng cho từng chữ từ A đến Z. DenCode hỗ trợ cả hai bảng chữ cái.</p>

<h4>Bảng chữ cái nguyên bản 24 chữ</h4>
<p>Trong bảng chữ cái nguyên bản, I và J dùng chung một mã, U và V cũng vậy. Khi mã hóa, J được chuyển như I, còn V được chuyển như U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Phiên bản thứ hai: bảng chữ cái 26 chữ</h4>
<p>Trong phiên bản thứ hai, mỗi chữ từ A đến Z có mã Baconian riêng, bao gồm cả I, J, U và V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Các ký tự không được bảng chữ cái đã chọn hỗ trợ sẽ được giữ nguyên.</p>

<h4>Sử dụng như kỹ thuật giấu tin</h4>
<p>Mật mã Bacon do Francis Bacon nghĩ ra vào năm 1605. Khi viết trực tiếp thành các nhóm A/B gồm năm ký tự, nó hoạt động như một mật mã thay thế. Khi các lựa chọn A/B được giấu trong hình thức trình bày của một văn bản khác, nó cũng có thể được dùng như một mật mã che giấu hoặc một dạng kỹ thuật giấu tin.</p>
<p>Để dùng theo kiểu giấu tin, trước hết thông điệp bí mật được chuyển thành chuỗi A/B, rồi chuẩn bị một văn bản che phủ đủ dài để chứa chuỗi đó. Mỗi chữ trong văn bản che phủ được viết bằng một trong hai kiểu chữ: một kiểu được đọc là A, kiểu còn lại là B. Văn bản vẫn trông như một câu bình thường, nhưng khi đọc các khác biệt kiểu chữ theo từng nhóm năm ký tự, ta sẽ khôi phục được thông điệp ẩn. Bacon cũng mô tả một bảng chữ cái song tự cho chữ viết tay, với hai dạng thay thế cho chữ hoa và chữ thường.</p>

<p>Ví dụ, mã hóa “HI” sẽ cho “AABBB ABAAA”. Khi giấu trong văn bản che phủ “Hello world”, nó trông như sau:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>Trong ví dụ này, chữ bình thường được đọc là A và chữ in đậm được đọc là B. Văn bản nhìn thấy là “Hello world”, nhưng nếu chỉ đọc khác biệt kiểu chữ thì thu được “AABBB ABAAA”, và giải mã theo nhóm năm ký tự sẽ được “HI”.</p>
