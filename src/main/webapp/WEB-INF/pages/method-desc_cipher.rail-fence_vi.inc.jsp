<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Mật mã Rail Fence</h3>
<p>Mật mã Rail Fence là một dạng mật mã chuyển vị, trong đó các ký tự của văn bản được sắp xếp lại để mã hóa.</p>
<p>Rail Fence có nghĩa là hàng rào sử dụng các thanh ngang (ray), và việc mã hóa được thực hiện bằng cách sắp xếp các ký tự theo hình zigzag trên các ray và cuối cùng nối các ký tự theo từng ray.</p>
<p>Số lượng đường ray là khóa của mật mã.</p>

<p>Ví dụ, nếu mã hóa "THIS_IS_A_SECRET_MESSAGE" với 4 đường ray:</p>

<p>1. Chuẩn bị 4 đường ray (chiều cao 4), và sắp xếp các ký tự theo hình zigzag từ trên cùng bên trái.</p>
<pre>
-----------------------------------------------
T           S           C           E          
-----------------------------------------------
  H       I   _       E   R       M   S       E
-----------------------------------------------
    I   _       A   S       E   _       S   G  
-----------------------------------------------
      S           _           T           A    
-----------------------------------------------
</pre>

<p>2. Lấy các ký tự đã sắp xếp theo từng đường ray.</p>
<pre>
TSCE
HI_ERMSE
I_ASE_SG
S_TA
</pre>

<p>3. Nối các ký tự của các đường ray lại.</p>
<pre>TSCEHI_ERMSEI_ASE_SGS_TA</pre>
