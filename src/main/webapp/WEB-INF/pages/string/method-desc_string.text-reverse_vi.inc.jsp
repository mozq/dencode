<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về đảo ngược văn bản</h3>
<p>Đảo ngược văn bản đảo thứ tự các ký tự trong chuỗi đầu vào. Toàn bộ chuỗi được đọc từ ký tự cuối cùng về ký tự đầu tiên.</p>

<p>Ví dụ, khi đảo ngược "Hello, world!", kết quả là:</p>

<pre>!dlrow ,olleH</pre>

<p>Trong văn bản nhiều dòng, ký tự xuống dòng cũng là một phần của chuỗi. Vì vậy, toàn bộ nội dung sẽ bị đảo ngược, bao gồm cả thứ tự các dòng.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Đầu vào</th><th scope="col">Sau khi đảo ngược</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Chuyển đổi này không sắp xếp lại các từ để giữ nguyên nghĩa của câu. Nó chỉ đảo ngược thứ tự các ký tự đã nhập.</p>
