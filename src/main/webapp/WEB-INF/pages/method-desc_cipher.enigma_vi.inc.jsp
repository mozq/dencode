<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Mật mã Enigma</h3>
<p>Mật mã Enigma là một dạng mật mã thay thế, trong đó ký tự được thay thế bằng ký tự khác. Nó hỗ trợ mã hóa 26 chữ cái từ "A" đến "Z".</p>
<p>Việc thay thế ký tự được thực hiện bằng máy Enigma. DenCode hỗ trợ mô phỏng các máy Enigma sau:</p>

<ul>
	<li>Enigma I</li>
	<li>Enigma M3</li>
	<li>Enigma M4 (U-boat Enigma)</li>
	<li>Norway Enigma "Norenigma"</li>
	<li>Sondermaschine (Special machine)</li>
	<li>Enigma G "Zählwerk Enigma" (A28/G31)</li>
	<li>Enigma G G-312 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-260 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-111 (G31 Hungarian Enigma)</li>
	<li>Enigma D (Commercial Enigma A26)</li>
	<li>Enigma K (Commercial Enigma A27)</li>
	<li>Enigma KD (Enigma K with UKW-D)</li>
	<li>Swiss-K (Swiss Enigma K variant)</li>
	<li>Railway Enigma "Rocket I"</li>
	<li>Enigma T "Tirpitz" (Japanese Enigma)</li>
	<li>Spanish Enigma, wiring D</li>
	<li>Spanish Enigma, wiring F</li>
	<li>Spanish Enigma, Delta (A 16081)</li>
	<li>Spanish Enigma, Sonderschaltung / Delta (A 16101)</li>
</ul>

<p>Cấu tạo của máy Enigma như sau: Ký tự được nhập từ bàn phím (Tastatur), đi qua bảng cắm (Steckerbrett), bánh xe vào (ETW, Eintrittswalze), 3 hoặc 4 rô-to (Walze), bộ phản xạ (UKW, Umkehrwalze), sau đó đi ngược lại theo cùng đường dẫn và kết quả mã hóa được hiển thị trên bảng đèn (Lampenfeld). Việc thay thế ký tự diễn ra ở tất cả các vị trí như rô-to.</p>

<pre>
 UKW   Walze  Walze  Walze   ETW  (Stecker)
         3      2      1
 ___    ___    ___    ___    ___    ___
|   |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &lt; Tastatur
| | |  |   |  |   |  |   |  |   |  |   |
| | |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &gt; Lampenfeld
|   |  |   |  |   |  |   |  |   |  |   |
 ---    ---    ---    ---    ---    ---
</pre>

<p>Bánh xe vào, rô-to và bộ phản xạ có hệ thống dây bên trong để chuyển đổi 26 chữ cái từ "A" đến "Z" thành các chữ cái khác, và việc thay thế diễn ra khi có dòng điện chạy qua hệ thống dây đó. Ví dụ, rô-to "I" của Enigma I có hệ thống dây như sau, trong đó chữ "A" được thay thế thành "E". Ngoài ra, nếu ký tự đi từ bộ phản xạ quay lại là "J", nó sẽ đi theo đường dây ngược lại và được thay thế thành "Z".</p>

<pre>
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ
</pre>

<p>Tất cả các hệ thống dây của Enigma I như sau:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Bánh xe</th><th>ABCDEFGHIJKLMNOPQRSTUVWXYZ</th></tr>
		<tr><td>ETW</td><td>ABCDEFGHIJKLMNOPQRSTUVWXYZ</td></tr>
		<tr><td>I</td><td>EKMFLGDQVZNTOWYHXUSPAIBRCJ</td></tr>
		<tr><td>II</td><td>AJDKSIRUXBLHWTMCQGZNPYFVOE</td></tr>
		<tr><td>III</td><td>BDFHJLCPRTXVZNYEIWGAKMUSQO</td></tr>
		<tr><td>IV</td><td>ESOVPZJAYQUIRHXLNFTGKDCMWB</td></tr>
		<tr><td>V</td><td>VZBRGITYUPSDNHLXAWMJQOFECK</td></tr>
		<tr><td>UKW-A</td><td>EJMZALYXVBWFCRQUONTSPIKHGD</td></tr>
		<tr><td>UKW-B</td><td>YRUHQSLDPXNGOKMIEBFZCWVJAT</td></tr>
		<tr><td>UKW-C</td><td>FVPJIAOYEDRZXWGCTKUQSBNMHL</td></tr>
	</table>
</div>

