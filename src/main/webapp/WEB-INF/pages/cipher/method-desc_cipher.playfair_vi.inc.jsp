<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Giới thiệu về Mật mã Playfair</h3>
<p>Mật mã Playfair là một mật mã thay thế, trong đó các cặp chữ cái được thay bằng cách dùng bảng chữ cái 5×5.</p>

<p>Ví dụ, khi khóa là "SECRET" và bản rõ là "HELLO", kết quả mã hóa sẽ như sau.</p>

<pre>
Bản rõ   : HELLO
Bản mã   : ISKYIQ
</pre>

<p>Khi mã hóa, trước hết bản rõ được chia thành từng cặp chữ cái. Nếu một cặp có hai chữ giống nhau, chẳng hạn "LL", chữ phụ "X" sẽ được chèn vào giữa. Nếu cuối chuỗi còn lại một chữ, chữ phụ "X" cũng được thêm vào.</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Tiếp theo, chuẩn bị một bảng mã 5×5, tổng cộng 25 ô. Vì bảng chữ cái có 26 chữ, thông thường "I=J" được đặt chung trong một ô.</p>
<p>Trước hết, ghi các chữ của khóa vào bảng và bỏ qua chữ trùng lặp. Với khóa "SECRET", chữ "E" thứ hai sẽ không được ghi. Sau đó ghi tiếp "ABCDEFGHIKLMNOPQRSTUVWXYZ", đồng thời bỏ qua các chữ đã có trong khóa. Như vậy ta có một bảng 5×5 không có chữ lặp lại.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Dùng bảng này để mã hóa từng cặp chữ theo các quy tắc dưới đây. Cách biến đổi phụ thuộc vào vị trí của hai chữ trong bảng.</p>

<ul>
	<li>Nếu cùng hàng: mỗi chữ được thay bằng chữ ở bên phải nó. Nếu ở mép phải, quay vòng về mép trái.</li>
	<li>Nếu cùng cột: mỗi chữ được thay bằng chữ ở bên dưới nó. Nếu ở hàng dưới cùng, quay vòng lên trên cùng.</li>
	<li>Nếu khác hàng và khác cột: hãy hình dung một hình chữ nhật có hai chữ đó là hai góc, rồi thay bằng chữ ở hai góc còn lại.</li>
</ul>

<pre>
S <strong>E</strong>
A B
<strong>H</strong> I

K <strong>L</strong>
P Q
<strong>X</strong> Y

I K <strong>L</strong>
<strong>O</strong> P Q
</pre>

<pre>
HE LX LO
↓
IS KY IQ
</pre>

<p>Khi giải mã, bản mã được xử lý theo từng cặp bằng cùng bảng chữ cái. Lưu ý rằng chữ phụ "X" không được tự động xóa.</p>

<pre>
Bản mã : ISKYIQ
Bản rõ : HEL<strong>X</strong>LO
</pre>
