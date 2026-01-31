<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về ROT47</h3>
<p>ROT47 là một dạng mật mã thay thế đơn, trong đó mỗi ký tự trong văn bản được thay thế bằng một ký tự khác.</p>
<p>Việc thay thế ký tự được thực hiện bằng cách dịch chuyển các ký tự ASCII từ "!" đến "~" 47 vị trí trong tổng số 94 ký tự.</p>
<p>Ví dụ, "!" được mã hóa thành "P", "A" thành "p", "0" thành "_".</p>

<pre>
Trước mã hóa : !"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
Sau mã hóa   : PQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNO
</pre>

<pre>
Văn bản trước mã hóa : THIS IS A SECRET MESSAGE 123!
Văn bản sau mã hóa   : %wx$ x$ p $tr#t% |t$$pvt `abP
</pre>

<p>Do tính chất đảo ngược (mã hóa lại văn bản đã mã hóa sẽ ra văn bản gốc), quá trình giải mã cũng giống hệt quá trình mã hóa.</p>
