<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về phân số</h3>
<p>Phân số (Fractions) biểu diễn các số dưới dạng "tử số/mẫu số" như tỉ lệ (thương) của tử số và mẫu số.</p>

<p>Trong DenCode, số được nhập (số nguyên hoặc số thập phân) được chuyển đổi thành phân số tối giản (phân số không thể rút gọn thêm được nữa).</p>

<p>Các ví dụ chuyển đổi phân số như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thập phân (Đầu vào)</th><th>Phân số (Đầu ra)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>Số thập phân kết thúc bằng dấu "..." được hiểu là "số được lược bỏ" và được chuyển đổi dựa trên các quy tắc sau:</p>
<ul>
	<li><strong>Nếu có mẫu số lặp lại (số thập phân vô hạn tuần hoàn):</strong> Mẫu số lặp lại trong phần thập phân (chu kỳ) sẽ tự động được phát hiện và chuyển đổi thành dạng biểu diễn phân số chính xác.</li>
	<li><strong>Nếu không có mẫu số lặp lại:</strong> Nó sẽ được chuyển đổi thành phân số dưới dạng số thập phân hữu hạn dựa trên số chữ số được nhập vào.</li>
</ul>

<p>Các ví dụ chuyển đổi phân số đối với số thập phân kết thúc bằng dấu "..." như sau.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thập phân (Đầu vào)</th><th>Phân số (Đầu ra)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
