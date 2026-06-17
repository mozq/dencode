<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về SHA-3</h3>
<p>SHA-3 là hàm băm mật mã tạo giá trị băm có độ dài cố định từ dữ liệu có độ dài bất kỳ. SHA-3 gồm bốn hàm với độ dài giá trị băm khác nhau: SHA3-224, SHA3-256, SHA3-384 và SHA3-512.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị băm SHA-3 được hiển thị ở dạng thập lục phân.</p>

<p>Ví dụ, giá trị băm SHA3-256 của "Hello, world!" như sau.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Đặc điểm của giá trị băm</h4>
<p>SHA-3 luôn tạo cùng một giá trị băm từ cùng một đầu vào. Nếu đầu vào thay đổi dù rất nhỏ, giá trị băm xuất ra sẽ thay đổi đáng kể.</p>
<p>Hàm băm là hàm một chiều, nên không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị băm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Giá trị băm SHA3-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Khác biệt với SHA-2</h4>
<p>SHA-2 dựa trên cấu trúc Merkle-Damgård, cùng họ thiết kế với MD5 và SHA-1. SHA-3 chuẩn hóa Keccak và sử dụng cấu trúc sponge. Vì vậy, SHA-256 và SHA3-256 đều xuất ra giá trị băm 256 bit, nhưng các giá trị được tạo ra là khác nhau.</p>
