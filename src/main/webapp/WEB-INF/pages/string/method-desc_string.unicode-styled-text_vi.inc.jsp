<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về chuyển đổi văn bản Unicode trang trí</h3>
<p>Chuyển đổi văn bản Unicode trang trí thay thế chữ Latin và chữ số bằng các ký tự Unicode trang trí. Bạn có thể tạo văn bản trông như in đậm, in nghiêng, chữ viết tay, Fraktur, double-struck, monospace, small capital và các kiểu khác.</p>
<p>Chuyển đổi này không thay đổi thiết lập phông chữ trong CSS hoặc trong tài liệu. Thay vào đó, các chữ cái ASCII (A-Z, a-z) và chữ số (0-9) trong đầu vào được thay bằng ký tự Unicode tương ứng. Nếu một kiểu không có ký tự tương ứng, ký tự đó được giữ nguyên.</p>

<p>Ví dụ, khi chuyển “Hello, world! 123” sang kiểu chữ viết tay (Script), kết quả như sau.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>Trong ví dụ này, các chữ cái được thay bằng ký tự Unicode giống chữ viết tay, còn dấu phẩy, khoảng trắng, dấu chấm than và chữ số được giữ nguyên.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Kiểu</th><th scope="col">Ví dụ chuyển đổi cho “ABC abc 123”</th><th scope="col">Mô tả</th></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Ký tự kiểu chữ viết tay. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Script (Đậm)</td><td><code>𝓐𝓑𝓒 𝓪𝓫𝓬 123</code></td><td>Ký tự chữ viết tay in đậm. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Ký tự kiểu sans-serif.</td></tr>
		<tr><td>Sans-serif (Đậm)</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Ký tự sans-serif in đậm.</td></tr>
		<tr><td>Sans-serif (Nghiêng)</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Ký tự sans-serif in nghiêng. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Sans-serif (Đậm và nghiêng)</td><td><code>𝘼𝘽𝘾 𝙖𝙗𝙘 123</code></td><td>Ký tự sans-serif in đậm và nghiêng. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Serif (Đậm)</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Ký tự serif in đậm.</td></tr>
		<tr><td>Serif (Nghiêng)</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Ký tự serif in nghiêng. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Serif (Đậm và nghiêng)</td><td><code>𝑨𝑩𝑪 𝒂𝒃𝒄 123</code></td><td>Ký tự serif in đậm và nghiêng. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Ký tự kiểu Fraktur. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Ký tự double-struck.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Ký tự kiểu monospace.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Ký tự kiểu small capital. Chỉ chữ thường được chuyển đổi.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Chữ cái và chữ số khoanh tròn.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Chữ cái và chữ số khoanh tròn âm bản. Chữ thường được chuyển thành chữ hoa.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Chữ cái dạng ô vuông. Chữ thường được chuyển thành chữ hoa. Chữ số không được chuyển đổi.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Chữ cái dạng ô vuông âm bản. Chữ thường được chuyển thành chữ hoa. Chữ số không được chuyển đổi.</td></tr>
	</table>
</div>

<p>Các ký tự sau khi chuyển đổi là những ký tự Unicode khác với chữ cái và chữ số thông thường. Vì vậy, khi tìm kiếm, sao chép, đọc bằng giọng nói hoặc so sánh trong chương trình, chúng được xem là ký tự khác dù nhìn có vẻ giống nhau.</p>
<p>Nếu phông chữ trong môi trường sử dụng không hỗ trợ một số ký tự này, chúng có thể hiển thị thành ô vuông hoặc khoảng trống. Chúng hữu ích cho bài đăng mạng xã hội và văn bản trang trí ngắn, nhưng với định danh, URL, địa chỉ email và nội dung cần tìm kiếm, nên dùng chữ cái và chữ số thông thường.</p>
