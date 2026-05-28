<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Ngày giờ W3C-DTF</h3>
<p>W3C-DTF là định dạng biểu diễn ngày giờ được định nghĩa trong <a href="https://www.w3.org/TR/NOTE-datetime" target="_blank">W3C NOTE-datetime</a>. Đây là một tập hợp con giới hạn chỉ một số định dạng của ISO 8601.</p>
<p>Ngày và giờ được nối với nhau bằng chữ cái "T". Múi giờ được biểu thị dưới dạng chênh lệch từ UTC như "+09:00", hoặc "Z" nếu là UTC.</p>
<p>Giây và mili giây được phân tách bằng dấu chấm (.).</p>

<p>W3C-DTF được sử dụng làm định dạng ngày giờ trong tiêu đề HTTP và RSS.</p>

<p>Ví dụ, nếu chuyển đổi ngày 23 tháng 1 năm 2000, 01:23:45.678 (JST; +09:00) sang W3C-DTF, kết quả sẽ như sau:</p>

<pre>2000-01-23T01:23:45.678+09:00</pre>
