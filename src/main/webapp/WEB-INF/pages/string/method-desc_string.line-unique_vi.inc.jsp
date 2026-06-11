<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về xóa dòng trùng lặp</h3>
<p>Xóa dòng trùng lặp loại bỏ các dòng lặp lại trong văn bản nhiều dòng. Nếu cùng một dòng xuất hiện nhiều hơn một lần, chỉ lần xuất hiện đầu tiên được giữ lại, còn các lần sau sẽ bị xóa.</p>
<p>Các dòng còn lại vẫn giữ thứ tự ban đầu. Văn bản không được sắp xếp lại.</p>

<p>Ví dụ, khi xóa các dòng trùng lặp khỏi văn bản sau:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>Kết quả là:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Dòng đầu vào</th><th scope="col">Kết quả</th><th scope="col">Mô tả</th></tr>
		<tr><td><code>apple</code> (lần 1)</td><td>Giữ lại</td><td>Đây là lần xuất hiện đầu tiên của dòng.</td></tr>
		<tr><td><code>banana</code> (lần 1)</td><td>Giữ lại</td><td>Đây là lần xuất hiện đầu tiên của dòng.</td></tr>
		<tr><td><code>apple</code> (lần 2)</td><td>Xóa</td><td>Dòng này đã xuất hiện trước đó.</td></tr>
		<tr><td><code>orange</code> (lần 1)</td><td>Giữ lại</td><td>Đây là lần xuất hiện đầu tiên của dòng.</td></tr>
		<tr><td><code>banana</code> (lần 2)</td><td>Xóa</td><td>Dòng này đã xuất hiện trước đó.</td></tr>
	</table>
</div>

<p>Việc phát hiện trùng lặp so sánh toàn bộ nội dung của từng dòng. Khác biệt về chữ hoa và chữ thường, khoảng trắng ở đầu hoặc cuối, cũng như ký tự toàn chiều rộng hoặc nửa chiều rộng đều được xem là văn bản khác nhau.</p>
