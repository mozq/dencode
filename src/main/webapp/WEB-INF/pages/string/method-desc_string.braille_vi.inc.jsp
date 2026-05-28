<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Chữ nổi Braille</h3>
<p>
Braille là một hệ thống chữ viết xúc giác bao gồm các chấm nổi, được thiết kế cho người khiếm thị sử dụng bằng cách chạm đầu ngón tay để đọc.
Nó biểu diễn một ký tự hoặc ký hiệu bằng cách kết hợp 6 chấm được sắp xếp thành 3 hàng và 2 cột (Braille 6 chấm).
Hệ thống này được sử dụng trên toàn thế giới và các quy tắc gán chấm khác nhau tùy thuộc vào ngôn ngữ.
</p>


<h3>Chữ nổi Tiếng Anh (UEB Grade 1)</h3>
<p>
Công cụ này được chuyển đổi dựa trên tiêu chuẩn "Chữ nổi Tiếng Anh thống nhất (UEB: Unified English Braille)" Grade 1 (chữ nổi chưa rút gọn: hệ thống viết trực tiếp từng chữ cái trong bảng chữ cái), được sử dụng ở các nước nói tiếng Anh. Nó không hỗ trợ dạng viết tắt (Grade 2).
</p>

<p>Ví dụ chuyển đổi:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Bảng chữ cái</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>a</th><td>⠁</td><th>b</th><td>⠃</td><th>c</th><td>⠉</td><th>d</th><td>⠙</td><th>e</th><td>⠑</td></tr>
		<tr><th>f</th><td>⠋</td><th>g</th><td>⠛</td><th>h</th><td>⠓</td><th>i</th><td>⠊</td><th>j</th><td>⠚</td></tr>
		<tr><th>k</th><td>⠅</td><th>l</th><td>⠇</td><th>m</th><td>⠍</td><th>n</th><td>⠝</td><th>o</th><td>⠕</td></tr>
		<tr><th>p</th><td>⠏</td><th>q</th><td>⠟</td><th>r</th><td>⠗</td><th>s</th><td>⠎</td><th>t</th><td>⠞</td></tr>
		<tr><th>u</th><td>⠥</td><th>v</th><td>⠧</td><th>w</th><td>⠺</td><th>x</th><td>⠭</td><th>y</th><td>⠽</td></tr>
		<tr><th>z</th><td>⠵</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<p>
Đối với các chữ cái viết hoa, một ký hiệu viết hoa (<code>⠠</code>) được đặt trước chữ cái.
Ngoài ra, khi có các chữ cái viết hoa liên tiếp, "ký hiệu từ viết hoa (<code>⠠⠠</code>)" chỉ định toàn bộ từ là viết hoa; "ký hiệu đoạn viết hoa (<code>⠠⠠⠠</code>)" khi áp dụng trên nhiều từ; và "dấu kết thúc viết hoa (<code>⠠⠄</code>)" được sử dụng khi hết phần áp dụng.
</p>

<h4>Số</h4>
<p>
Các số được biểu thị bằng cách đặt một ký hiệu số (<code>⠼</code>). Những ký tự sau ký hiệu số sẽ được coi như số, mượn bằng cách sử dụng các chữ nổi Braille cho các chữ cái từ a đến j.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Ký hiệu số</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Nếu một chữ thường từ a đến j theo ngay sau một số, "Dấu cấp độ 1" (<code>⠰</code>) sẽ được chèn vào để tránh nhầm lẫn với số.
</p>

<h4>Các ký hiệu chính</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Dấu phẩy)</th><td>⠂</td><th>. (Dấu chấm)</th><td>⠲</td><th>! (Dấu chấm than)</th><td>⠖</td><th>? (Dấu chấm hỏi)</th><td>⠦</td></tr>
		<tr><th>' (Dấu nháy đơn)</th><td>⠄</td><th>- (Dấu gạch nối)</th><td>⠤</td><th>; (Dấu chấm phẩy)</th><td>⠆</td><th>: (Dấu hai chấm)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Dấu ngoặc</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Ngoặc kép chung)</th><td>⠦ *** ⠴</td><th>' *** ' (Ngoặc đơn chung)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Ngoặc kép có hướng)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Ngoặc đơn có hướng)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Ngoặc nhọn kép)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Ngoặc nhọn)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Ngoặc đơn tròn)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Ngoặc vuông)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Ngoặc móc)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Chữ nổi Tiếng Nhật</h3>
