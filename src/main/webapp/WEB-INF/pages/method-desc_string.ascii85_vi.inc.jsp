<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Ascii85</h3>
<p>Ascii85 là phương thức mã hóa sử dụng các ký tự ASCII 7-bit có thể in được. Còn được gọi là Base85.</p>
<p>Trong Ascii85, dữ liệu được chia thành từng 4 byte và chuyển đổi thành 5 ký tự ASCII.</p>
<p>Có nhiều biến thể của Ascii85. DenCode hỗ trợ 3 loại sau. Bản gốc là btoa, sau đó Adobe và Z85 xuất hiện.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Tổng quan</th></tr>
		<tr><th>Z85</th><td>Được sử dụng trong ZeroMQ. Loại bỏ các ký tự cần escape như "\" (backslash) và "'" (apostrophe).</td></tr>
		<tr><th>Adobe</th><td>Được sử dụng để mã hóa hình ảnh trong tệp PostScript và PDF (Portable Document Format) của Adobe. Được bao quanh bởi "&lt;~" và "~&gt;".</td></tr>
		<tr><th>btoa</th><td>Định dạng lệnh btoa của UNIX. Trước đây dùng để trao đổi dữ liệu nhị phân, nhưng hiện nay không còn phổ biến. Được bao quanh bởi các dòng "xbtoa Begin" và "xbtoa End".</td></tr>
	</table>
</div>

<p>Các ký tự ASCII được sử dụng trong Ascii85 như sau. Giá trị 4 byte được xử lý như số nguyên không dấu big-endian, tính toán các chữ số trong hệ cơ số 85 (5 chữ số), và dựa vào các ký tự ASCII sau để lấy kết quả chuyển đổi Ascii85.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Ký tự ASCII</th></tr>
		<tr><th>Z85</th><td>0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-:+=^!/*?&amp;&lt;&gt;()[]{}@%$#</td></tr>
		<tr><th>Adobe</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu</td></tr>
		<tr><th>btoa</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu<br />(Bản gốc là các ký tự từ " " (space) đến "t", nhưng do một số trình gửi thư loại bỏ dấu cách ở cuối, sau này được thay thế bằng các ký tự từ "!" đến "u".)</td></tr>
	</table>
</div>

<p>Ví dụ, nếu chuyển đổi "Hello" bằng Ascii85, kết quả sẽ như sau:</p>

<p>1. Chia thành từng 4 byte. Nếu không đủ 4 byte, đệm thêm "00" vào cuối.</p>

<pre>48656C6C<sub>(16)</sub> 6F000000<sub>(16)</sub>  (Hell o)</pre>

<p>2. Xử lý mỗi 4 byte như số nguyên không dấu big-endian và chuyển đổi giá trị đó thành các chữ số trong hệ cơ số 85.</p>

<pre>48656C6C<sub>(16)</sub>
= 1214606444<sub>(10)</sub>
= <b>23</b> * 85<sup>4</sup> + <b>22</b> * 85<sup>3</sup> + <b>66</b> * 85<sup>2</sup> + <b>52</b> * 85 + <b>49</b></pre>

<pre>6F000000<sub>(16)</sub>
= 1862270976<sub>(10)</sub>
= <b>35</b> * 85<sup>4</sup> + <b>57</b> * 85<sup>3</sup> + <b>33</b> * 85<sup>2</sup> + <b>65</b> * 85 + <b>26</b></pre>

<p>3. Chuyển đổi các chữ số hệ cơ số 85 sang ký tự ASCII. Nếu đã đệm "00" vào cuối, đối với Adobe/Z85 sẽ loại bỏ phần đệm.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><td>23</td><td>22</td><td>66</td><td>52</td><td>49</td><td></td><td>35</td><td>57</td><td>33</td><td>65</td><td>26</td></tr>
		<tr><th>Z85</th><td>n</td><td>m</td><td>=</td><td>Q</td><td>N</td><td></td><td>z</td><td>V</td><td></td><td></td><td></td></tr>
		<tr><th>Adobe</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td></td><td></td><td></td></tr>
		<tr><th>btoa</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td>B</td><td>b</td><td>;</td></tr>
	</table>
</div>

<p>4. Nối tất cả các ký tự lại để có kết quả chuyển đổi Ascii85. Adobe được bao quanh bởi "&lt;~" &amp; "~&gt;" và xuống dòng mỗi 80 ký tự. btoa được bao quanh bởi "xbtoa Begin" &amp; "xbtoa End" (bao gồm cả độ dài dữ liệu và checksum) và xuống dòng mỗi 78 ký tự.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Kết quả chuyển đổi</th></tr>
		<tr><th>Z85</th><td>nm=QNzV</td></tr>
		<tr><th>Adobe</th><td>&lt;~87cURDZ~&gt;</td></tr>
		<tr><th>btoa</th><td>xbtoa Begin<br />87cURDZBb;<br />xbtoa End N 5 5 E 42 S 1f9 R a9f</td></tr>
	</table>
</div>

<p>Ngoài ra, một số dạng viết tắt được định nghĩa.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Dạng viết tắt</th></tr>
		<tr><th>Z85</th><td>Không</td></tr>
		<tr><th>Adobe</th><td>00000000<sub>(16)</sub> -&gt; z</td></tr>
		<tr><th>btoa</th><td>00000000<sub>(16)</sub> -&gt; z<br />20202020<sub>(16)</sub> -&gt; y (từ btoa v4.2 trở đi)<br /></td></tr>
	</table>
</div>
