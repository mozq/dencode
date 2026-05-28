<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Mật mã Scytale</h3>
<p>Mật mã Scytale là một dạng mật mã chuyển vị, trong đó các ký tự của văn bản được sắp xếp lại để mã hóa. Scytale trong tiếng Hy Lạp có nghĩa là cái gậy.</p>
<p>Mã hóa bằng cách quấn một dải giấy da dài quanh một thanh gậy và viết chữ lên dải giấy theo chiều ngang.</p>
<p>Số lượng ký tự có thể viết trên một vòng của thanh gậy là khóa mã hóa. Hoặc cũng có thể chỉ định số ký tự trên một dòng (số vòng giấy quấn).</p>

<p>Ví dụ, nếu mã hóa "THIS_IS_A_SECRET_MESSAGE" với số ký tự trên một vòng là 4:</p>

<p>1. Viết các ký tự ngang qua dải giấy. Vì số ký tự trên một vòng là 4 và văn bản có 24 ký tự, nên viết được tối đa 6 ký tự theo chiều ngang.</p>
<pre>
-----------------------------------
     | T | H | I | S | _ | I |___|
     | S | _ | A | _ | S | E |
  ___| C | R | E | T | _ | M |
 |   | E | S | S | A | G | E |
-----------------------------------
</pre>

<p>2. Khi tháo dải giấy ra khỏi thanh gậy, văn bản đã được mã hóa.</p>
<pre>TSCEH_RSIAESS_TA_S_GIEME</pre>
