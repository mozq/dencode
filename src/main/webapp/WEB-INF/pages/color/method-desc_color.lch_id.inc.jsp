<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang warna LCH</h3>
<p>Warna LCH adalah ruang warna yang merepresentasikan warna dengan lightness, chroma, dan hue. LCH memakai gagasan berbasis persepsi yang sama dengan Lab, tetapi menyatakan warna dengan chroma dan sudut sehingga kekuatan warna dan hue lebih mudah diatur secara terpisah.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponen</th><th>Arti</th><th>Contoh nilai</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Lightness</td><td>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Menunjukkan kekuatan warna. 0 berarti akromatik, dan nilai yang lebih besar menghasilkan warna lebih cerah.</td><td><code>80</code></td></tr>
			<tr><td>H: Hue</td><td>Menunjukkan hue sebagai sudut.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Misalnya, warna utama seperti merah dapat ditampilkan sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>LCH notasi</th><th>Notasi RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Hijau</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Biru</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Putih</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Hitam</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat ditulis sebagai <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Penanganan lightness, chroma, dan hue</h4>
<p>Menunjukkan kecerahan warna. 0% adalah hitam dan 100% adalah putih Nilai di bawah 0% diperlakukan sebagai 0%, dan di atas 100% dibatasi ke 100%.</p>

<p>Menunjukkan kekuatan warna. 0 berarti akromatik, dan nilai yang lebih besar menghasilkan warna lebih cerah. Chroma negatif diperlakukan sebagai 0. Jika chroma 0, warna menjadi akromatik dan hue diperlakukan sebagai 0deg.</p>

<p>Hue diperlakukan sebagai sudut. <code>lch(54.29% 106.8372 400.86deg)</code> diperlakukan sebagai warna yang sama dengan <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Perbedaan antara LCH dan Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> merepresentasikan warna dengan koordinat persegi <code>a</code> dan <code>b</code>. LCH menyatakan warna dengan chroma dan hue, sehingga penyesuaian pada lightness yang sama dapat lebih intuitif.</p>
