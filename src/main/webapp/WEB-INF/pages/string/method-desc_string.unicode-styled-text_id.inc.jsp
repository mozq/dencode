<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang konversi teks Unicode bergaya</h3>
<p>Konversi teks Unicode bergaya mengganti huruf Latin dan digit dengan karakter Unicode dekoratif. Dengan ini, Anda dapat membuat teks yang terlihat seperti tebal, miring, script, Fraktur, double-struck, monospace, small capital, dan gaya lainnya.</p>
<p>Konversi ini tidak mengubah pengaturan font di CSS atau dokumen. Sebaliknya, huruf ASCII (A-Z, a-z) dan digit (0-9) pada input diganti dengan karakter Unicode yang sesuai. Jika suatu gaya tidak memiliki karakter yang sesuai, karakter tersebut dibiarkan apa adanya.</p>

<p>Misalnya, jika “Hello, world! 123” dikonversi ke gaya script, hasilnya adalah sebagai berikut.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>Dalam contoh ini, huruf diganti dengan karakter Unicode bergaya script, sedangkan koma, spasi, tanda seru, dan digit tetap sama.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Gaya</th><th scope="col">Contoh konversi untuk “ABC abc 123”</th><th scope="col">Keterangan</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Karakter bergaya sans-serif.</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Karakter sans-serif tebal.</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Karakter sans-serif miring. Digit tidak dikonversi.</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Karakter serif tebal.</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Karakter serif miring. Digit tidak dikonversi.</td></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Karakter bergaya script. Digit tidak dikonversi.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Karakter bergaya Fraktur. Digit tidak dikonversi.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Karakter double-struck.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Karakter bergaya monospace.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Karakter bergaya small capital. Hanya huruf kecil yang dikonversi.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Huruf dan digit dalam lingkaran.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Huruf dan digit lingkaran negatif. Huruf kecil dikonversi menjadi huruf besar.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Huruf dalam kotak. Huruf kecil dikonversi menjadi huruf besar. Digit tidak dikonversi.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Huruf dalam kotak negatif. Huruf kecil dikonversi menjadi huruf besar. Digit tidak dikonversi.</td></tr>
	</table>
</div>

<p>Karakter hasil konversi adalah karakter Unicode yang berbeda dari huruf dan digit biasa. Karena itu, dalam pencarian, penyalinan, pembacaan suara, dan perbandingan oleh program, karakter tersebut diperlakukan sebagai karakter berbeda meskipun terlihat mirip.</p>
<p>Jika font di lingkungan pengguna tidak mendukung sebagian karakter ini, karakter dapat muncul sebagai kotak atau kosong. Karakter ini berguna untuk posting media sosial dan teks dekoratif singkat, tetapi untuk identifier, URL, alamat email, dan teks yang perlu dicari, sebaiknya gunakan huruf dan digit biasa.</p>
