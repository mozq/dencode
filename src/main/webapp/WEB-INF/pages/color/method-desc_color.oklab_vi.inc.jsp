<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Giới thiệu về màu Oklab</h3>
<p>Màu Oklab là một không gian màu dựa trên cảm nhận, biểu diễn màu bằng độ sáng và hai thành phần màu. Giống như Lab, nó tách độ sáng và màu sắc, nhưng là mô hình mới hơn được thiết kế để thay đổi màu gần với cảm nhận thị giác hơn.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thành phần</th><th>Ý nghĩa</th><th>Giá trị ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Độ sáng</td><td>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Biểu thị hướng từ xanh lá đến đỏ. Giá trị âm nghiêng về xanh lá, giá trị dương nghiêng về đỏ.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Biểu thị hướng từ xanh dương đến vàng. Giá trị âm nghiêng về xanh dương, giá trị dương nghiêng về vàng.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ví dụ, các màu chính như màu đỏ có thể được biểu diễn như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Oklab ký hiệu</th><th>Ký hiệu RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Xanh lá</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Xanh lime</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Xanh dương</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Trắng</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Đen</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Cách xử lý độ sáng, a và b</h4>
<p>Biểu thị độ sáng của màu. 0% là đen và 100% là trắng Giá trị dưới 0% được xử lý như 0%, và trên 100% được giới hạn về 100%.</p>

<p><code>a</code> và <code>b</code> được chỉ định bằng số dương hoặc âm. Giá trị không bị cắt về một phạm vi cố định và được xử lý như các thành phần đã chỉ định.</p>

<h4>Khác nhau giữa Oklab và Oklch</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> dùng cùng ý tưởng dựa trên cảm nhận như Oklab, nhưng biểu diễn màu bằng chroma và sắc độ.</p>

<h4>Khác nhau giữa Oklab và Lab</h4>
<p>Oklab được thiết kế để tạo ra thay đổi thị giác đồng đều hơn <a href="${dc:h(basePath)}/color/lab">Lab</a> khi thay đổi sắc độ hoặc chroma.</p>
