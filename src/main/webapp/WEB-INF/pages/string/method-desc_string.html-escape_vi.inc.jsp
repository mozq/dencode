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

<h4>Escape cơ bản và escape toàn bộ</h4>
<p>DenCode hiển thị hai kết quả HTML Escape: “Cơ bản” và “Tất cả”.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Loại</th><th scope="col">Mô tả</th><th scope="col">Ví dụ cho “A &lt; あ”</th></tr>
		<tr><td>HTML Escape (Cơ bản)</td><td>Chuyển đổi năm ký tự <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> và <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML Escape (Tất cả)</td><td>Dùng tham chiếu ký tự có tên nếu có, và dùng tham chiếu ký tự số thập phân cho các ký tự còn lại.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Trong hiển thị HTML thông thường, escape cơ bản, chỉ chuyển đổi các ký tự cần thiết, thường được sử dụng. Escape toàn bộ hữu ích khi muốn kiểm tra chuỗi dưới dạng tham chiếu ký tự HTML hoặc biểu diễn rõ ràng từng ký tự dưới dạng tham chiếu.</p>

<h4>Unescape</h4>
<p>HTML Unescape chuyển các tham chiếu ký tự HTML trở lại ký tự gốc. DenCode có thể giải mã các tham chiếu ký tự có tên như <code>&amp;lt;</code> và <code>&amp;amp;</code>, tham chiếu ký tự số thập phân như <code>&amp;#12354;</code>, cũng như tham chiếu ký tự số thập lục phân như <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Tham chiếu ký tự HTML</th><th scope="col">Sau Unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
