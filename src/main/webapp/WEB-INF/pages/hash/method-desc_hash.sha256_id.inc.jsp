<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang SHA-256</h3>
<p>SHA-256 adalah fungsi hash kriptografis yang menghasilkan nilai hash 256 bit dari data dengan panjang berapa pun. Algoritma ini merupakan bagian dari keluarga SHA-2 dan digunakan untuk deteksi perubahan file, pemeriksaan integritas data, tanda tangan digital, sertifikat, blockchain, dan berbagai keperluan lain.</p>
<p>Di DenCode, teks yang dimasukkan diperlakukan sebagai urutan byte dengan encoding karakter yang dipilih, lalu nilai hash SHA-256 ditampilkan sebagai 64 digit heksadesimal.</p>

<p>Misalnya, nilai hash SHA-256 untuk "Hello, world!" adalah sebagai berikut.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Karakteristik nilai hash</h4>
<p>SHA-256 selalu menghasilkan nilai hash yang sama dari input yang sama. Jika input berubah sedikit saja, nilai hash yang dihasilkan berubah secara signifikan.</p>
<p>Fungsi hash adalah fungsi satu arah, sehingga data input asli tidak dapat dipulihkan dari nilai hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Nilai hash SHA-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
