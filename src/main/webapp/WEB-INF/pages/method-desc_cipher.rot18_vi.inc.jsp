<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về ROT18</h3>
<p>ROT18 là một dạng mật mã thay thế đơn, trong đó mỗi ký tự trong văn bản được thay thế bằng một ký tự khác.</p>
<p>Việc thay thế ký tự được thực hiện bằng cách dịch chuyển các ký tự từ "A" đến "Z" 13 vị trí trong bảng chữ cái, và các số từ "0" đến "9" 5 vị trí trong bảng số.</p>
<p>Ví dụ, "A" được mã hóa thành "N", "0" thành "5".</p>

<pre>
Trước mã hóa : ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
Sau mã hóa   : NOPQRSTUVWXYZABCDEFGHIJKLM5678901234
</pre>

<pre>
Văn bản trước mã hóa : THIS IS A SECRET MESSAGE 123
Văn bản sau mã hóa   : GUVF VF N FRPERG ZRFFNTR 567
</pre>

<p>Do tính chất đảo ngược (mã hóa lại văn bản đã mã hóa sẽ ra văn bản gốc), quá trình giải mã cũng giống hệt quá trình mã hóa.</p>
