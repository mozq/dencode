<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang warna Oklch</h3>
<p>Warna Oklch adalah ruang warna berbasis persepsi yang merepresentasikan warna dengan lightness, chroma, dan hue. Oklch memakai gagasan yang sama dengan Oklab, tetapi menyatakan warna dengan chroma dan sudut sehingga kekuatan warna dan hue lebih mudah diatur secara terpisah.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponen</th><th>Arti</th><th>Contoh nilai</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Menunjukkan kekuatan warna. 0 berarti akromatik, dan nilai yang lebih besar menghasilkan warna lebih cerah.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Hue</td><td>Menunjukkan hue sebagai sudut.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Misalnya, warna utama seperti merah dapat ditampilkan sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Oklch notasi</th><th>Notasi RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Hijau</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Biru</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Putih</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Hitam</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat ditulis sebagai <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Penanganan lightness, chroma, dan hue</h4>
<p>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih Nilai di bawah 0% diperlakukan sebagai 0%, dan di atas 100% dibatasi ke 100%.</p>

<p>Menunjukkan kekuatan warna. 0 berarti akromatik, dan nilai yang lebih besar menghasilkan warna lebih cerah. Chroma negatif diperlakukan sebagai 0. Jika chroma 0, warna menjadi akromatik dan hue diperlakukan sebagai 0deg.</p>

<p>Hue diperlakukan sebagai sudut. <code>oklch(62.8% 0.2577 389.23deg)</code> diperlakukan sebagai warna yang sama dengan <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Perbedaan antara Oklch dan Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> merepresentasikan warna dengan koordinat persegi <code>a</code> dan <code>b</code>. Oklch mengubah warna tersebut menjadi chroma dan hue.</p>

<h4>Perbedaan antara Oklch dan LCH</h4>
<p>Oklch dirancang agar perubahan visual lebih seragam daripada <a href="${dc:h(basePath)}/color/lch">LCH</a> saat hue atau chroma berubah.</p>
