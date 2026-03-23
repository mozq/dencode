<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về mã Morse</h3>
<p>
Mã Morse (Morse code) là một hệ thống mã hóa điện tín biểu thị các chữ cái và ký hiệu bằng sự kết hợp của tín hiệu ngắn (Dit) và tín hiệu dài (Dah).
</p>

<p>
DenCode sử dụng các ký hiệu sau để biểu thị mã Morse.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Tên</th><th>Ký hiệu</th></tr>
		<tr><td>Dit (chấm ngắn)</td><td><code>.</code> (Chấm)</td></tr>
		<tr><td>Dah (gạch dài)</td><td><code>-</code> (Gạch nối)</td></tr>
		<tr><td>Khoảng cách giữa ký tự (Letter space)</td><td><code> </code> (Dấu cách)</td></tr>
		<tr><td>Khoảng cách giữa từ (Word space)</td><td><code>/</code> (Dấu gạch chéo)</td></tr>
	</table>
</div>

<p>
Kết quả chuyển đổi "<var>MORSE CODE</var>" thành mã Morse quốc tế như sau.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Thời gian tín hiệu</h4>
<p>
Khi truyền mã Morse, có các tỷ lệ nghiêm ngặt được quy định cho độ dài của dit và dah cũng như khoảng cách giữa chúng.
Lấy độ dài của dit là 1 đơn vị, độ dài của mỗi phần tử như sau.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Phần tử</th><th>Độ dài</th><th>Mô tả</th></tr>
		<tr><td>Dit</td><td>1 đơn vị</td><td>Âm tín hiệu ngắn</td></tr>
		<tr><td>Dah</td><td>3 đơn vị</td><td>Âm tín hiệu dài gấp 3 lần dit</td></tr>
		<tr><td>Khoảng cách trong ký tự</td><td>1 đơn vị</td><td>Khoảng im lặng giữa dit và dah trong cùng một ký tự</td></tr>
		<tr><td>Khoảng cách giữa ký tự</td><td>3 đơn vị</td><td>Khoảng im lặng giữa các ký tự khác nhau</td></tr>
		<tr><td>Khoảng cách giữa từ</td><td>7 đơn vị</td><td>Khoảng im lặng giữa các từ khác nhau</td></tr>
	</table>
</div>

<p>
Ví dụ, khi truyền "<var>MORSE CODE</var>", tín hiệu được gửi với thời gian như sau.
<code>▄</code> (<code>1</code>) biểu thị âm tín hiệu, và <code> </code> (<code>0</code>) biểu thị khoảng im lặng.
</p>
<pre>
M    : ▄▄▄ ▄▄▄         (1110111)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
R    : ▄ ▄▄▄ ▄         (1011101)
S    : ▄ ▄ ▄           (10101)
E    : ▄               (1)
     :                 (0000000)
C    : ▄▄▄ ▄ ▄▄▄ ▄     (11101011101)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
D    : ▄▄▄ ▄ ▄         (1110101)
E    : ▄               (1)

   M           O           R        S     E            C             O           D      E
▄▄▄ ▄▄▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄ ▄▄▄ ▄   ▄ ▄ ▄   ▄       ▄▄▄ ▄ ▄▄▄ ▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄▄▄ ▄ ▄   ▄
11101110001110111011100010111010001010100010000000111010111010001110111011100011101010001
</pre>

<p>
Như vậy, tất cả các độ dài được xác định bằng tỷ lệ số nguyên dựa trên 1 đơn vị dit, do đó có thể duy trì tỷ lệ chính xác ngay cả khi thay đổi tốc độ truyền.
Tốc độ truyền thông thường được biểu thị bằng WPM (Words Per Minute), được định nghĩa bởi số lần từ tham chiếu "PARIS" có thể được truyền trong một phút.
Ví dụ, ở 20 WPM, một đơn vị dit khoảng 60 mili giây.
</p>


<h3>Mã Morse quốc tế</h3>
<p>
Mã Morse quốc tế là mã Morse tiêu chuẩn thế giới để biểu thị chữ cái, số và ký hiệu.
Được quy định bởi tiêu chuẩn của Liên minh Viễn thông Quốc tế (ITU) (ITU-R M.1677-1).
</p>

<h4>Bảng chữ cái</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>A</th><td>.-</td><th>B</th><td>-...</td><th>C</th><td>-.-.</td><th>D</th><td>-..</td></tr>
		<tr><th>E</th><td>.</td><th>F</th><td>..-.</td><th>G</th><td>--.</td><th>H</th><td>....</td></tr>
		<tr><th>I</th><td>..</td><th>J</th><td>.---</td><th>K</th><td>-.-</td><th>L</th><td>.-..</td></tr>
		<tr><th>M</th><td>--</td><th>N</th><td>-.</td><th>O</th><td>---</td><th>P</th><td>.--.</td></tr>
		<tr><th>Q</th><td>--.-</td><th>R</th><td>.-.</td><th>S</th><td>...</td><th>T</th><td>-</td></tr>
		<tr><th>U</th><td>..-</td><th>V</th><td>...-</td><th>W</th><td>.--</td><th>X</th><td>-..-</td></tr>
		<tr><th>Y</th><td>-.--</td><th>Z</th><td>--..</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>

