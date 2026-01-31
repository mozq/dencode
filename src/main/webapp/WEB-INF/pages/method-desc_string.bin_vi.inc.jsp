<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Chuỗi nhị phân</h3>
<p>Chuỗi nhị phân là biểu diễn giá trị nhị phân của chuỗi dưới dạng ký hiệu nhị phân.</p>
<p>Vì giá trị nhị phân khác nhau tùy thuộc vào mã hóa ký tự, kết quả chuyển đổi sang chuỗi nhị phân cũng sẽ khác nhau.</p>

<p>Ví dụ với chuỗi "サンプル":</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Mã hóa ký tự</th><th>Chuỗi nhị phân</th></tr>
		<tr><td>UTF-8</td><td>11100011 10000010 10110101 11100011 10000011 10110011 11100011 10000011 10010111 11100011 10000011 10101011</td></tr>
		<tr><td>UTF-16</td><td>00110000 10110101 00110000 11110011 00110000 11010111 00110000 11101011</td></tr>
		<tr><td>Shift_JIS</td><td>10000011 01010100 10000011 10010011 10000011 01110110 10000011 10001011</td></tr>
	</table>
</div>
