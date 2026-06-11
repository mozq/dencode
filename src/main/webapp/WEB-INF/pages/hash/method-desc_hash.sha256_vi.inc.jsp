<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về SHA-256</h3>
<p>SHA-256 là hàm băm mật mã tạo giá trị băm 256 bit từ dữ liệu có độ dài bất kỳ. Nó thuộc họ SHA-2 và được dùng cho nhiều mục đích như phát hiện thay đổi tệp, kiểm tra tính toàn vẹn của dữ liệu, chữ ký số, chứng chỉ và blockchain.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị băm SHA-256 được hiển thị bằng 64 chữ số thập lục phân.</p>

<p>Ví dụ, giá trị băm SHA-256 của "Hello, world!" như sau.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Đặc điểm của giá trị băm</h4>
<p>SHA-256 luôn tạo cùng một giá trị băm từ cùng một đầu vào. Nếu đầu vào thay đổi dù rất nhỏ, giá trị băm xuất ra sẽ thay đổi đáng kể.</p>
<p>Hàm băm là hàm một chiều, nên không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị băm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Giá trị băm SHA-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
