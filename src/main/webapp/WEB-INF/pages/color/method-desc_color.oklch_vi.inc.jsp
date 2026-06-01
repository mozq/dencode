<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Giới thiệu về màu Oklch</h3>
<p>Màu Oklch là một không gian màu dựa trên cảm nhận, biểu diễn màu bằng độ sáng, chroma và sắc độ. Nó dùng cùng ý tưởng như Oklab, nhưng biểu diễn màu bằng chroma và góc, nên dễ điều chỉnh riêng cường độ màu và sắc độ.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thành phần</th><th>Ý nghĩa</th><th>Giá trị ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Độ sáng</td><td>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Biểu thị cường độ màu. 0 là không màu, giá trị lớn hơn tạo màu rực hơn.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Sắc độ</td><td>Biểu thị sắc độ dưới dạng góc.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ví dụ, các màu chính như màu đỏ có thể được biểu diễn như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Oklch ký hiệu</th><th>Ký hiệu RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Xanh lá</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Xanh lime</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Xanh dương</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Trắng</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Đen</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Cách xử lý độ sáng, chroma và sắc độ</h4>
<p>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng Giá trị dưới 0% được xử lý như 0%, và trên 100% được giới hạn về 100%.</p>

<p>Biểu thị cường độ màu. 0 là không màu, giá trị lớn hơn tạo màu rực hơn. Chroma âm được xử lý như 0. Khi chroma bằng 0, màu trở thành không màu và sắc độ được xử lý như 0deg.</p>

<p>Sắc độ được xử lý như một góc. <code>oklch(62.8% 0.2577 389.23deg)</code> được xử lý như cùng màu với <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Khác nhau giữa Oklch và Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> biểu diễn màu bằng tọa độ vuông góc <code>a</code> và <code>b</code>. Oklch chuyển màu đó thành chroma và sắc độ.</p>

<h4>Khác nhau giữa Oklch và LCH</h4>
<p>Oklch được thiết kế để tạo ra thay đổi thị giác đồng đều hơn <a href="${dc:h(basePath)}/color/lch">LCH</a> khi thay đổi sắc độ hoặc chroma.</p>