<h4>Số</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Ký hiệu</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Mã mở rộng</h4>
<p>
Trong số các ký tự có dấu phụ, chỉ có "É" được Liên minh Viễn thông Quốc tế (ITU) quy định. Tất cả các mã khác được định nghĩa là "mã mở rộng" do cơ quan quốc gia hoặc theo quy ước thiết lập.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>À, Å</th><td>.--.-</td><th>Ä, Æ, Ą</th><td>.-.-</td><th>Ć, Ĉ, Ç</th><td>-.-..</td><th>É, Ę, Đ</th><td>..-..</td></tr>
		<tr><th>Ð</th><td>..--.</td><th>È, Ł</th><td>.-..-</td><th>Ĝ</th><td>--.-.</td><th>Ĥ, Š</th><td>----</td></tr>
		<tr><th>Ĵ</th><td>.---.</td><th>Ń, Ñ</th><td>--.--</td><th>Ó, Ö, Ø</th><td>---.</td><th>Ś</th><td>...-...</td></tr>
		<tr><th>Ŝ</th><td>...-.</td><th>Þ</th><td>.--..</td><th>Ü, Ŭ</th><td>..--</td><th>Ź</th><td>--..-.</td></tr>
		<tr><th>Ż</th><td>--..-</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Mã Morse tiếng Nhật (mã Wabun)</h3>
<p>
Mã Morse tiếng Nhật là hệ thống mã Morse được thiết kế để biểu thị các ký tự Hiragana và Katakana tiếng Nhật.
Thứ tự ký tự dựa trên thứ tự truyền thống "Iroha".
</p>

<h4>Hiragana / Katakana (thứ tự Iroha)</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>イ</th><td>.-</td><th>ロ</th><td>.-.-</td><th>ハ</th><td>-...</td><th>ニ</th><td>-.-.</td><th>ホ</th><td>-..</td></tr>
		<tr><th>ヘ</th><td>.</td><th>ト</th><td>..-..</td><th>チ</th><td>..-.</td><th>リ</th><td>--.</td><th>ヌ</th><td>....</td></tr>
		<tr><th>ル</th><td>-.--.</td><th>ヲ</th><td>.---</td><th>ワ</th><td>-.-</td><th>カ</th><td>.-..</td><th>ヨ</th><td>--</td></tr>
		<tr><th>タ</th><td>-.</td><th>レ</th><td>---</td><th>ソ</th><td>---.</td><th>ツ</th><td>.--.</td><th>ネ</th><td>--.-</td></tr>
		<tr><th>ナ</th><td>.-.</td><th>ラ</th><td>...</td><th>ム</th><td>-</td><th>ウ</th><td>..-</td><th>ヰ</th><td>.-..-</td></tr>
		<tr><th>ノ</th><td>..--</td><th>オ</th><td>.-...</td><th>ク</th><td>...-</td><th>ヤ</th><td>.--</td><th>マ</th><td>-..-</td></tr>
		<tr><th>ケ</th><td>-.--</td><th>フ</th><td>--..</td><th>コ</th><td>----</td><th>エ</th><td>-.---</td><th>テ</th><td>.-.--</td></tr>
		<tr><th>ア</th><td>--.--</td><th>サ</th><td>-.-.-</td><th>キ</th><td>-.-..</td><th>ユ</th><td>-..--</td><th>メ</th><td>-...-</td></tr>
		<tr><th>ミ</th><td>..-.-</td><th>シ</th><td>--.-.</td><th>ヱ</th><td>.--..</td><th>ヒ</th><td>--..-</td><th>モ</th><td>-..-.</td></tr>
		<tr><th>セ</th><td>.---.</td><th>ス</th><td>---.-</td><th>ン</th><td>.-.-.</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>゛ (Dakuten / Dấu hữu thanh)</th><td>..</td><th>゜ (Handakuten / Dấu bán hữu thanh)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Dakuten (゛) và Handakuten (゜) có mã độc lập riêng. Chúng được biểu thị bằng cách đặt mã Dakuten (<code>..</code>) hoặc mã Handakuten (<code>..--.</code>) sau mã ký tự gốc, cách nhau bởi khoảng cách giữa ký tự.
Ví dụ, "ガ" là sự kết hợp của "カ (<code>.-..</code>)" và "゛ (<code>..</code>)", tạo thành "<code>.-.. ..</code>".
</p>

<h4>Số</h4>
<p>
Giống với mã Morse quốc tế.
</p>