<p>Bảng cắm cho phép người dùng thay đổi việc thay thế ký tự bằng cách nối dây. Một số máy Enigma có bảng cắm ở phía trước ETW. Bảng cắm có các cổng vào/ra cho 26 chữ cái từ "A" đến "Z", và bằng cách nối 2 chữ cái bất kỳ bằng cáp, 2 chữ cái đó sẽ được hoán đổi cho nhau. Ví dụ, nếu nối "A" và "M", "A" sẽ thành "M" và "M" thành "A". Các chữ cái không được nối dây sẽ không thay đổi.</p>
<p>Khi nhập 1 ký tự từ bàn phím, rô-to sẽ quay 1 bước. Rô-to quay từ bên phải sang trái, và khi rô-to bên phải quay đến vị trí rãnh (notch), rô-to bên trái cũng sẽ quay 1 bước. Việc quay rô-to này làm thay đổi hệ thống dây mã hóa cho mỗi ký tự, do đó ngay cả khi nhập cùng một ký tự, nó sẽ được thay thế bằng một ký tự khác so với lần trước.</p>
<p>Rô-to có một vòng (ring), và trên chu vi vòng có khắc các chữ cái từ "A" đến "Z" (hoặc từ "01" đến "26"). Vòng này cho phép thiết lập độ lệch (offset) giữa các chữ cái bên ngoài và hệ thống dây bên trong theo 26 mức. Ví dụ, đối với rô-to "I" của "Enigma I", nếu thiết lập vòng là "A (01)", "A" sẽ thay thế thành "E", nhưng nếu thiết lập vòng là "B (02)", hệ thống dây bên trong sẽ dịch chuyển 1 bước, do đó theo dây Z-J ban đầu, "A" sẽ được thay thế thành "K".</p>

<pre>
Vòng: A (01)
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ

Vòng: B (02)
BCDEFGHIJKLMNOPQRSTUVWXYZA
||||||||||||||||||||||||||
FLNGMHERWAOUPXZIYVTQBJCSDK
</pre>

<p>Có thể thiết lập thứ tự và vị trí ban đầu của các rô-to. Ví dụ, nếu có 3 loại rô-to "I", "II", "III", có thể đặt vào máy Enigma theo thứ tự "II", "I", "III", và thiết lập vị trí ban đầu của mỗi rô-to từ "A (01)" đến "Z (26)". Đối với bộ phản xạ, cũng có thể thay thế bằng các loại khác nhau hoặc thiết lập vị trí ban đầu trên một số máy Enigma. Bánh xe vào là cố định và không thể thay đổi. Đối với máy Enigma có bảng cắm, cũng có thể thiết lập bảng cắm. Các thiết lập này đóng vai trò là khóa mã hóa của máy Enigma.</p>
<p>Dưới đây là ví dụ về mã hóa bằng Enigma I:</p>

<pre>
Bánh xe          : UKW-A II I III
Thiết lập Vòng   : X M V  (24 13 22)
Thiết lập Vị trí : A B L  (01 02 12)
Bảng cắm         : AM FI NV PS TU WZ

Văn bản trước mã hóa : SECRET
Văn bản sau mã hóa   : LCGODU
</pre>

<p>Trong trường hợp này, chữ cái đầu tiên "S" được thay thế theo quy trình sau và cuối cùng được mã hóa thành "L":</p>

<pre>
S -&gt; P  : Bảng cắm
P -&gt; P  : ETW
P -&gt; L  : III
L -&gt; P  : I
P -&gt; W  : II
W -&gt; K  : UKW-A
K -&gt; Q  : II
Q -&gt; O  : I
O -&gt; L  : III
L -&gt; L  : ETW
L -&gt; L  : Bảng cắm
</pre>

<p>Ngoài ra, vị trí Quay của rô-to và vị trí Vào (+) / Ra (-) được biểu thị bằng các chữ cái trên vòng như sau (Do rô-to đang quay nên "ký tự được thay thế" ở trên và "ký tự vị trí trên vòng" là khác nhau):</p>

<pre>
           -      +       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : Bảng cắm
           -   +          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           -   +          
MNOPQRSTUVWXYZABCDEFGHIJKL  : III
           +  -           
BCDEFGHIJKLMNOPQRSTUVWXYZA  : I
               +-         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          -           +   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>

<p>Máy Enigma có đặc điểm là nếu thực hiện mã hóa lại văn bản đã mã hóa với cùng một thiết lập, sẽ thu được văn bản gốc ban đầu. Do đó, nếu nhập "L" được mã hóa trong ví dụ trên, sẽ thu được "S" ban đầu.</p>

