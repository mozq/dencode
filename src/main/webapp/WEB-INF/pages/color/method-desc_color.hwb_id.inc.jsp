<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang Warna HWB</h3>
<p>Warna HWB adalah model warna yang merepresentasikan warna dengan tiga komponen: rona, tingkat putih, dan tingkat hitam. Rona menentukan warna dasar, sedangkan tingkat putih dan tingkat hitam menentukan seberapa banyak putih dan hitam dicampurkan, sehingga mudah dipahami saat membuat warna lebih terang, lebih gelap, atau lebih dekat ke abu-abu.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponen</th><th>Arti</th><th>Contoh nilai</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Rona</td><td>Mewakili rona sebagai sudut. Merah sekitar 0deg, hijau sekitar 120deg, dan biru sekitar 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Tingkat putih</td><td>Mewakili jumlah putih yang dicampurkan ke warna. Semakin besar nilainya, semakin putih warnanya.</td><td><code>20%</code></td></tr>
			<tr><td>B: Tingkat hitam</td><td>Mewakili jumlah hitam yang dicampurkan ke warna. Semakin besar nilainya, semakin gelap warnanya.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Misalnya, warna utama seperti merah dapat direpresentasikan sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Notasi HWB</th><th>Notasi RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Hijau</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Biru</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Putih</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Hitam</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat direpresentasikan sebagai <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Penanganan rona, tingkat putih, dan tingkat hitam</h4>
<p>Rona diperlakukan sebagai sudut, dan nilai lebih dari 360deg atau nilai negatif dinormalisasi ke rentang 0deg sampai 360deg. Misalnya, <code>hwb(360deg 0% 0%)</code> diperlakukan sebagai warna yang sama dengan <code>hwb(0deg 0% 0%)</code>, dan <code>hwb(-120deg 0% 0%)</code> sebagai warna yang sama dengan <code>hwb(240deg 0% 0%)</code>.</p>

<p>Tingkat putih dan tingkat hitam diperlakukan dalam rentang 0% sampai 100%. Tingkat putih yang lebih besar mendekatkan warna ke putih, dan tingkat hitam yang lebih besar mendekatkannya ke hitam. Jika jumlah tingkat putih dan tingkat hitam adalah 100% atau lebih, warna diperlakukan sebagai warna keabu-abuan terlepas dari rona.</p>

<h4>Perbedaan antara HWB dan HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> menyesuaikan warna dengan saturasi dan kecerahan, sehingga cocok untuk menentukan kejernihan dan kecerahan. HWB menyesuaikan warna berdasarkan jumlah putih dan hitam yang dicampurkan, sehingga operasi seperti “membuatnya lebih putih dengan rona yang sama” atau “menambahkan hitam untuk menggelapkan” mudah dijelaskan.</p>

<p>Namun, HWB juga bukan ruang warna yang seragam secara persepsi. Jika ingin menangani kecerahan visual atau perbedaan warna dengan lebih mudah, ruang warna seperti <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a>, dan <a href="${dc:h(basePath)}/color/oklch">Oklch</a> dapat digunakan.</p>
