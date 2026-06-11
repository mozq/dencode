<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Mã hóa URL</h3>
<p>Mã hóa URL là phương pháp biểu diễn văn bản một cách an toàn trong URL. Tên chính thức của cơ chế này là "percent-encoding", được định nghĩa trong đặc tả URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Các ký tự có ý nghĩa đặc biệt trong URL, hoặc các ký tự khó dùng trực tiếp trong URL, được chuyển thành dấu phần trăm (%) theo sau bởi hai chữ số thập lục phân.</p>
<p>Ví dụ, dấu cách được biểu diễn là <code>%20</code>, dấu chấm than (<code>!</code>) là <code>%21</code>, và ký tự tiếng Nhật "あ" là <code>%E3%81%82</code> trong UTF-8.</p>

<p>Mã hóa URL trước hết chuyển văn bản thành các byte theo bảng mã ký tự đã chọn, sau đó biểu diễn từng byte dưới dạng <code>%HH</code> khi cần. Trong DenCode, các ký tự không dành riêng theo RFC 3986, gồm chữ và số cùng <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, không bị chuyển đổi; các ký tự khác được mã hóa theo percent-encoding.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ký tự</th><th scope="col">Sau khi mã hóa URL</th><th scope="col">Mô tả</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Chữ và số là ký tự không dành riêng, nên không bị chuyển đổi.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> và <code>~</code> là ký tự không dành riêng, nên không bị chuyển đổi.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Ký tự này phân tách các đoạn đường dẫn URL; hãy mã hóa khi nó được dùng như một giá trị.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Ký tự dành riêng dùng để bắt đầu chuỗi truy vấn.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Ký tự dành riêng dùng để phân tách các tham số truy vấn.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Ký tự dành riêng dùng để phân tách tên tham số và giá trị.</td></tr>
		<tr><td>Dấu cách</td><td><code>%20</code></td><td>Trong percent-encoding của URL, dấu cách được mã hóa là <code>%20</code>; trong <code>application/x-www-form-urlencoded</code>, là <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Mã hóa <code>+</code> khi chính dấu cộng là giá trị cần biểu diễn.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>Trong UTF-8, ký tự này được mã hóa thành chuỗi ba byte.</td></tr>
	</table>
</div>

<p>Ví dụ, khi mã hóa URL cho "Hello, world!", kết quả như sau.</p>

<pre>Hello%2C%20world%21</pre>

<p>Trong ví dụ này, dấu phẩy (<code>,</code>) trở thành <code>%2C</code>, dấu cách trở thành <code>%20</code>, và dấu chấm than (<code>!</code>) trở thành <code>%21</code>.</p>


<h4>Biểu diễn dấu cách trong application/x-www-form-urlencoded</h4>
<p>Trong <code>application/x-www-form-urlencoded</code>, được dùng khi gửi biểu mẫu HTML, dấu cách có thể được biểu diễn là <code>+</code>. Định dạng này được định nghĩa trong <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> như mã hóa dùng cho việc gửi biểu mẫu.</p>
<p>DenCode cho phép chọn xuất dấu cách dưới dạng <code>%20</code> hoặc <code>+</code> khi mã hóa.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Định dạng</th><th scope="col">Kết quả cho "Hello world"</th><th scope="col">Cách dùng</th></tr>
		<tr><td>Percent-encoding</td><td><code>Hello%20world</code></td><td>Định dạng chung, phù hợp cho URL.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Dùng trong chuỗi truy vấn và phần thân yêu cầu của biểu mẫu HTML.</td></tr>
	</table>
</div>
