<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang SHA-3</h3>
<p>SHA-3 adalah fungsi hash kriptografis yang menghasilkan nilai hash dengan panjang tetap dari data dengan panjang berapa pun. SHA-3 mencakup empat fungsi dengan panjang nilai hash yang berbeda: SHA3-224, SHA3-256, SHA3-384, dan SHA3-512.</p>
<p>Di DenCode, teks yang dimasukkan diperlakukan sebagai urutan byte dengan encoding karakter yang dipilih, lalu nilai hash SHA-3 ditampilkan dalam format heksadesimal.</p>

<p>Misalnya, nilai hash SHA3-256 untuk "Hello, world!" adalah sebagai berikut.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Karakteristik nilai hash</h4>
<p>SHA-3 selalu menghasilkan nilai hash yang sama dari input yang sama. Jika input berubah sedikit saja, nilai hash yang dihasilkan berubah secara signifikan.</p>
<p>Fungsi hash adalah fungsi satu arah, sehingga data input asli tidak dapat dipulihkan dari nilai hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Nilai hash SHA3-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Perbedaan dengan SHA-2</h4>
<p>SHA-2 didasarkan pada konstruksi Merkle-Damgård, keluarga desain yang juga mencakup MD5 dan SHA-1. SHA-3 menstandarkan Keccak dan menggunakan konstruksi spons. Karena itu, SHA-256 dan SHA3-256 sama-sama menghasilkan nilai hash 256 bit, tetapi nilai yang dihasilkan berbeda.</p>
