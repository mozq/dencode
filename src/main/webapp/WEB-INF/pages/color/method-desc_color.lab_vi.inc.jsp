<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Giới thiệu về màu Lab</h3>
<p>Màu Lab là một không gian màu biểu diễn màu bằng độ sáng, trục từ xanh lá đến đỏ và trục từ xanh dương đến vàng. Khác với RGB chỉ định trực tiếp các thành phần đỏ, xanh lá và xanh dương của màn hình, Lab tách độ sáng và màu sắc theo cách gần với thị giác con người hơn.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thành phần</th><th>Ý nghĩa</th><th>Giá trị ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Độ sáng</td><td>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Biểu thị hướng từ xanh lá đến đỏ. Giá trị âm nghiêng về xanh lá, giá trị dương nghiêng về đỏ.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Biểu thị hướng từ xanh dương đến vàng. Giá trị âm nghiêng về xanh dương, giá trị dương nghiêng về vàng.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ví dụ, các màu chính như màu đỏ có thể được biểu diễn như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Lab ký hiệu</th><th>Ký hiệu RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Xanh lá</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Xanh lime</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Xanh dương</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Trắng</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Đen</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Cách xử lý độ sáng, a và b</h4>
<p>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng Giá trị dưới 0% được xử lý như 0%, và trên 100% được giới hạn về 100%.</p>

<p><code>a</code> và <code>b</code> được chỉ định bằng số dương hoặc âm. Giá trị không bị cắt về một phạm vi cố định và được xử lý như các thành phần đã chỉ định.</p>

<h4>Khác nhau giữa Lab và LCH</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> dùng cùng ý tưởng dựa trên cảm nhận như Lab, nhưng biểu diễn màu bằng chroma và sắc độ.</p>
