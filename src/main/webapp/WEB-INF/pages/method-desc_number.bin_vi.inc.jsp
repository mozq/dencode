<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về số Nhị phân</h3>
<p>Số nhị phân biểu diễn các giá trị số bằng hệ thống cơ số 2.</p>

<p>Trong hệ nhị phân, các số được biểu diễn bằng cơ số 2 với các ký tự "0" và "1".</p>

<p>Dưới đây là các ví dụ chuyển đổi trong hệ nhị phân. Các ví dụ chuyển đổi sang hệ bát phân và thập lục phân cũng được bao gồm để tham khảo.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thập phân</th><th>Nhị phân</th><th>Bát phân</th><th>Thập lục phân</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td></tr>
		</tbody>
	</table>
</div>

<p>Ngoài ra, các giá trị sau dấu thập phân được chuyển đổi thành tổng của 2<sup>-1</sup> (1/2), 2<sup>-2</sup> (1/4), 2<sup>-3</sup> (1/8), ... Nếu giá trị thập phân không thể được biểu diễn chính xác bằng tổng của 2<sup>-n</sup>, nó sẽ không thể chuyển đổi hoàn toàn sang hệ nhị phân và sẽ xảy ra sai số. Trong trường hợp đó, DenCode sẽ thêm "..." vào cuối để biểu thị sự lược bỏ.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thập phân</th><th>Nhị phân</th><th>Bát phân</th><th>Thập lục phân</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td></tr>
		</tbody>
	</table>
</div>
