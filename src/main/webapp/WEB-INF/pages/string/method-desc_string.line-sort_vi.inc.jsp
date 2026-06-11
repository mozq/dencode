<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về sắp xếp dòng</h3>
<p>Sắp xếp dòng dùng để sắp xếp lại văn bản nhiều dòng theo từng dòng. Các dòng đầu vào có thể được sắp xếp tăng dần, giảm dần hoặc đảo ngược theo thứ tự hiện tại.</p>
<p>Với thứ tự tăng dần và giảm dần, mỗi dòng đầy đủ được so sánh như một chuỗi Unicode. Với thứ tự đảo ngược, nội dung của từng dòng không thay đổi; chỉ thứ tự các dòng từ trên xuống dưới bị đảo lại.</p>

<p>Ví dụ, khi sắp xếp văn bản sau theo thứ tự tăng dần:</p>

<pre>
banana
apple
orange
</pre>

<p>Kết quả là:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Thứ tự</th><th scope="col">Mô tả</th><th scope="col">Ví dụ chuyển đổi</th></tr>
		<tr><td>Tăng dần</td><td>Sắp xếp các dòng từ giá trị chuỗi Unicode nhỏ đến lớn.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Giảm dần</td><td>Sắp xếp các dòng từ giá trị chuỗi Unicode lớn đến nhỏ.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Đảo ngược</td><td>Đảo ngược thứ tự các dòng đầu vào.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Chữ hoa, chữ thường, chữ số, ký hiệu và các ký tự không thuộc bảng chữ cái Latin đều được so sánh như ký tự Unicode. Vì vậy, kết quả dựa trên so sánh chuỗi, không phải thứ tự từ điển của ngôn ngữ tự nhiên hay giá trị số.</p>
