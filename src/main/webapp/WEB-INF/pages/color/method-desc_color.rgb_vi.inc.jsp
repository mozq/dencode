<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về màu RGB</h3>
<p>Màu RGB là mô hình màu biểu diễn màu bằng cách kết hợp ba thành phần ánh sáng: đỏ, xanh lục và xanh lam. Nó được dùng rộng rãi cho màu trên màn hình, như màn hình hiển thị, trang web và dữ liệu hình ảnh.</p>

<p>Trong RGB, cường độ của từng thành phần được chỉ định bằng giá trị số. Thông thường dùng số nguyên từ 0 đến 255 hoặc phần trăm từ 0% đến 100%. Khi tất cả thành phần là 0, màu là đen; khi tất cả thành phần ở mức tối đa, màu là trắng.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Ký hiệu RGB</th><th>Ký hiệu thập lục phân</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Xanh lục</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Xanh lam</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Trắng</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Đen</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>Màu RGB có thể được viết dưới dạng hàm hoặc dạng thập lục phân. Ví dụ, màu đỏ có thể được biểu diễn là <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> hoặc <code>#f00</code>.</p>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>rgb(255 0 0 / 50%)</code> hoặc <code>#ff000080</code>.</p>

<p>Chuyển đổi màu RGB của DenCode hỗ trợ các tùy chọn ký hiệu sau.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Màu RGB (hex)</caption>
		<thead>
			<tr><th>Tùy chọn ký hiệu</th><th>Định dạng</th><th>Ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Màu RGB</caption>
		<thead>
			<tr><th>Tùy chọn ký hiệu</th><th>Định dạng</th><th>Ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td>Số</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Phần trăm</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> không phải là ký hiệu màu thập lục phân chuẩn của CSS, mà là định dạng ARGB đôi khi được dùng trong chương trình và cài đặt ứng dụng. <code>AA</code> ở đầu biểu diễn alpha, tiếp theo <code>RR</code>, <code>GG</code> và <code>BB</code> biểu diễn đỏ, xanh lục và xanh lam.</p>

<h4>sRGB và các không gian màu RGB khác</h4>
<p>RGB là mô hình màu biểu diễn màu bằng ba thành phần: đỏ, xanh lục và xanh lam. Tuy nhiên, ngay cả với cùng giá trị RGB, màu thực tế vẫn khác nhau tùy theo không gian màu được dùng để diễn giải. Các giá trị phổ biến trên web như <code>rgb()</code> và <code>#RRGGBB</code> thường được xử lý như màu trong không gian sRGB.</p>

<p>CSS Color Module Level 4 cũng định nghĩa các không gian màu RGB có gamut khác với sRGB, như Display P3 và ProPhoto RGB. DenCode cũng hỗ trợ chuyển đổi các không gian màu này.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Không gian màu</th><th>Định dạng</th><th>Ví dụ</th><th>Đặc điểm</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Không gian màu RGB phổ biến cho web và CSS. Mã màu thập lục phân và giá trị <code>rgb()</code> thông thường về cơ bản được xử lý như sRGB. <code>color(srgb ...)</code> là định dạng của CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Không gian màu dùng cùng gamut với sRGB nhưng biểu diễn giá trị bằng các thành phần tuyến tính hóa. Được dùng cho tính toán và tổng hợp màu.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Không gian màu có gamut rộng hơn sRGB, dùng trên màn hình wide gamut và một số thiết bị di động.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Không gian rộng hơn sRGB, đôi khi dùng trong chỉnh sửa ảnh và quy trình hướng đến in ấn.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Không gian RGB có gamut còn rộng hơn Adobe RGB, dùng làm không gian làm việc trong chỉnh sửa ảnh.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Không gian RGB có gamut rất rộng, dùng trong chuẩn video UHDTV và HDR.</td></tr>
		</tbody>
	</table>
</div>

<p>Màu được chỉ định trong không gian RGB gamut rộng có thể không được biểu diễn chính xác trên màn hình sRGB hoặc bằng mã thập lục phân thông thường. Khi DenCode chuyển đổi sang <code>#RRGGBB</code> hoặc <code>rgb(R G B)</code> dạng số, các thành phần ngoài phạm vi sRGB được xử lý để nằm trong khoảng <code>0</code> đến <code>255</code>. Khi chọn <code>color(display-p3 ...)</code> hoặc <code>color(a98-rgb ...)</code>, màu có thể hiển thị dưới dạng giá trị thành phần của không gian đã chọn.</p>