<p>
Chữ nổi tiếng Nhật được biểu thị bằng cách chuyển đổi các câu thành chữ Kana trước khi chuyển đổi chúng thành chữ nổi.
</p>

<p>Ví dụ chuyển đổi:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>Kana</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>ア</th><td>⠁</td><th>イ</th><td>⠃</td><th>ウ</th><td>⠉</td><th>エ</th><td>⠋</td><th>オ</th><td>⠊</td></tr>
		<tr><th>カ</th><td>⠡</td><th>キ</th><td>⠣</td><th>ク</th><td>⠩</td><th>ケ</th><td>⠫</td><th>コ</th><td>⠪</td></tr>
		<tr><th>サ</th><td>⠱</td><th>シ</th><td>⠳</td><th>ス</th><td>⠹</td><th>セ</th><td>⠻</td><th>ソ</th><td>⠺</td></tr>
		<tr><th>タ</th><td>⠕</td><th>チ</th><td>⠗</td><th>ツ</th><td>⠝</td><th>テ</th><td>⠟</td><th>ト</th><td>⠞</td></tr>
		<tr><th>ナ</th><td>⠅</td><th>ニ</th><td>⠇</td><th>ヌ</th><td>⠍</td><th>ネ</th><td>⠏</td><th>ノ</th><td>⠎</td></tr>
		<tr><th>ハ</th><td>⠥</td><th>ヒ</th><td>⠧</td><th>フ</th><td>⠭</td><th>ヘ</th><td>⠯</td><th>ホ</th><td>⠮</td></tr>
		<tr><th>マ</th><td>⠵</td><th>ミ</th><td>⠷</td><th>ム</th><td>⠽</td><th>メ</th><td>⠿</td><th>モ</th><td>⠾</td></tr>
		<tr><th>ヤ</th><td>⠌</td><th></th><td></td><th>ユ</th><td>⠬</td><th></th><td></td><th>ヨ</th><td>⠜</td></tr>
		<tr><th>ラ</th><td>⠑</td><th>リ</th><td>⠓</td><th>ル</th><td>⠙</td><th>レ</th><td>⠛</td><th>ロ</th><td>⠚</td></tr>
		<tr><th>ワ</th><td>⠄</td><th>ヰ</th><td>⠆</td><th></th><td></td><th>ヱ</th><td>⠖</td><th>ヲ</th><td>⠔</td></tr>
		<tr><th>ン</th><td>⠴</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ッ (Âm ngắt)</th><td>⠂</td><th>ー (Trường âm)</th><td>⠒</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>ガ</th><td>⠐⠡</td><th>ギ</th><td>⠐⠣</td><th>グ</th><td>⠐⠩</td><th>ゲ</th><td>⠐⠫</td><th>ゴ</th><td>⠐⠪</td></tr>
		<tr><th>ザ</th><td>⠐⠱</td><th>ジ</th><td>⠐⠳</td><th>ズ</th><td>⠐⠹</td><th>ゼ</th><td>⠐⠻</td><th>ゾ</th><td>⠐⠺</td></tr>
		<tr><th>ダ</th><td>⠐⠕</td><th>ヂ</th><td>⠐⠗</td><th>ヅ</th><td>⠐⠝</td><th>デ</th><td>⠐⠟</td><th>ド</th><td>⠐⠞</td></tr>
		<tr><th>バ</th><td>⠐⠥</td><th>ビ</th><td>⠐⠧</td><th>ブ</th><td>⠐⠭</td><th>ベ</th><td>⠐⠯</td><th>ボ</th><td>⠐⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>パ</th><td>⠠⠥</td><th>ピ</th><td>⠠⠧</td><th>プ</th><td>⠠⠭</td><th>ペ</th><td>⠠⠯</td><th>ポ</th><td>⠠⠮</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>キャ</th><td>⠈⠡</td><th>キュ</th><td>⠈⠩</td><th>キョ</th><td>⠈⠪</td></tr>
		<tr><th>シャ</th><td>⠈⠱</td><th>シュ</th><td>⠈⠹</td><th>ショ</th><td>⠈⠺</td></tr>
		<tr><th>チャ</th><td>⠈⠕</td><th>チュ</th><td>⠈⠝</td><th>チョ</th><td>⠈⠞</td></tr>
		<tr><th>ニャ</th><td>⠈⠅</td><th>ニュ</th><td>⠈⠍</td><th>ニョ</th><td>⠈⠎</td></tr>
		<tr><th>ヒャ</th><td>⠈⠥</td><th>ヒュ</th><td>⠈⠭</td><th>ヒョ</th><td>⠈⠮</td></tr>
		<tr><th>ミャ</th><td>⠈⠵</td><th>ミュ</th><td>⠈⠽</td><th>ミョ</th><td>⠈⠾</td></tr>
		<tr><th>リャ</th><td>⠈⠑</td><th>リュ</th><td>⠈⠙</td><th>リョ</th><td>⠈⠚</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ギャ</th><td>⠘⠡</td><th>ギュ</th><td>⠘⠩</td><th>ギョ</th><td>⠘⠪</td></tr>
		<tr><th>ジャ</th><td>⠘⠱</td><th>ジュ</th><td>⠘⠹</td><th>ジョ</th><td>⠘⠺</td></tr>
		<tr><th>ヂャ</th><td>⠘⠕</td><th>ヂュ</th><td>⠘⠝</td><th>ヂョ</th><td>⠘⠞</td></tr>
		<tr><th>ビャ</th><td>⠘⠥</td><th>ビュ</th><td>⠘⠭</td><th>ビョ</th><td>⠘⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ピャ</th><td>⠨⠥</td><th>ピュ</th><td>⠨⠭</td><th>ピョ</th><td>⠨⠮</td></tr>
	</table>
