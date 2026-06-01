<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang warna Lab</h3>
<p>Warna Lab adalah ruang warna yang merepresentasikan warna dengan lightness, sumbu hijau-ke-merah, dan sumbu biru-ke-kuning. Berbeda dari RGB yang langsung menentukan komponen merah, hijau, dan biru pada layar, Lab memisahkan kecerahan dan warna dengan cara yang lebih dekat dengan penglihatan manusia.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponen</th><th>Arti</th><th>Contoh nilai</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Menunjukkan arah dari hijau ke merah. Nilai negatif lebih hijau, nilai positif lebih merah.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Menunjukkan arah dari biru ke kuning. Nilai negatif lebih biru, nilai positif lebih kuning.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Misalnya, warna utama seperti merah dapat ditampilkan sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Lab notasi</th><th>Notasi RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Hijau</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Biru</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Putih</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Hitam</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat ditulis sebagai <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Penanganan lightness, a, dan b</h4>
<p>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih Nilai di bawah 0% diperlakukan sebagai 0%, dan di atas 100% dibatasi ke 100%.</p>

<p><code>a</code> dan <code>b</code> ditentukan sebagai angka positif atau negatif. Nilainya tidak dipotong ke rentang tetap dan diproses sebagai komponen yang ditentukan.</p>

<h4>Perbedaan antara Lab dan LCH</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> memakai gagasan berbasis persepsi yang sama dengan Lab, tetapi menyatakan warna dengan chroma dan hue.</p>
