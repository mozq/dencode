<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Unicode Escape Sequence</h3>
<p>Chuyển đổi chuỗi sang định dạng Unicode escape sequence.</p>
<p>Unicode escape sequence chuyển đổi 1 ký tự thành định dạng mã point 4 chữ số thập lục phân như \uXXXX. Ví dụ, "あ" trở thành "\u3042".</p>

<p>Ngoài định dạng \uXXXX, DenCode cũng hỗ trợ các định dạng biểu diễn sau:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Định dạng</th><th scope="col">Kết quả chuyển đổi "ABC"</th><th scope="col">Mô tả / Ngôn ngữ lập trình</th></tr>
		<tr><td>\uXXXX</td><td>\u0041\u0042\u0043</td><td>Unicode escape sequence phổ biến</td></tr>
		<tr><td>\u{X}</td><td>\u{41}\u{42}\u{43}</td><td>Lua</td></tr>
		<tr><td>\x{X}</td><td>\x{41}\x{42}\x{43}</td><td>Perl</td></tr>
		<tr><td>\X</td><td>\41\42\43</td><td>CSS</td></tr>
		<tr><td>&amp;#xX;</td><td>&amp;#x41;&amp;#x42;&amp;#x43;</td><td>HTML, XML</td></tr>
		<tr><td>%uXXXX</td><td>%u0041%u0042%u0043</td><td>Percent-encoding (Không chuẩn)</td></tr>
		<tr><td>U+XXXX</td><td>U+0041 U+0042 U+0043</td><td>Biểu diễn chuẩn Unicode của mã point (phân tách bằng dấu cách)</td></tr>
		<tr><td>0xX</td><td>0x41 0x42 0x43</td><td>Biểu diễn thập lục phân của mã point (phân tách bằng dấu cách)</td></tr>
	</table>
</div>

<p>Một số định dạng trên được đề cập là BEST CURRENT PRACTICE trong <a href="https://www.rfc-editor.org/rfc/rfc5137" target="_blank">RFC 5137 (ASCII Escaping of Unicode Characters)</a>, nhưng không có tiêu chuẩn quốc tế nào.</p>
<p>Định dạng %uXXXX được Microsoft IIS hỗ trợ, nhưng là định dạng không chuẩn. Có thể mã hóa thành định dạng %u bằng <a href="https://learn.microsoft.com/en-us/dotnet/api/system.web.httputility.urlencodeunicode" target="_blank">System.Web.HttpUtility.UrlEncodeUnicode</a> của C#, nhưng phương thức này đã không được khuyến nghị từ .NET Framework 4.5.</p>
<p>Lưu ý rằng đối với định dạng \X, theo <a href="https://www.w3.org/International/questions/qa-escapes" target="_blank">đặc tả CSS</a>, khi giải mã, một dấu cách bán giác theo sau sẽ được coi là dấu phân cách và bị bỏ qua. Đối với các định dạng U+XXXX và 0xX, khi mã hóa, mỗi ký tự được phân tách bằng một dấu cách bán giác, và khi giải mã, giống như định dạng \X, một dấu cách bán giác liền sau sẽ bị bỏ qua.</p>


<h4>Escape bằng tên Unicode</h4>

<p>Cũng hỗ trợ escape bằng tên Unicode như một Unicode escape sequence.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Định dạng</th><th scope="col">Kết quả chuyển đổi "A"</th><th scope="col">Mô tả / Ngôn ngữ lập trình</th></tr>
		<tr><td>\N{name}</td><td>\N{LATIN CAPITAL LETTER A}</td><td>C++23, Python, Perl</td></tr>
	</table>
</div>

<p>Tên Unicode có thể được kiểm tra tại <a href="https://unicode.org/charts/nameslist/" target="_blank">Names List Charts - Unicode</a> hoặc <a href="https://www.unicode.org/Public/15.0.0/ucd/NamesList.txt" target="_blank">NamesList.txt - Unicode</a>.</p>


<h4>Ký tự ngoài phạm vi Unicode BMP trong Unicode escape sequence</h4>

<p>Đối với các ký tự không thuộc BMP của Unicode, vì mã point không vừa trong 4 chữ số, chúng được biểu diễn bằng các định dạng sau tùy theo ngôn ngữ lập trình.</p>
<p>Ví dụ, kết quả chuyển đổi "😀" (U+1F600) như sau:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Định dạng</th><th scope="col">Kết quả chuyển đổi "😀"(U+1F600)</th><th scope="col">Ngôn ngữ lập trình</th></tr>
		<tr><td>\uXXXX</td><td>\uD83D\uDE00</td><td>Java, Kotlin, Scala</td></tr>
		<tr><td>\u{X}</td><td>\u{1F600}</td><td>C++23, Rust, Swift, JavaScript, PHP, Ruby, Dart, Lua</td></tr>
		<tr><td>\U00XXXXXX</td><td>\U0001F600</td><td>C, C++, Objective-C, C#, Go, Python, R</td></tr>
		<tr><td>\x{X}</td><td>\x{1F600}</td><td>Perl</td></tr>
		<tr><td>\X</td><td>\1F600</td><td>CSS</td></tr>
		<tr><td>&amp;#xX;</td><td>&amp;#x1F600;</td><td>HTML, XML</td></tr>
		<tr><td>%uXXXX</td><td>%uD83D%uDE00</td><td>-</td></tr>
		<tr><td>U+XXXX</td><td>U+1F600</td><td>-</td></tr>
		<tr><td>0xX</td><td>0x1F600</td><td>-</td></tr>
		<tr><td>\N{name}</td><td>\N{GRINNING FACE}</td><td>C++23, Python, Perl</td></tr>
	</table>
</div>

<p>Trong các định dạng \uXXXX và %uXXXX, các ký tự không thuộc BMP được biểu diễn bằng 2 đơn vị mã dưới dạng cặp thay thế (surrogate pair) UTF-16. Trong các định dạng khác, 1 ký tự được biểu diễn bằng 1 mã point.</p>
