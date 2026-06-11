<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang SHA-1</h3>
<p>SHA-1 adalah fungsi hash kriptografis yang menghasilkan nilai hash 160 bit dari data dengan panjang berapa pun. Dulu digunakan secara luas, tetapi kini memiliki kelemahan pada ketahanan collision dan tidak direkomendasikan untuk penggunaan kriptografis baru.</p>
<p>Di DenCode, teks yang dimasukkan diperlakukan sebagai urutan byte dengan encoding karakter yang dipilih, lalu nilai hash SHA-1 ditampilkan sebagai 40 digit heksadesimal.</p>

<p>Misalnya, nilai hash SHA-1 untuk "Hello, world!" adalah sebagai berikut.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Karakteristik nilai hash</h4>
<p>SHA-1 selalu menghasilkan nilai hash yang sama dari input yang sama. Jika input berubah sedikit saja, nilai hash yang dihasilkan berubah secara signifikan.</p>
<p>Fungsi hash adalah fungsi satu arah, sehingga data input asli tidak dapat dipulihkan dari nilai hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Nilai hash SHA-1</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>SHA-1 kadang digunakan untuk kompatibilitas dengan sistem yang sudah ada, tetapi untuk penggunaan baru pertimbangkan <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> atau fungsi hash yang lebih kuat.</p>