<h4>Ký hiệu</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Mã Morse tiếng Nga (chữ Kirin)</h3>
<p>
Đây là hệ thống mã Morse được thiết kế để biểu thị các ký tự Kirin được sử dụng trong tiếng Nga và các ngôn ngữ khác.
Các mã không được sắp xếp theo thứ tự bảng chữ cái Kirin, mà được gán cùng mã với các chữ cái Latinh tương ứng (mã Morse quốc tế) dựa trên cách phát âm.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>А</th><td>.-</td><th>Б</th><td>-...</td><th>В</th><td>.--</td><th>Г</th><td>--.</td></tr>
		<tr><th>Д</th><td>-..</td><th>Е</th><td>.</td><th>Ж</th><td>...-</td><th>З</th><td>--..</td></tr>
		<tr><th>И</th><td>..</td><th>Й</th><td>.---</td><th>К</th><td>-.-</td><th>Л</th><td>.-..</td></tr>
		<tr><th>М</th><td>--</td><th>Н</th><td>-.</td><th>О</th><td>---</td><th>П</th><td>.--.</td></tr>
		<tr><th>Р</th><td>.-.</td><th>С</th><td>...</td><th>Т</th><td>-</td><th>У</th><td>..-</td></tr>
		<tr><th>Ф</th><td>..-.</td><th>Х</th><td>....</td><th>Ц</th><td>-.-.</td><th>Ч</th><td>---.</td></tr>
		<tr><th>Ш</th><td>----</td><th>Щ</th><td>--.-</td><th>Ъ</th><td>--.--</td><th>Ы</th><td>-.--</td></tr>
		<tr><th>Ь</th><td>-..-</td><th>Э</th><td>..-..</td><th>Ю</th><td>..--</td><th>Я</th><td>.-.-</td></tr>
	</table>
</div>

<h4>Số</h4>
<p>
Giống với mã Morse quốc tế.
</p>

<h4>Ký hiệu</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Lịch sử mã Morse</h3>
<p>
Mã Morse được phát triển vào những năm 1830 bởi nhà phát minh người Mỹ Samuel Morse và Alfred Vail cho các máy điện báo đầu tiên.
Mã Morse đầu tiên chỉ truyền số, sau đó được chuyển đổi thành từ bằng từ điển ở phía nhận. Sau đó, Vail đã mở rộng hệ thống để bao gồm bảng chữ cái như chúng ta biết ngày nay.
Các chữ cái được sử dụng thường xuyên hơn (ví dụ: <code>E</code>) được gán mã ngắn hơn (<code>.</code>), trong khi các chữ cái ít được sử dụng hơn (ví dụ: <code>Q</code>) được gán mã dài hơn (<code>--.-</code>), tối ưu hóa hiệu quả truyền thông.
</p>

<p>
Sau đó, do nhu cầu truyền thông quốc tế, đặc biệt ở châu Âu, việc phân bổ chữ cái đã được xem xét lại, phát triển thành "Mã Morse Quốc tế" được sử dụng trên toàn thế giới ngày nay.
Tại Nhật Bản, khi công nghệ điện báo được đưa vào từ cuối thời kỳ Edo đến đầu thời Meiji, "mã Morse Wabun" đã được sáng tạo bằng cách gán mã Morse độc đáo cho bảng chữ cái Kana Nhật Bản.
Đặc điểm nổi bật của mã Morse Wabun là các mã được gán theo thứ tự truyền thống "Iroha" ("イロハニホヘト…").
</p>

<p>
Trong nhiều năm, mã Morse đã được sử dụng rộng rãi trên toàn thế giới trong truyền thông hàng hải, hàng không, quân sự và thương mại.
Tuy nhiên, với sự phát triển của truyền thông vệ tinh và kỹ thuật số, mã Morse phần lớn đã hoàn thành vai trò là phương tiện thông tin liên lạc khẩn cấp chính thức với việc chuyển đổi sang GMDSS (Hệ thống An toàn và Cứu nạn Hàng hải Toàn cầu) vào những năm 1990.
</p>

<p>
Ngày nay, mã Morse chủ yếu được sử dụng trong vô tuyến nghiệp dư và một số đèn hiệu vô tuyến hàng hải.
Tuy nhiên, vì nó cho phép truyền thông chỉ bằng cơ chế bật-tắt rất đơn giản — như đèn nhấp nháy, âm thanh ngắn dài, hoặc thậm chí nháy mắt và gõ vào tường — giá trị của nó như phương tiện truyền thông tối thượng trong các tình huống như thiên tai vẫn hoàn toàn không giảm sút ngay cả trong thời đại hiện đại.
Tín hiệu cấp cứu nổi tiếng "SOS" được chọn không vì ý nghĩa ngôn ngữ nào, mà vì sự kết hợp "<code>... --- ...</code>" dễ truyền và dễ nhận biết.
</p>