</div>

<h4>Các ký hiệu chính</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Dấu phẩy)</th><td>⠰</td><th>。 (Dấu chấm)</th><td>⠲</td><th>？ (Dấu chấm hỏi)</th><td>⠢</td><th>！ (Dấu chấm than)</th><td>⠖</td></tr>
		<tr><th>・ (Dấu chấm giữa)</th><td>⠐</td><th>〜 (Dấu lượn sóng)</th><td>⠤⠤</td><th>＆ (Ký hiệu và)</th><td>⠰⠯</td><th>％ (Phần trăm)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Dấu ngoặc</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Ngoặc đơn loại nhỏ)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Ngoặc kép)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Ngoặc tròn)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Ngoặc tròn kép)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Bảng chữ cái ngoại ngữ</h4>
<p>
Khi có tiếng Anh hoặc bảng chữ cái ngoại ngữ khác bị lẫn vào, một ký hiệu tiếng nước ngoài (<code>⠰</code>) sẽ được chèn ngay trước bảng chữ cái đó, theo sau là chữ nổi Braille cho bảng chữ cái tương đương với hệ thống UEB.
</p>

<h4>Số</h4>
<p>
Tuân theo bảng quy tắc giống như chữ nổi Tiếng Anh.
</p>

<h4>Cách chia từ (Phân cách)</h4>
<p>
DenCode không tự động chèn khoảng trắng phân cách từng từ, mà trực tiếp chuyển đổi chuỗi từ đã nhập thành chữ nổi. Để tạo chữ nổi Braille tiếng Nhật chính xác hơn, vui lòng phân vùng và nhập dấu cách trước theo từng cụm từ (Wakachigaki).
</p>


