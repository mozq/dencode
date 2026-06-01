<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang Warna CMYK</h3>
<p>Warna CMYK adalah model warna yang merepresentasikan warna dengan empat komponen: sian, magenta, kuning, dan hitam (key plate). Model ini terutama digunakan dalam percetakan dan desktop publishing, serta didasarkan pada pencampuran warna subtraktif, yaitu warna dibuat dengan menumpuk tinta.</p>

<p>Dalam CMYK, setiap komponen dinyatakan dalam rentang 0% sampai 100%. Secara umum, <code>C</code>, <code>M</code>, dan <code>Y</code> mewakili rona warna, sedangkan <code>K</code> mewakili jumlah hitam. Jika semua komponen 0%, warnanya putih; jika <code>K</code> 100%, warnanya mendekati hitam.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Notasi CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Sian</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Kuning</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Putih</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Hitam</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Untuk menyertakan transparansi, tambahkan nilai alfa. Misalnya, merah semi-transparan dapat direpresentasikan sebagai <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Profil warna</h4>
<p>DenCode memungkinkan Anda memilih beberapa profil warna. Profil warna yang didukung tercantum di bawah ini.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Warna CMYK</caption>
		<thead>
			<tr><th>Profil warna</th><th>Contoh notasi CMYK</th><th>Karakteristik</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Konversi RGB dan CMYK sederhana. Tidak bergantung pada kondisi cetak atau profil ICC tertentu.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Profil warna CMYK yang mendekati U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Konversi CMYK yang menggunakan profil ICC SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Konversi CMYK yang menggunakan profil ICC GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Konversi CMYK yang menggunakan profil ICC FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Profil warna CMYK yang mendekati FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Profil warna CMYK yang mendekati FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>Warna CMYK dengan “profil ICC” atau “profil warna perkiraan” direpresentasikan dalam format ruang warna kustom CSS <code>color(--profile C% M% Y% K%)</code>. Untuk menggunakannya dalam CSS sebenarnya, tentukan profil ICC yang sesuai dengan <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Profil warna perkiraan menghitung warna CMYK perkiraan berdasarkan Characterization data yang dipublikasikan. Karena itu, meskipun profil ICC yang mirip digunakan dengan <code>@color-profile</code> di CSS, warna yang ditampilkan dapat sedikit berbeda.</p>

<h4>Perbedaan antara CMYK dan RGB</h4>
<p>CMYK adalah model warna subtraktif untuk tinta cetak. Sebaliknya, <a href="${dc:h(basePath)}/color/rgb">RGB</a> adalah model warna aditif untuk cahaya, seperti pada layar. Bahkan untuk warna yang tampak sama, nilai komponen CMYK dan RGB dapat sangat berbeda.</p>
