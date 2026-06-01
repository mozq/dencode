<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Giới thiệu về màu LCH</h3>
<p>Màu LCH là một không gian màu biểu diễn màu bằng độ sáng, chroma và sắc độ. Nó dùng cùng ý tưởng dựa trên cảm nhận như Lab, nhưng biểu diễn màu bằng chroma và góc, nên dễ điều chỉnh riêng cường độ màu và sắc độ.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thành phần</th><th>Ý nghĩa</th><th>Giá trị ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Độ sáng</td><td>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Biểu thị cường độ màu. 0 là không màu, giá trị lớn hơn tạo màu rực hơn.</td><td><code>80</code></td></tr>
			<tr><td>H: Sắc độ</td><td>Biểu thị sắc độ dưới dạng góc.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ví dụ, các màu chính như màu đỏ có thể được biểu diễn như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>LCH ký hiệu</th><th>Ký hiệu RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Xanh lá</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Xanh lime</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Xanh dương</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Trắng</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Đen</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Cách xử lý độ sáng, chroma và sắc độ</h4>
<p>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng Giá trị dưới 0% được xử lý như 0%, và trên 100% được giới hạn về 100%.</p>

<p>Biểu thị cường độ màu. 0 là không màu, giá trị lớn hơn tạo màu rực hơn. Chroma âm được xử lý như 0. Khi chroma bằng 0, màu trở thành không màu và sắc độ được xử lý như 0deg.</p>

<p>Sắc độ được xử lý như một góc. <code>lch(54.29% 106.8372 400.86deg)</code> được xử lý như cùng màu với <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Khác nhau giữa LCH và Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> biểu diễn màu bằng tọa độ vuông góc <code>a</code> và <code>b</code>. LCH biểu diễn màu bằng chroma và sắc độ, nên có thể trực quan hơn khi điều chỉnh ở cùng độ sáng.</p>
