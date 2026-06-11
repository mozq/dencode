<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang SHA-384</h3>
<p>SHA-384 adalah fungsi hash kriptografis yang menghasilkan nilai hash 384 bit dari data dengan panjang berapa pun. Algoritma ini merupakan bagian dari keluarga SHA-2 dan menghasilkan nilai hash yang lebih panjang daripada <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>Di DenCode, teks yang dimasukkan diperlakukan sebagai urutan byte dengan encoding karakter yang dipilih, lalu nilai hash SHA-384 ditampilkan sebagai 96 digit heksadesimal.</p>

<p>Misalnya, nilai hash SHA-384 untuk "Hello, world!" adalah sebagai berikut.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Karakteristik nilai hash</h4>
<p>SHA-384 selalu menghasilkan nilai hash yang sama dari input yang sama. Jika input berubah sedikit saja, nilai hash yang dihasilkan berubah secara signifikan.</p>
<p>Fungsi hash adalah fungsi satu arah, sehingga data input asli tidak dapat dipulihkan dari nilai hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Nilai hash SHA-384</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
