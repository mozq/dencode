<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về SHA-1</h3>
<p>SHA-1 là hàm băm mật mã tạo giá trị băm 160 bit từ dữ liệu có độ dài bất kỳ. Trước đây nó được dùng rộng rãi, nhưng hiện có vấn đề về khả năng chống va chạm nên không được khuyến nghị cho mục đích mật mã mới.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị băm SHA-1 được hiển thị bằng 40 chữ số thập lục phân.</p>

<p>Ví dụ, giá trị băm SHA-1 của "Hello, world!" như sau.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Đặc điểm của giá trị băm</h4>
<p>SHA-1 luôn tạo cùng một giá trị băm từ cùng một đầu vào. Nếu đầu vào thay đổi dù rất nhỏ, giá trị băm xuất ra sẽ thay đổi đáng kể.</p>
<p>Hàm băm là hàm một chiều, nên không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị băm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Giá trị băm SHA-1</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Có thể dùng để tương thích với hệ thống hiện có, nhưng với mục đích mới nên cân nhắc <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> hoặc hàm băm mạnh hơn.</p>
