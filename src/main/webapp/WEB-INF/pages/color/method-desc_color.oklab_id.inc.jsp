<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang warna Oklab</h3>
<p>Warna Oklab adalah ruang warna berbasis persepsi yang merepresentasikan warna dengan lightness dan dua komponen warna. Seperti Lab, Oklab memisahkan kecerahan dan warna, tetapi sebagai model yang lebih baru dirancang agar perubahan warna lebih dekat dengan tampilan visual.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponen</th><th>Arti</th><th>Contoh nilai</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Menunjukkan arah dari hijau ke merah. Nilai negatif lebih hijau, nilai positif lebih merah.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Menunjukkan arah dari biru ke kuning. Nilai negatif lebih biru, nilai positif lebih kuning.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Misalnya, warna utama seperti merah dapat ditampilkan sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Oklab notasi</th><th>Notasi RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Hijau</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Biru</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Putih</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Hitam</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat ditulis sebagai <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Penanganan lightness, a, dan b</h4>
<p>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih Nilai di bawah 0% diperlakukan sebagai 0%, dan di atas 100% dibatasi ke 100%.</p>

<p><code>a</code> dan <code>b</code> ditentukan sebagai angka positif atau negatif. Nilainya tidak dipotong ke rentang tetap dan diproses sebagai komponen yang ditentukan.</p>

<h4>Perbedaan antara Oklab dan Oklch</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> memakai gagasan berbasis persepsi yang sama dengan Oklab, tetapi menyatakan warna dengan chroma dan hue.</p>

<h4>Perbedaan antara Oklab dan Lab</h4>
<p>Oklab dirancang agar perubahan visual lebih seragam daripada <a href="${dc:h(basePath)}/color/lab">Lab</a> saat hue atau chroma berubah.</p>
