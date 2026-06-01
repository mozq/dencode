<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về màu HWB</h3>
<p>Màu HWB là một mô hình màu biểu diễn màu bằng ba thành phần: sắc độ, độ trắng và độ đen. Sắc độ xác định tông màu cơ bản, còn độ trắng và độ đen xác định lượng trắng và đen được pha vào, nên dễ hiểu trực quan khi làm màu sáng hơn, tối hơn hoặc gần với xám hơn.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thành phần</th><th>Ý nghĩa</th><th>Giá trị ví dụ</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Sắc độ</td><td>Biểu diễn tông màu dưới dạng góc. Đỏ khoảng 0deg, xanh lục khoảng 120deg và xanh lam khoảng 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Độ trắng</td><td>Biểu diễn lượng màu trắng được pha vào màu. Giá trị càng lớn thì màu càng trắng.</td><td><code>20%</code></td></tr>
			<tr><td>B: Độ đen</td><td>Biểu diễn lượng màu đen được pha vào màu. Giá trị càng lớn thì màu càng tối.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ví dụ, các màu chính như màu đỏ có thể được biểu diễn như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Ký hiệu HWB</th><th>Ký hiệu RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Xanh lục</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Xanh lam</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Trắng</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Đen</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Để bao gồm độ trong suốt, hãy thêm giá trị alpha. Ví dụ, màu đỏ bán trong suốt có thể được biểu diễn là <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Xử lý sắc độ, độ trắng và độ đen</h4>
<p>Sắc độ được xử lý như một góc, và các giá trị lớn hơn 360deg hoặc giá trị âm được chuẩn hóa về phạm vi từ 0deg đến 360deg. Ví dụ, <code>hwb(360deg 0% 0%)</code> được xử lý như cùng màu với <code>hwb(0deg 0% 0%)</code>, và <code>hwb(-120deg 0% 0%)</code> như cùng màu với <code>hwb(240deg 0% 0%)</code>.</p>

<p>Độ trắng và độ đen được xử lý trong phạm vi từ 0% đến 100%. Độ trắng càng lớn thì màu càng gần trắng, và độ đen càng lớn thì màu càng gần đen. Khi tổng độ trắng và độ đen là 100% trở lên, màu được xử lý như màu xám bất kể sắc độ.</p>

<h4>Sự khác nhau giữa HWB và HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> điều chỉnh màu bằng độ bão hòa và độ sáng, nên phù hợp để chỉ định độ rực và độ sáng. HWB điều chỉnh màu bằng lượng trắng và đen được pha vào, nên dễ mô tả các thao tác như “làm trắng hơn với cùng sắc độ” hoặc “thêm đen để làm tối”.</p>

<p>Tuy nhiên, HWB cũng không phải là không gian màu đồng đều hoàn toàn theo cảm nhận. Khi muốn xử lý độ sáng thị giác hoặc khác biệt màu dễ hơn, có thể dùng các không gian màu như <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> và <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
