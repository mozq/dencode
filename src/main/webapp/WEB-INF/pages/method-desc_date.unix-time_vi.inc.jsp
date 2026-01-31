<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về UNIX Time</h3>
<p>UNIX Time (POSIX Time, Epoch Seconds) là số giây trôi qua kể từ UNIX Epoch vào lúc 00:00:00 ngày 1 tháng 1 năm 1970 (UTC), không bao gồm giây nhuận.</p>
<p>Thời gian trước UNIX Epoch được biểu thị bằng giá trị âm.</p>
<p>Trong DenCode, UNIX Time được xử lý theo đơn vị giây. Mili giây và micro giây được biểu thị bằng phần thập phân.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Ngày giờ</th><th>UNIX Time</th></tr>
		<tr><td>1900-01-01 00:00:00 UTC</td><td>-2208988800</td></tr>
		<tr><td>1970-01-01 00:00:00 UTC (UNIX Epoch)</td><td>0</td></tr>
		<tr><td>2000-01-23 01:23:45.678 UTC</td><td>948590625.678</td></tr>
	</table>
</div>
