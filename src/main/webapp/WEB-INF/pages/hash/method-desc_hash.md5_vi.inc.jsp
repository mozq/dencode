<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về MD5</h3>
<p>MD5 là hàm băm tạo giá trị băm 128 bit từ dữ liệu có độ dài bất kỳ. Nó từng được dùng rộng rãi, nhưng do có vấn đề về khả năng chống va chạm nên không được khuyến nghị cho các mục đích mật mã hiện nay.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị băm MD5 được hiển thị bằng 32 chữ số thập lục phân.</p>

<p>Ví dụ, giá trị băm MD5 của "Hello, world!" như sau.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Đặc điểm của giá trị băm</h4>
<p>MD5 luôn tạo cùng một giá trị băm từ cùng một đầu vào. Nếu đầu vào thay đổi dù rất nhỏ, giá trị băm xuất ra sẽ thay đổi đáng kể.</p>
<p>Hàm băm là hàm một chiều, nên không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị băm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Giá trị băm MD5</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 có thể gặp khi so sánh giá trị kiểm tra cũ, nhưng với mục đích cần an toàn như phát hiện thay đổi hoặc chữ ký, nên cân nhắc <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> hoặc hàm băm mới hơn.</p>
