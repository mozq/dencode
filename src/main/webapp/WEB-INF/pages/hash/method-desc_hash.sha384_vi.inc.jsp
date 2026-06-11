<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về SHA-384</h3>
<p>SHA-384 là hàm băm mật mã tạo giá trị băm 384 bit từ dữ liệu có độ dài bất kỳ. Nó thuộc họ SHA-2 và xuất giá trị băm dài hơn <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị băm SHA-384 được hiển thị bằng 96 chữ số thập lục phân.</p>

<p>Ví dụ, giá trị băm SHA-384 của "Hello, world!" như sau.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Đặc điểm của giá trị băm</h4>
<p>SHA-384 luôn tạo cùng một giá trị băm từ cùng một đầu vào. Nếu đầu vào thay đổi dù rất nhỏ, giá trị băm xuất ra sẽ thay đổi đáng kể.</p>
<p>Hàm băm là hàm một chiều, nên không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị băm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Giá trị băm SHA-384</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
