<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang MD2</h3>
<p>MD2 adalah fungsi hash yang menghasilkan nilai hash 128 bit dari data dengan panjang berapa pun. Ini adalah algoritma lama dan tidak direkomendasikan untuk penggunaan kriptografis saat ini.</p>
<p>Di DenCode, teks yang dimasukkan diperlakukan sebagai urutan byte dengan encoding karakter yang dipilih, lalu nilai hash MD2 ditampilkan sebagai 32 digit heksadesimal.</p>

<p>Misalnya, nilai hash MD2 untuk "Hello, world!" adalah sebagai berikut.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Karakteristik nilai hash</h4>
<p>MD2 selalu menghasilkan nilai hash yang sama dari input yang sama. Jika input berubah sedikit saja, nilai hash yang dihasilkan berubah secara signifikan.</p>
<p>Fungsi hash adalah fungsi satu arah, sehingga data input asli tidak dapat dipulihkan dari nilai hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Nilai hash MD2</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 kadang digunakan untuk pemeriksaan kompatibilitas, tetapi untuk penggunaan baru pertimbangkan fungsi hash yang lebih baru seperti <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
