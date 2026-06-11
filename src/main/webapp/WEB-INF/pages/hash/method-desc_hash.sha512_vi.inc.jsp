<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về SHA-512</h3>
<p>SHA-512 là hàm băm mật mã tạo giá trị băm 512 bit từ dữ liệu có độ dài bất kỳ. Nó thuộc họ SHA-2 và xuất giá trị băm dài hơn <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị băm SHA-512 được hiển thị bằng 128 chữ số thập lục phân.</p>

<p>Ví dụ, giá trị băm SHA-512 của "Hello, world!" như sau.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Đặc điểm của giá trị băm</h4>
<p>SHA-512 luôn tạo cùng một giá trị băm từ cùng một đầu vào. Nếu đầu vào thay đổi dù rất nhỏ, giá trị băm xuất ra sẽ thay đổi đáng kể.</p>
<p>Hàm băm là hàm một chiều, nên không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị băm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Giá trị băm SHA-512</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
