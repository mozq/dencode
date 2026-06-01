<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Warna RGB</h3>
<p>Warna RGB adalah model warna yang merepresentasikan warna dengan menggabungkan tiga komponen cahaya: merah, hijau, dan biru. Model ini banyak digunakan untuk warna di layar, seperti display, halaman web, dan data gambar.</p>

<p>Dalam RGB, intensitas setiap komponen ditentukan dengan nilai numerik. Umumnya dinyatakan sebagai bilangan bulat dari 0 sampai 255, atau persentase dari 0% sampai 100%. Jika semua komponen 0, warnanya hitam; jika semua komponen maksimum, warnanya putih.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Notasi RGB</th><th>Notasi heksadesimal</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Hijau</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Biru</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Putih</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Hitam</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>Warna RGB dapat ditulis dalam bentuk fungsi atau heksadesimal. Misalnya, merah dapat direpresentasikan sebagai <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code>, atau <code>#f00</code>.</p>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat direpresentasikan sebagai <code>rgb(255 0 0 / 50%)</code> atau <code>#ff000080</code>.</p>

<p>Konversi warna RGB DenCode mendukung opsi notasi berikut.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Warna RGB (heksadesimal)</caption>
		<thead>
			<tr><th>Opsi notasi</th><th>Format</th><th>Contoh</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB warna</caption>
		<thead>
			<tr><th>Opsi notasi</th><th>Format</th><th>Contoh</th></tr>
		</thead>
		<tbody>
			<tr><td>Angka</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Persentase</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> bukan notasi warna heksadesimal standar CSS, tetapi merupakan format ARGB yang kadang digunakan dalam program dan pengaturan aplikasi. <code>AA</code> di awal mewakili alfa, diikuti <code>RR</code>, <code>GG</code>, dan <code>BB</code> untuk merah, hijau, dan biru.</p>

<h4>sRGB dan Ruang Warna RGB Lainnya</h4>
<p>RGB adalah model warna yang merepresentasikan warna dengan tiga komponen: merah, hijau, dan biru. Namun, meskipun nilai RGB sama, warna sebenarnya berbeda tergantung ruang warna yang digunakan untuk menafsirkannya. <code>rgb()</code> dan <code>#RRGGBB</code> yang umum di web biasanya diperlakukan sebagai warna dalam ruang warna sRGB.</p>

<p>CSS Color Module Level 4 juga mendefinisikan ruang warna RGB dengan gamut yang berbeda dari sRGB, seperti Display P3 dan ProPhoto RGB. DenCode juga mendukung konversi untuk ruang warna ini.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Ruang warna</th><th>Format</th><th>Contoh</th><th>Karakteristik</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Ruang warna RGB umum untuk web dan CSS. Kode warna heksadesimal dan nilai <code>rgb()</code> biasa pada dasarnya diperlakukan sebagai sRGB. <code>color(srgb ...)</code> adalah format CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Ruang warna yang menggunakan gamut yang sama dengan sRGB, tetapi merepresentasikan nilai dengan komponen yang dilinearkan. Digunakan untuk perhitungan dan komposisi warna.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Ruang warna dengan gamut lebih luas daripada sRGB, digunakan pada layar gamut luas dan beberapa perangkat mobile.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Ruang warna yang lebih luas daripada sRGB, kadang digunakan dalam pengeditan foto dan alur kerja untuk cetak.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Ruang warna RGB dengan gamut lebih luas lagi daripada Adobe RGB, digunakan sebagai ruang kerja dalam pengeditan foto.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Ruang warna RGB dengan gamut sangat luas, digunakan dalam standar video UHDTV dan HDR.</td></tr>
		</tbody>
	</table>
</div>

<p>Warna yang ditentukan dalam ruang warna RGB gamut luas mungkin tidak dapat direpresentasikan secara akurat pada layar sRGB atau dengan kode heksadesimal biasa. Saat DenCode mengonversi ke <code>#RRGGBB</code> atau <code>rgb(R G B)</code> numerik, komponen di luar rentang yang dapat direpresentasikan sRGB diperlakukan agar masuk dalam rentang <code>0</code> sampai <code>255</code>. Sebaliknya, memilih ruang warna seperti <code>color(display-p3 ...)</code> atau <code>color(a98-rgb ...)</code> memungkinkan warna ditampilkan sebagai nilai komponen dalam ruang warna yang dipilih.</p>