<pre>
L -&gt; L  : Bảng cắm
L -&gt; L  : ETW
L -&gt; O  : III
O -&gt; Q  : I
Q -&gt; K  : II
K -&gt; W  : UKW-A
W -&gt; P  : II
P -&gt; L  : I
L -&gt; P  : III
P -&gt; P  : ETW
P -&gt; S  : Bảng cắm
</pre>

<pre>
           +      -       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : Bảng cắm
           +   -          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           +   -          
MNOPQRSTUVWXYZABCDEFGHIJKL  : III
           -  +           
BCDEFGHIJKLMNOPQRSTUVWXYZA  : I
               -+         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          +           -   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>


<h3>Các mục thiết lập trong DenCode</h3>

<h4>Bánh xe (Walzenlage)</h4>
<p>Thiết lập loại bộ phản xạ và rô-to, cũng như thứ tự của rô-to.</p>
<p>Vì đầu vào từ bên phải của máy Enigma nên rô-to được đếm là 1, 2, 3 từ bên phải, nhưng khi ghi thứ tự bánh xe, thường ghi từ trái sang phải. Ví dụ, thứ tự bánh xe "UKW-A II I III" biểu thị thiết lập rô-to 1 là "III", rô-to 2 là "I", rô-to 3 là "II" và bộ phản xạ là "UKW-A".</p>
<p>Thông thường có tổng cộng 4 bộ phận gồm 1 bộ phản xạ và 3 rô-to, nhưng Enigma M4 có thể thiết lập "bộ phản xạ mỏng" và "rô-to mỏng" vào khe bộ phản xạ. Trong DenCode, "bộ phản xạ mỏng" được xử lý giống như bộ phản xạ thông thường, và "rô-to mỏng" (Beta, Gamma) được hiển thị thêm là rô-to 4, tổng cộng là 5 thiết lập. Tuy nhiên, nếu bộ phản xạ là UKW-D, nó chiếm khe bộ phản xạ nên không thể thiết lập rô-to 4.</p>

<h4>Thiết lập Vòng (Ringstellung)</h4>
<p>Thiết lập vòng của rô-to. Thiết lập này thay đổi vị trí của hệ thống dây bên trong rô-to so với vòng. Trên một số máy Enigma, bộ phản xạ cũng có thể thiết lập vòng.</p>

<h4>Thiết lập Vị trí (Grundstellung)</h4>
<p>Thiết lập vị trí ban đầu của rô-to. Trên một số máy Enigma, bộ phản xạ cũng có thể thiết lập vị trí ban đầu.</p>
<p>Vì thiết lập này được thay đổi cho mỗi tin nhắn nên đôi khi còn được gọi là "Message key".</p>

<h4>Bảng cắm (Steckerverbindungen)</h4>
<p>Thiết lập các cặp dây của bảng cắm.</p>
<p>Trong DenCode, bạn chỉ định hệ thống dây bằng cách liệt kê các cặp 2 chữ cái cần thay thế cách nhau bằng dấu cách, ví dụ "AB CD EF GH IJ KL". Ví dụ này biểu thị các cặp dây "A" và "B", "C" và "D", v.v.</p>

<h4>Uhr</h4>
<p>Uhr là một phụ kiện kết nối với bảng cắm để chọn một trong 40 kiểu dây từ "00" đến "39". Bảng cắm và Uhr được kết nối bằng 20 cáp. Cáp đi theo cặp 2 sợi, và có 10 cặp như vậy. Nếu thiết lập Uhr là "00", nó tương đương với việc các cặp cáp đó được nối trực tiếp trên bảng cắm.</p>
<p>Uhr chỉ có thể thiết lập trên Enigma I. Để thiết lập Uhr, trước tiên cần chỉ định 10 cặp dây trên bảng cắm.</p>

<h4>Dây UKW-D</h4>
<p>UKW-D là bộ phản xạ có thể thay đổi hệ thống dây bên trong.</p>
<p>Ký hiệu vòng của bộ phản xạ thông thường là "ABCDEFGHIJKLMNOPQRSTUVWXYZ", nhưng UKW-D có thứ tự đặc biệt là "A-ZXWVUTSRQPON-MLKIHGFEDCB". Hai dấu "-" (tương ứng với B và O trong ký hiệu thông thường) là cố định và luôn được nối với nhau, không thể thay đổi. Bạn thiết lập dây cho 12 cặp còn lại gồm 24 chữ cái.</p>

<pre>
Ký hiệu UKW-D  : A-ZXWVUTSRQPON-MLKIHGFEDCB
Ký hiệu thường : ABCDEFGHIJKLMNOPQRSTUVWXYZ
</pre>

<p>UKW-D có thể được thiết lập trong trường hợp Enigma I, Enigma M4, Enigma KD.</p>
