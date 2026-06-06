<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về chữ số La Mã</h3>
<p>Chữ số La Mã biểu diễn số nguyên bằng cách kết hợp các ký hiệu <code>I</code>, <code>V</code>, <code>X</code>, <code>L</code>, <code>C</code>, <code>D</code> và <code>M</code>.</p>

<p>Cách viết La Mã chuẩn có thể biểu diễn các số nguyên từ 1 đến 3999. Không có ký hiệu cho 0.</p>
<pre>
1234 = MCCXXXIV
3999 = MMMCMXCIX
</pre>

<h4>Ký hiệu cơ bản</h4>
<p>Chữ số La Mã sử dụng bảy ký hiệu sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Ký hiệu</th><th>Giá trị</th></tr>
		</thead>
		<tbody>
			<tr><td><code>I</code></td><td>1</td></tr>
			<tr><td><code>V</code></td><td>5</td></tr>
			<tr><td><code>X</code></td><td>10</td></tr>
			<tr><td><code>L</code></td><td>50</td></tr>
			<tr><td><code>C</code></td><td>100</td></tr>
			<tr><td><code>D</code></td><td>500</td></tr>
			<tr><td><code>M</code></td><td>1000</td></tr>
		</tbody>
	</table>
</div>

<h4>Ký pháp cộng</h4>
<p>Khi các ký hiệu được viết từ giá trị lớn đến nhỏ, các giá trị đó được cộng lại.</p>
<pre>
VIII = 5 + 1 + 1 + 1 = 8
LX = 50 + 10 = 60
MDC = 1000 + 500 + 100 = 1600
</pre>

<p><code>I</code>, <code>X</code>, <code>C</code> và <code>M</code> có thể lặp lại tối đa ba lần liên tiếp. <code>V</code>, <code>L</code> và <code>D</code> chỉ được dùng một lần ở cùng một hàng.</p>

<h4>Ký pháp trừ</h4>
<p>Khi một ký hiệu nhỏ hơn đặt ngay trước một ký hiệu lớn hơn, giá trị nhỏ hơn sẽ bị trừ đi. Chữ số La Mã chuẩn dùng sáu dạng trừ sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cách viết</th><th>Giá trị</th></tr>
		</thead>
		<tbody>
			<tr><td><code>IV</code></td><td>4</td></tr>
			<tr><td><code>IX</code></td><td>9</td></tr>
			<tr><td><code>XL</code></td><td>40</td></tr>
			<tr><td><code>XC</code></td><td>90</td></tr>
			<tr><td><code>CD</code></td><td>400</td></tr>
			<tr><td><code>CM</code></td><td>900</td></tr>
		</tbody>
	</table>
</div>

<pre>
44 = XLIV
999 = CMXCIX
1999 = MCMXCIX
</pre>

<p>Các dạng như <code>IC</code> cho 99, <code>IL</code> cho 49 hoặc <code>VX</code> cho 5 không phải là chuẩn, nên không được hỗ trợ.</p>

<h4>Lịch sử chữ số La Mã</h4>
<p>Chữ số La Mã được cho là đã phát triển ở La Mã cổ đại từ các dấu đơn giản và vết khắc dùng để đếm. Một nét dọc như <code>I</code> dần biểu thị 1, các ký hiệu riêng biểu thị nhóm 5 và 10, rồi hệ thống được tổ chức thành các tổ hợp của <code>V</code>, <code>X</code>, <code>L</code>, <code>C</code>, <code>D</code> và <code>M</code>.</p>

<p>Chữ số La Mã thời kỳ đầu chưa được chuẩn hóa nghiêm ngặt như ngày nay. Ví dụ, 4 đôi khi được viết là <code>IIII</code> bên cạnh <code>IV</code>, và 9 đôi khi được viết là <code>VIIII</code> thay vì <code>IX</code>. Các dạng trừ phổ biến hiện nay như <code>IV</code>, <code>IX</code>, <code>XL</code>, <code>XC</code>, <code>CD</code> và <code>CM</code> được chuẩn hóa về sau.</p>

<p>Chữ số La Mã đã được dùng trong thời gian dài trong thương mại, bia khắc, lịch, đồng hồ và số chương. Ngày nay chúng vẫn còn được dùng như cách viết trang trí và quy ước cho năm và số thứ tự.</p>
