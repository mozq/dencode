<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Giới thiệu về màu HSL</h3>
<p>Màu HSL là mô hình màu biểu diễn màu bằng sắc độ, độ bão hòa và độ sáng. Khác với RGB chỉ định trực tiếp cường độ ánh sáng đỏ, xanh lá và xanh dương, HSL tách sắc độ, độ rực và độ sáng, nên hữu ích khi điều chỉnh màu và thiết kế CSS.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thành phần</th><th>Ý nghĩa</th><th>Giá trị ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Sắc độ</td><td>Biểu thị sắc độ dưới dạng góc. Đỏ ở khoảng 0deg, xanh lá khoảng 120deg và xanh dương khoảng 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Độ bão hòa</td><td>Biểu thị độ rực của màu. 0% là không màu, 100% là màu rực nhất.</td><td><code>50%</code></td></tr>
			<tr><td>L: Độ sáng</td><td>Biểu thị độ sáng của màu. 0% là đen, 50% là độ sáng thông thường và 100% là trắng.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ví dụ, các màu chính như màu đỏ có thể được biểu diễn như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Ký hiệu HSL</th><th>Ký hiệu RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Xanh lá</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Xanh lime</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Xanh dương</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Trắng</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Đen</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>Khi nhập, bạn có thể dùng ký hiệu phân tách bằng khoảng trắng <code>hsl(0deg 100% 50%)</code>, cũng như ký hiệu cũ phân tách bằng dấu phẩy <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Cách xử lý sắc độ, độ bão hòa và độ sáng</h4>
<p>Sắc độ được xử lý như một góc; giá trị lớn hơn 360deg hoặc giá trị âm được chuẩn hóa về khoảng 0deg đến 360deg. Ví dụ, <code>hsl(360deg 100% 50%)</code> được xử lý như cùng màu với <code>hsl(0deg 100% 50%)</code>, và <code>hsl(-120deg 100% 50%)</code> như cùng màu với <code>hsl(240deg 100% 50%)</code>.</p>

<p>Độ bão hòa và độ sáng được xử lý trong khoảng từ 0% đến 100%. Khi độ bão hòa là 0%, màu trở thành màu xám không màu bất kể sắc độ. Khi độ sáng là 0%, màu là đen; khi là 100%, màu là trắng.</p>

<h4>Khác nhau giữa HSL và RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> chỉ định trực tiếp các thành phần đỏ, xanh lá và xanh dương, nên gần với hiển thị màn hình và dữ liệu ảnh. HSL tách sắc độ, độ bão hòa và độ sáng, giúp các thao tác như “làm sáng hơn nhưng giữ cùng sắc độ” hoặc “chỉ giảm độ bão hòa” dễ hơn.</p>

<p>Tuy nhiên, HSL không phải là không gian màu đồng đều hoàn toàn theo cảm nhận. Khi cần xử lý độ sáng thị giác hoặc khác biệt màu dễ hơn, có thể dùng các không gian màu như <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> và <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
