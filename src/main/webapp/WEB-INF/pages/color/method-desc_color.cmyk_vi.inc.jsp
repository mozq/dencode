<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về màu CMYK</h3>
<p>Màu CMYK là một mô hình màu biểu diễn màu bằng bốn thành phần: cyan, magenta, vàng và đen (key plate). Nó chủ yếu được dùng trong in ấn và chế bản điện tử, dựa trên pha trộn màu trừ, trong đó màu được tạo ra bằng cách chồng các lớp mực.</p>

<p>Trong CMYK, mỗi thành phần được biểu diễn trong phạm vi từ 0% đến 100%. Thông thường, <code>C</code>, <code>M</code> và <code>Y</code> biểu diễn sắc màu, còn <code>K</code> biểu diễn lượng màu đen. Khi tất cả thành phần là 0%, màu là trắng; khi <code>K</code> là 100%, màu gần với đen.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Ký hiệu CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Cyan</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Vàng</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Trắng</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Đen</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Hồ sơ màu</h4>
<p>DenCode cho phép chọn một số hồ sơ màu. Các hồ sơ màu được hỗ trợ được liệt kê dưới đây.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Màu CMYK</caption>
		<thead>
			<tr><th>Hồ sơ màu</th><th>Ví dụ ký hiệu CMYK</th><th>Đặc điểm</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Chuyển đổi RGB và CMYK đơn giản. Không phụ thuộc vào điều kiện in hoặc hồ sơ ICC cụ thể.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Hồ sơ màu CMYK xấp xỉ U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Chuyển đổi CMYK sử dụng hồ sơ ICC SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Chuyển đổi CMYK sử dụng hồ sơ ICC GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Chuyển đổi CMYK sử dụng hồ sơ ICC FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Hồ sơ màu CMYK xấp xỉ FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Hồ sơ màu CMYK xấp xỉ FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>Màu CMYK dùng “hồ sơ ICC” hoặc “hồ sơ màu xấp xỉ” được biểu diễn bằng định dạng không gian màu tùy chỉnh CSS <code>color(--profile C% M% Y% K%)</code>. Khi dùng trong CSS thực tế, hãy chỉ định hồ sơ ICC tương ứng bằng <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Hồ sơ màu xấp xỉ tính toán màu CMYK xấp xỉ dựa trên Characterization data đã công bố. Vì vậy, ngay cả khi dùng hồ sơ ICC tương tự với CSS <code>@color-profile</code>, màu hiển thị vẫn có thể khác đôi chút.</p>

<h4>Sự khác nhau giữa CMYK và RGB</h4>
<p>CMYK là mô hình màu trừ dùng cho mực in. Ngược lại, <a href="${dc:h(basePath)}/color/rgb">RGB</a> là mô hình màu cộng dùng cho ánh sáng, chẳng hạn như màn hình. Ngay cả với các màu trông giống nhau, giá trị thành phần CMYK và RGB có thể khác nhau rất nhiều.</p>
