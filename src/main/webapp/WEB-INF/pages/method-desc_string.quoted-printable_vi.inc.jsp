<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Quoted-printable</h3>
<p>Quoted-printable là phương thức mã hóa sử dụng các ký tự ASCII 7-bit có thể in được. Được sử dụng trong E-mail để truyền dữ liệu 8-bit qua đường truyền dữ liệu 7-bit.</p>
<p>Trong Quoted-printable, dữ liệu 8-bit được biểu diễn dưới dạng 2 chữ số thập lục phân như =XX. Ví dụ, 'あ' trong UTF-8 trở thành '=E3=81=82'. Các ký tự ASCII 7-bit có thể in được như 'A' sẽ không bị chuyển đổi.</p>


<h4>Định dạng tiêu đề tin nhắn MIME của E-mail (RFC 2047)</h4>
<p>DenCode cũng hỗ trợ giải mã định dạng tiêu đề tin nhắn MIME dưới đây (RFC 2047). Định dạng này được sử dụng khi tiêu đề hoặc người nhận E-mail chứa các ký tự không phải ASCII.</p>

<pre>Subject: =?UTF-8?Q?=E3=82=B5=E3=83=B3=E3=83=97=E3=83=AB?=</pre>

<p>Kết quả sau khi giải mã như sau:</p>

<pre>Subject: サンプル</pre>
