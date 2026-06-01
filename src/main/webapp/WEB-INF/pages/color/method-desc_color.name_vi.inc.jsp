<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về tên màu</h3>
<p>Tên màu là cách biểu diễn màu bằng các màu được đặt tên trong CSS. Vì màu có thể được chỉ định bằng các từ khóa như <code>red</code>, <code>blue</code> và <code>orange</code>, các màu thường dùng trong HTML và CSS có thể được viết dễ đọc.</p>

<p>Ví dụ, các màu chính như màu đỏ có thể được biểu diễn như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Màu</th><th>Tên màu</th><th>Ký hiệu RGB</th><th>Ký hiệu thập lục phân</th></tr>
		</thead>
		<tbody>
			<tr><td>Đỏ</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lime</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Xanh lam</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Trắng</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Đen</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Cam</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Trong suốt</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> là tên màu đặc biệt biểu diễn màu đen trong suốt.</p>

<p>Tên màu, ngoại trừ <code>transparent</code>, không chứa thông tin về độ trong suốt. Trong DenCode, khi một màu có độ trong suốt có thể được biểu diễn dưới dạng màu được đặt tên, màu đó được hiển thị bằng cú pháp màu tương đối của CSS. Ví dụ, <code>red</code> bán trong suốt được biểu diễn là <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Sự khác nhau giữa tên màu và RGB</h4>
<p>Tên màu biểu diễn các màu phổ biến bằng từ khóa dễ đọc. Ngược lại, <a href="${dc:h(basePath)}/color/rgb">RGB</a> chỉ định giá trị thành phần đỏ, xanh lục và xanh lam, nên có thể biểu diễn nhiều màu hơn bằng số. Tên màu thường được dùng khi ưu tiên tính dễ đọc trong CSS hoặc HTML; ký hiệu RGB thường được dùng cho chỉ định màu chi tiết hoặc chuyển đổi màu.</p>
