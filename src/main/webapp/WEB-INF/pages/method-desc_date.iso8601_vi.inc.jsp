<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Ngày giờ ISO 8601</h3>
<p>ISO 8601 là định dạng biểu diễn ngày giờ được định nghĩa là tiêu chuẩn quốc tế bởi ISO.</p>
<p>Ngày và giờ được nối với nhau bằng chữ cái "T". Múi giờ được biểu thị dưới dạng chênh lệch từ UTC như "+09:00", hoặc "Z" nếu là UTC.</p>
<p>Giây và mili giây được phân tách bằng dấu phẩy (,) hoặc dấu chấm (.). Trong DenCode, nếu mili giây là 000, nó sẽ bị lược bỏ.</p>

<p>ISO 8601 có một số định dạng.</p>
<p>Ví dụ, nếu chuyển đổi ngày 23 tháng 1 năm 2000, 01:23:45.678 (JST; +09:00) sang ISO 8601, kết quả sẽ như sau:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Định dạng</th><th>Kết quả chuyển đổi</th></tr>
		<tr><td>Cơ bản</td><td>20000123T012345.678+0900</td></tr>
		<tr><td>Mở rộng</td><td>2000-01-23T01:23:45.678+09:00</td></tr>
		<tr><td>Tuần (Năm-Tuần-Thứ)</td><td>2000-W03-7T01:23:45.678+09:00</td></tr>
		<tr><td>Ngày (Năm-Ngày trong năm)</td><td>2000-023T01:23:45.678+09:00</td></tr>
	</table>
</div>
