<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Pengkodean URL</h3>
<p>Pengkodean URL adalah metode untuk merepresentasikan teks dengan aman di dalam URL. Nama resminya adalah "percent-encoding", yang didefinisikan dalam spesifikasi URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Karakter yang memiliki makna khusus dalam URL, atau karakter yang sulit digunakan langsung dalam URL, diubah menjadi tanda persen (%) diikuti dua digit heksadesimal.</p>
<p>Misalnya, spasi direpresentasikan sebagai <code>%20</code>, tanda seru (<code>!</code>) sebagai <code>%21</code>, dan karakter Jepang "あ" sebagai <code>%E3%81%82</code> dalam UTF-8.</p>

<p>Pengkodean URL terlebih dahulu mengubah teks menjadi byte menggunakan pengkodean karakter yang dipilih, lalu merepresentasikan setiap byte sebagai <code>%HH</code> jika diperlukan. Di DenCode, karakter tidak tercadangkan menurut RFC 3986, yaitu karakter alfanumerik dan <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, tidak diubah; karakter lainnya dikodekan dengan percent-encoding.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Karakter</th><th scope="col">Setelah Pengkodean URL</th><th scope="col">Deskripsi</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Karakter alfanumerik adalah karakter tidak tercadangkan, sehingga tidak diubah.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code>, dan <code>~</code> adalah karakter tidak tercadangkan, sehingga tidak diubah.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Karakter ini memisahkan segmen path URL; kodekan jika digunakan sebagai nilai.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Karakter tercadangkan yang memulai query string.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Karakter tercadangkan yang memisahkan parameter query.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Karakter tercadangkan yang memisahkan nama parameter dan nilainya.</td></tr>
		<tr><td>Spasi</td><td><code>%20</code></td><td>Dalam percent-encoding URL, spasi dikodekan sebagai <code>%20</code>; dalam <code>application/x-www-form-urlencoded</code>, sebagai <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Kodekan <code>+</code> jika tanda plus itu sendiri digunakan sebagai nilai.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>Dalam UTF-8, karakter ini dikodekan sebagai urutan tiga byte.</td></tr>
	</table>
</div>

<p>Misalnya, pengkodean URL untuk "Hello, world!" menghasilkan hasil berikut.</p>

<pre>Hello%2C%20world%21</pre>

<p>Dalam contoh ini, koma (<code>,</code>) menjadi <code>%2C</code>, spasi menjadi <code>%20</code>, dan tanda seru (<code>!</code>) menjadi <code>%21</code>.</p>


<h4>Representasi Spasi dalam application/x-www-form-urlencoded</h4>
<p>Dalam <code>application/x-www-form-urlencoded</code>, yang digunakan untuk pengiriman form HTML, spasi dapat direpresentasikan sebagai <code>+</code>. Format ini didefinisikan sebagai encoding pengiriman form dalam <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a>.</p>
<p>DenCode memungkinkan Anda memilih apakah spasi dikeluarkan sebagai <code>%20</code> atau <code>+</code> saat encoding.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Hasil untuk "Hello world"</th><th scope="col">Penggunaan</th></tr>
		<tr><td>Percent-encoding</td><td><code>Hello%20world</code></td><td>Format umum untuk URL.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Digunakan dalam query string dan request body form HTML.</td></tr>
	</table>
</div>
