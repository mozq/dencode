<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về MD2</h3>
<p>MD2 là hàm băm tạo giá trị băm 128 bit từ dữ liệu có độ dài bất kỳ. Đây là thuật toán cũ và không được khuyến nghị cho các mục đích mật mã hiện nay.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị băm MD2 được hiển thị bằng 32 chữ số thập lục phân.</p>

<p>Ví dụ, giá trị băm MD2 của "Hello, world!" như sau.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Đặc điểm của giá trị băm</h4>
<p>MD2 luôn tạo cùng một giá trị băm từ cùng một đầu vào. Nếu đầu vào thay đổi dù rất nhỏ, giá trị băm xuất ra sẽ thay đổi đáng kể.</p>
<p>Hàm băm là hàm một chiều, nên không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị băm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Giá trị băm MD2</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 đôi khi được dùng để kiểm tra tương thích, nhưng với mục đích mới nên cân nhắc hàm băm mới hơn như <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
