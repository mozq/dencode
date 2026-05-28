<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Base32</h3>
<p>Base32 là phương thức mã hóa sử dụng các ký tự ASCII có thể in được.</p>
<p>Trong Base32, dữ liệu được chia thành từng 5 bit và chuyển đổi thành các ký tự chữ và số (A-Z, 2-7). Chuyển đổi mỗi 8 ký tự, và nếu cuối cùng không đủ 8 ký tự, nó sẽ được đệm thêm dấu bằng (=).</p>

<p>Bảng chuyển đổi ký tự Base32 như sau:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Dữ liệu 5-bit</th><th>Ký tự Base32</th></tr>
		<tr><td>00000</td><td>A</td></tr>
		<tr><td>00001</td><td>B</td></tr>
		<tr><td>00010</td><td>C</td></tr>
		<tr><td>00011</td><td>D</td></tr>
		<tr><td>00100</td><td>E</td></tr>
		<tr><td>00101</td><td>F</td></tr>
		<tr><td>00110</td><td>G</td></tr>
		<tr><td>00111</td><td>H</td></tr>
		<tr><td>01000</td><td>I</td></tr>
		<tr><td>01001</td><td>J</td></tr>
		<tr><td>01010</td><td>K</td></tr>
		<tr><td>01011</td><td>L</td></tr>
		<tr><td>01100</td><td>M</td></tr>
		<tr><td>01101</td><td>N</td></tr>
		<tr><td>01110</td><td>O</td></tr>
		<tr><td>01111</td><td>P</td></tr>
		<tr><td>10000</td><td>Q</td></tr>
		<tr><td>10001</td><td>R</td></tr>
		<tr><td>10010</td><td>S</td></tr>
		<tr><td>10011</td><td>T</td></tr>
		<tr><td>10100</td><td>U</td></tr>
		<tr><td>10101</td><td>V</td></tr>
		<tr><td>10110</td><td>W</td></tr>
		<tr><td>10111</td><td>X</td></tr>
		<tr><td>11000</td><td>Y</td></tr>
		<tr><td>11001</td><td>Z</td></tr>
		<tr><td>11010</td><td>2</td></tr>
		<tr><td>11011</td><td>3</td></tr>
		<tr><td>11100</td><td>4</td></tr>
		<tr><td>11101</td><td>5</td></tr>
		<tr><td>11110</td><td>6</td></tr>
		<tr><td>11111</td><td>7</td></tr>
	</table>
</div>

<p>Ví dụ, nếu chuyển đổi "Hello!" bằng Base32, kết quả sẽ như sau:</p>

<p>1. Chuyển sang biểu diễn nhị phân.</p>

<pre>01001000 01100101 01101100 01101100 01101111 00100001  (trường hợp US-ASCII / UTF-8)</pre>

<p>2. Chia thành từng 5 bit. Nếu không đủ 5 bit, đệm thêm "0" vào cuối.</p>

<pre>01001 00001 10010 10110 11000 11011 00011 01111 00100 00100</pre>

<p>3. Sử dụng bảng chuyển đổi để chuyển sang ký tự. Chuyển đổi mỗi 8 ký tự, nếu không đủ 8 ký tự thì đệm thêm "=" vào cuối.</p>

<pre>JBSWY3DP EE======</pre>

<p>4. Nối tất cả các ký tự lại để có kết quả chuyển đổi Base32.</p>

<pre>JBSWY3DPEE======</pre>
