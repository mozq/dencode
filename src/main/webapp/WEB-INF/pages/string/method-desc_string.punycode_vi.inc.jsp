<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Punycode IDN</h3>
<p>Punycode là phương pháp mã hóa dùng để biểu diễn chuỗi Unicode chỉ bằng các ký tự ASCII. Nó chủ yếu được dùng để chuyển đổi tên miền quốc tế hóa (IDN), chẳng hạn tên miền có ký tự tiếng Nhật, tiếng Trung, tiếng Hàn hoặc chữ Latin có dấu, sang dạng ASCII mà DNS có thể xử lý.</p>
<p>Trong tên miền quốc tế hóa, từng nhãn của tên miền được chuyển đổi bằng Punycode, rồi nhãn đã chuyển đổi được thêm tiền tố <code>xn--</code>. Dạng ASCII này được gọi là A-label, còn dạng Unicode ban đầu được gọi là U-label.</p>

<p>Ví dụ, khi chuyển “ドメイン.com” sang Punycode IDN, kết quả như sau.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>Trong ví dụ này, tên miền cấp cao nhất <code>com</code> chỉ gồm ký tự ASCII nên được giữ nguyên. Chỉ nhãn “ドメイン” được chuyển thành <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Dạng Unicode</th><th scope="col">Dạng Punycode IDN</th><th scope="col">Mô tả</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Tên miền có ký tự tiếng Nhật.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Mỗi nhãn được chuyển đổi riêng.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Ví dụ có chữ Latin có dấu.</td></tr>
	</table>
</div>

<p>Punycode IDN khác với mã hóa URL. Mã hóa URL biểu diễn ký tự trong URL dưới dạng dãy byte như <code>%E3%81%82</code>, còn Punycode IDN chuyển nhãn của tên miền thành nhãn ASCII bắt đầu bằng <code>xn--</code>.</p>

<h4>Chuyển đổi theo từng nhãn tên miền</h4>
<p>Tên miền là một chuỗi các nhãn được phân tách bằng dấu chấm (<code>.</code>). Punycode IDN không chuyển đổi toàn bộ tên miền như một chuỗi duy nhất; từng nhãn được chuyển đổi riêng.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Nhãn</th><th scope="col">Kết quả chuyển đổi</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Vì vậy, <code>例え.テスト</code> được chuyển thành <code>xn--r8jz45g.xn--zckzah</code>.</p>