<h3>Lịch sử của Braille</h3>
<p>
Chữ nổi 6 chấm hiện đại được Louis Braille người Pháp phát minh vào năm 1825.
Ông mất thị lực sau một vụ tai nạn thời thơ ấu và đã hoàn thiện hệ thống này khi chỉ mới 15 tuổi.
Các hệ thống chữ viết trước đây cho những người khiếm thị chủ yếu sử dụng các ký tự nổi thông thường được dập nổi trên giấy, nhưng thực tế việc đọc và viết lại cực kỳ khó khăn.
Tuy nhiên, hệ thống chấm Braille 6 điểm do Braille thiết kế đã giúp người dùng có thể đọc nhanh bằng ngón tay và dễ dàng viết bằng công cụ chuyên dụng. Ngày nay, từ "Braille" tự nó đã trở thành từ đồng nghĩa với "chữ nổi" trên toàn cầu.
</p>
<p>
Tại Nhật Bản, việc giới thiệu chữ nổi bắt đầu được xem xét trong thời đại Meiji (Minh Trị).
Vào năm 1890 (Meiji năm thứ 23), chữ nổi Tiếng Nhật (Braille 6 điểm) dựa trên bảng chữ Kana hiện tại đã được Kuraji Ishikawa, một giáo viên tại Trường dạy trẻ Điếc và Mù, hoàn thiện.
Ngày 1 tháng 11, ngày mà hệ thống chữ nổi của Ishikawa chính thức được thông qua, giờ đây đã được kỷ niệm là "Ngày Điểm Nổi (Braille Day)" tại Nhật Bản.
</p>

<h3>Sự tiến hóa của chữ nổi và UEB trong các nước sử dụng tiếng Anh</h3>
<p>
Trong một thời gian dài, thế giới nói tiếng Anh đã sử dụng những hệ thống chữ nổi riêng độc đáo tùy vào từng quốc gia hoặc khu vực.
Ví dụ, "English Braille, American Edition (EBAE)" được dùng làm tiêu chuẩn ở Mỹ, và "Standard English Braille (SEB)" được dùng ở Anh. Dù là chung tiếng Anh, nhưng vẫn có các điểm khác biệt vi tế trong việc phân bổ cấu trúc các biểu tượng ký hiệu, bảng chữ cái phụ, và chính tả rút gọn chữ tắt.
Bên cạnh đó, các quy tắc chữ nổi độc lập đã được tạo ra cho cả Toán học và khoa học (như Nemeth Code) lẫn hệ thống máy tính (Computer Braille Code), dẫn tới một sự lộn xộn, xáo trộn khó khăn đáng lo ngại cho việc áp dụng dạy và học.
</p>
<p>
Để loại bỏ sự chênh lệch quốc gia và sự phát sinh các bộ mã phức tạp trong các lĩnh vực chuyên môn này, những nỗ lực trong việc thiết lập chuẩn mực phổ thông bắt đầu diễn ra vào những năm 1990.
Kết quả của nỗ lực đó là <strong>Unified English Braille (UEB - Chữ nổi Tiếng Anh thống nhất)</strong>, hiện được áp dụng trên toàn thế giới để làm tiêu chuẩn toàn cầu.
</p>
<p>
So sánh với các hệ thống trước như EBAE, thay đổi lớn nhất giúp nhất quán lại là đã được xem xét tinh gọn các cấu trúc biểu tượng (ký hiệu) và giảm thiểu, thắt chặt quy tắc (Grade 2) loại bớt viết tắt.
Trong hệ thống truyền thống hệ thời hạn cũ, có vô cùng những quy ước rút lược từ phức tạp được thiết kế để hạn chế lượng ký tự tối ưu hóa thời gian đánh ghi, nên đôi khi gây rối trí. Nhưng bởi thế UEB đã quyết định xóa sổ loại bỏ bớt một cơ số những sự viết tắt khó hiểu ("ble", "com").
Đồng thời, nó quy định minh bạch rằng không dùng chữ rút viết tắt trong bối cảnh các dạng cấu trúc Email và URL, và phát minh, ấn định quy ước tạo hình những định nghĩa bộ kỹ tự chuẩn hiện đại mới cho công nghệ mạng thế kỉ số ngày nay, như <code>@</code>, hay <code>/</code>.
</p>
<p>
Hiện nay, đa số các khối quốc gia khu vực dùng đa phần là tiếng Anh như Hợp chủng quốc Hoa Kỳ, các Bang thuộc Liên hiệp Vương quốc Anh và Bắc Ireland, Úc Châu, Canada và New Zealand đã dần dần thống nhất cập nhật phiên bản, toàn bộ hướng chuyển tiếp thành công sang hệ UEB, bởi thế, tài liệu giảng quy chuẩn đào tạo tiếng Anh thế giới cũng đồng nhất hệ tiêu chuẩn UEB cho tương lai tới.
</p>
