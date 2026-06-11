<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang HTML escape</h3>
<p>HTML escape mengubah karakter yang memiliki arti khusus di HTML menjadi referensi karakter, sehingga string dapat ditampilkan dengan aman sebagai teks HTML. Misalnya, <code>&lt;</code> dan <code>&gt;</code>, yang dapat dianggap sebagai tag, ditulis sebagai <code>&amp;lt;</code> dan <code>&amp;gt;</code>.</p>
<p>Dengan melakukan HTML escape, teks masukan tidak ditafsirkan sebagai tag atau atribut HTML, melainkan ditampilkan apa adanya sebagai teks di layar.</p>

<p>Misalnya, jika “&lt;p&gt;Hello, world!&lt;/p&gt;” diubah dengan HTML escape, hasilnya adalah sebagai berikut.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Karakter</th><th scope="col">Setelah HTML escape</th><th scope="col">Deskripsi</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Dapat ditafsirkan sebagai awal tag HTML.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Dapat ditafsirkan sebagai akhir tag HTML.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Dapat ditafsirkan sebagai awal referensi karakter.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Memiliki arti khusus ketika nilai atribut diapit tanda kutip ganda.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Memiliki arti khusus ketika nilai atribut diapit tanda kutip tunggal.</td></tr>
	</table>
</div>

<h4>Escape dasar dan escape penuh</h4>
<p>DenCode menampilkan dua hasil HTML escape: “Dasar” dan “Semua”.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Jenis</th><th scope="col">Deskripsi</th><th scope="col">Contoh untuk “A &lt; あ”</th></tr>
		<tr><td>HTML Escape (Dasar)</td><td>Mengubah lima karakter <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code>, dan <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML Escape (Semua)</td><td>Menggunakan referensi karakter bernama jika tersedia, dan referensi karakter numerik desimal untuk karakter lainnya.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Untuk tampilan HTML biasa, escape dasar yang hanya mengubah karakter yang diperlukan umumnya digunakan. Escape penuh berguna ketika Anda ingin memeriksa string sebagai referensi karakter HTML atau menampilkan setiap karakter secara eksplisit sebagai referensi.</p>

<h4>Unescape</h4>
<p>HTML unescape mengubah referensi karakter HTML kembali menjadi karakter aslinya. DenCode dapat mendekode referensi karakter bernama seperti <code>&amp;lt;</code> dan <code>&amp;amp;</code>, referensi karakter numerik desimal seperti <code>&amp;#12354;</code>, serta referensi karakter numerik heksadesimal seperti <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Referensi karakter HTML</th><th scope="col">Setelah unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
