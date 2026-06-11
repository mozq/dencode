<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về CRC32</h3>
<p>CRC32 là phương pháp phát hiện lỗi tạo giá trị kiểm tra 32 bit từ dữ liệu có độ dài bất kỳ. Nó được dùng trong truyền tệp, định dạng nén và các trường hợp tương tự để kiểm tra dữ liệu có bị hỏng hay không.</p>
<p>Trong DenCode, chuỗi đã nhập được xử lý như một dãy byte theo mã hóa ký tự được chọn, và giá trị CRC32 được hiển thị ở dạng thập lục phân.</p>

<p>Ví dụ, CRC32 của "Hello, world!" như sau.</p>

<pre>ebe6c6e6</pre>

<h4>Đặc điểm của CRC32</h4>
<p>CRC32 phù hợp để phát hiện hỏng dữ liệu ngẫu nhiên. Tuy nhiên, vì không phải là hàm băm mật mã, CRC32 không phù hợp cho mục đích cần an toàn trước việc sửa đổi.</p>
<p>CRC32 luôn tạo cùng một giá trị từ cùng một đầu vào. Khi đầu vào thay đổi, giá trị xuất ra cũng thay đổi. Tuy nhiên, không thể khôi phục dữ liệu đầu vào ban đầu từ giá trị CRC32.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
