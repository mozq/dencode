<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về số hệ cơ số N</h3>
<p>Các số hệ cơ số N (N-ary) biểu diễn các giá trị số bằng hệ thống ký hiệu vị trí với N ký tự (thường là các chữ số từ "0–9" và các chữ cái từ "A–Z").</p>

<p>DenCode hỗ trợ các cơ số từ 2 đến 36. Đối với các cơ số lớn hơn 10 (từ 11 đến 36), các chữ cái trong bảng chữ cái bắt đầu từ "A" được sử dụng theo thứ tự để biểu diễn các giá trị từ 10 trở lên. Ví dụ: các giá trị từ 10 đến 15 được biểu diễn bằng các chữ cái từ A đến F trong hệ thập lục phân (cơ số 16), và các giá trị từ 10 đến 35 được biểu diễn từ A đến Z trong hệ cơ số 36.</p>

<p>Dưới đây là các ví dụ chuyển đổi trong từng cơ số.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thập phân</th><th>Nhị phân</th><th>Bát phân</th><th>Thập lục phân</th><th>Cơ số 32</th><th>Cơ số 36</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td><td class="text-right">8</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td><td class="text-right">9</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td><td class="text-right">A</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td><td class="text-right">F</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">G</td><td class="text-right">G</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td><td class="text-right">H</td><td class="text-right">H</td></tr>
			<tr><td class="text-right">31</td><td class="text-right">11111</td><td class="text-right">37</td><td class="text-right">1F</td><td class="text-right">V</td><td class="text-right">V</td></tr>
			<tr><td class="text-right">32</td><td class="text-right">100000</td><td class="text-right">40</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">W</td></tr>
			<tr><td class="text-right">35</td><td class="text-right">100011</td><td class="text-right">43</td><td class="text-right">23</td><td class="text-right">13</td><td class="text-right">Z</td></tr>
			<tr><td class="text-right">36</td><td class="text-right">100100</td><td class="text-right">44</td><td class="text-right">24</td><td class="text-right">14</td><td class="text-right">10</td></tr>
		</tbody>
	</table>
</div>

<p>Ngoài ra, các giá trị sau dấu thập phân được chuyển đổi trong hệ cơ số N dưới dạng giá trị vị trí của N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... Nếu phần thập phân không thể được biểu diễn chính xác bằng tổng của N<sup>-n</sup>, nó sẽ không thể chuyển đổi hoàn toàn sang hệ cơ số N và sẽ xảy ra sai số độ chính xác. Trong trường hợp đó, DenCode sẽ biểu thị dạng rút gọn bằng cách thêm dấu "..." ở cuối.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Thập phân</th><th>Nhị phân</th><th>Bát phân</th><th>Thập lục phân</th><th>Cơ số 32</th><th>Cơ số 36</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
