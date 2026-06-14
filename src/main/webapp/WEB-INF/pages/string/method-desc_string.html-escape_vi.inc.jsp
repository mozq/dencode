<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về HTML Escape</h3>
<p>HTML Escape chuyển các ký tự có ý nghĩa đặc biệt trong HTML thành tham chiếu ký tự, để chuỗi có thể được hiển thị an toàn dưới dạng văn bản HTML. Ví dụ, <code>&lt;</code> và <code>&gt;</code>, vốn có thể được hiểu là thẻ, được viết thành <code>&amp;lt;</code> và <code>&amp;gt;</code>.</p>
<p>Khi escape HTML, văn bản nhập vào sẽ không bị hiểu là thẻ hoặc thuộc tính HTML, mà được hiển thị nguyên dạng như văn bản trên màn hình.</p>

<p>Ví dụ, khi escape HTML cho “&lt;p&gt;Hello, world!&lt;/p&gt;”, kết quả sẽ như sau.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ký tự</th><th scope="col">Sau HTML Escape</th><th scope="col">Mô tả</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Có thể được hiểu là phần bắt đầu của thẻ HTML.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Có thể được hiểu là phần kết thúc của thẻ HTML.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Có thể được hiểu là phần bắt đầu của tham chiếu ký tự.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Có ý nghĩa đặc biệt khi giá trị thuộc tính được đặt trong dấu nháy kép.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Có ý nghĩa đặc biệt khi giá trị thuộc tính được đặt trong dấu nháy đơn.</td></tr>
	</table>
</div>

<h4>Tùy chọn thoát HTML</h4>
<p>DenCode cho phép chọn đối tượng, cách dùng tham chiếu ký tự có tên và ký pháp tham chiếu dạng số.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Đối tượng</caption>
		<tr><th scope="col">Tùy chọn</th><th scope="col">Mô tả</th><th scope="col">Ví dụ cho “A &lt; 😀”</th></tr>
		<tr><td>Cơ bản</td><td>Chuyển đổi năm ký tự <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> và <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Cơ bản + không phải ASCII</td><td>Chuyển đổi năm ký tự cơ bản và các ký tự không phải ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Không phải chữ và số</td><td>Chuyển đổi các ký tự không phải chữ cái hoặc chữ số ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Tất cả</td><td>Chuyển đổi tất cả ký tự.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Để hiển thị HTML thông thường, “Cơ bản” thường được dùng vì chỉ chuyển đổi các ký tự cần thiết. Dùng “Tất cả” khi muốn kiểm tra chuỗi dưới dạng tham chiếu ký tự HTML hoặc biểu diễn rõ từng ký tự dưới dạng tham chiếu.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Tham chiếu ký tự có tên</caption>
		<tr><th scope="col">Tùy chọn</th><th scope="col">Mô tả</th><th scope="col">Ví dụ</th></tr>
		<tr><td>HTML5</td><td>Dùng các tham chiếu ký tự có tên được HTML5 định nghĩa.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Dùng các tham chiếu ký tự có tên được HTML4 định nghĩa.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Dùng năm tham chiếu <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> và <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Không có</td><td>Không dùng tham chiếu có tên; chỉ dùng tham chiếu dạng số.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Ký pháp tham chiếu dạng số</caption>
		<tr><th scope="col">Tùy chọn</th><th scope="col">Mô tả</th><th scope="col">Ví dụ</th></tr>
		<tr><td>Thập phân</td><td>Dùng tham chiếu dạng số thập phân.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Thập lục phân chữ thường</td><td>Dùng tham chiếu dạng số thập lục phân với chữ thường.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Thập lục phân chữ hoa</td><td>Dùng tham chiếu dạng số thập lục phân với chữ hoa.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
