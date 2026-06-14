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

<h4>Opsi escape HTML</h4>
<p>DenCode memungkinkan Anda memilih sasaran, cara penggunaan referensi karakter bernama, dan notasi referensi numerik.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Sasaran</caption>
		<tr><th scope="col">Opsi</th><th scope="col">Deskripsi</th><th scope="col">Contoh untuk “A &lt; 😀”</th></tr>
		<tr><td>Dasar</td><td>Mengonversi lima karakter <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code>, dan <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Dasar + non-ASCII</td><td>Mengonversi lima karakter dasar dan karakter non-ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Non-alfanumerik</td><td>Mengonversi karakter selain huruf dan angka ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Semua</td><td>Mengonversi semua karakter.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Untuk tampilan HTML biasa, “Dasar” sering digunakan karena hanya mengonversi karakter yang diperlukan. Gunakan “Semua” saat Anda ingin memeriksa string sebagai referensi karakter HTML atau menampilkan setiap karakter secara eksplisit sebagai referensi.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Referensi karakter bernama</caption>
		<tr><th scope="col">Opsi</th><th scope="col">Deskripsi</th><th scope="col">Contoh</th></tr>
		<tr><td>HTML5</td><td>Menggunakan referensi karakter bernama yang didefinisikan oleh HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Menggunakan referensi karakter bernama yang didefinisikan oleh HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Menggunakan lima referensi <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code>, dan <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Tidak ada</td><td>Tidak menggunakan referensi bernama; hanya referensi numerik yang digunakan.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Notasi referensi numerik</caption>
		<tr><th scope="col">Opsi</th><th scope="col">Deskripsi</th><th scope="col">Contoh</th></tr>
		<tr><td>Desimal</td><td>Menggunakan referensi numerik desimal.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Heksadesimal huruf kecil</td><td>Menggunakan referensi numerik heksadesimal dengan huruf kecil.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Heksadesimal huruf besar</td><td>Menggunakan referensi numerik heksadesimal dengan huruf besar.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
