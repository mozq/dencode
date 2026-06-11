<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang pengurutan baris</h3>
<p>Pengurutan baris menyusun ulang teks multi-baris berdasarkan baris. Baris input dapat diurutkan naik, turun, atau dibalik sesuai urutan saat ini.</p>
<p>Untuk urutan naik dan turun, setiap baris penuh dibandingkan sebagai string Unicode. Untuk urutan terbalik, isi tiap baris tidak diubah; hanya urutan baris dari atas ke bawah yang dibalik.</p>

<p>Misalnya, jika teks berikut diurutkan naik:</p>

<pre>
banana
apple
orange
</pre>

<p>Hasilnya adalah:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Urutan</th><th scope="col">Deskripsi</th><th scope="col">Contoh konversi</th></tr>
		<tr><td>Naik</td><td>Mengurutkan baris dari nilai string Unicode yang lebih kecil ke yang lebih besar.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Turun</td><td>Mengurutkan baris dari nilai string Unicode yang lebih besar ke yang lebih kecil.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Terbalik</td><td>Membalik urutan baris input.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Huruf besar dan kecil, angka, simbol, serta karakter non-Latin dibandingkan sebagai karakter Unicode. Jadi, hasilnya didasarkan pada perbandingan string, bukan urutan kamus bahasa alami atau nilai angka.</p>
