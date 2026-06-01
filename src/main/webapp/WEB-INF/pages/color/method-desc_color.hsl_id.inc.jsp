<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang warna HSL</h3>
<p>Warna HSL adalah model warna yang merepresentasikan warna dengan hue, saturation, dan lightness. Berbeda dari RGB yang langsung menentukan kekuatan cahaya merah, hijau, dan biru, HSL memisahkan corak warna, vividness, dan kecerahan, sehingga berguna untuk penyesuaian warna dan desain CSS.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Komponen</th><th>Arti</th><th>Contoh nilai</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Hue</td><td>Menunjukkan corak warna sebagai sudut. Merah sekitar 0deg, hijau sekitar 120deg, dan biru sekitar 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Saturation</td><td>Menunjukkan vividness warna. 0% berarti akromatik, dan 100% adalah warna paling vivid.</td><td><code>50%</code></td></tr>
			<tr><td>L: Lightness</td><td>Menunjukkan kecerahan warna. 0% adalah hitam, 50% kecerahan normal, dan 100% putih.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Misalnya, warna utama seperti merah dapat ditampilkan sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Notasi HSL</th><th>Notasi RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Hijau</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Biru</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Putih</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Hitam</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat ditulis sebagai <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>Sebagai input, Anda dapat menggunakan notasi yang dipisahkan spasi <code>hsl(0deg 100% 50%)</code> serta notasi lama yang dipisahkan koma <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Penanganan hue, saturation, dan lightness</h4>
<p>Hue diperlakukan sebagai sudut, dan nilai lebih dari 360deg atau nilai negatif dinormalisasi ke rentang 0deg hingga 360deg. Misalnya, <code>hsl(360deg 100% 50%)</code> diperlakukan sebagai warna yang sama dengan <code>hsl(0deg 100% 50%)</code>, dan <code>hsl(-120deg 100% 50%)</code> sebagai warna yang sama dengan <code>hsl(240deg 100% 50%)</code>.</p>

<p>Saturation dan lightness diproses dalam rentang 0% hingga 100%. Jika saturation 0%, warna menjadi abu-abu akromatik tanpa bergantung pada hue. Jika lightness 0%, warna menjadi hitam; jika 100%, menjadi putih.</p>

<h4>Perbedaan antara HSL dan RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> langsung menentukan komponen merah, hijau, dan biru, sehingga dekat dengan tampilan layar dan data gambar. HSL memisahkan hue, saturation, dan lightness, sehingga operasi seperti “membuat lebih terang dengan hue yang sama” atau “menurunkan hanya saturation” menjadi lebih mudah.</p>

<p>Namun, HSL bukan ruang warna yang sepenuhnya seragam secara persepsi. Jika ingin menangani kecerahan visual atau perbedaan warna dengan lebih mudah, ruang warna seperti <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a>, dan <a href="${dc:h(basePath)}/color/oklch">Oklch</a> dapat digunakan.</p>
