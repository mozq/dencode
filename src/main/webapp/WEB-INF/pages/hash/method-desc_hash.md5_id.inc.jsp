<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang MD5</h3>
<p>MD5 adalah fungsi hash yang menghasilkan nilai hash 128 bit dari data dengan panjang berapa pun. Algoritma ini pernah digunakan secara luas, tetapi karena memiliki kelemahan pada ketahanan collision, MD5 tidak direkomendasikan untuk penggunaan kriptografis saat ini.</p>
<p>Di DenCode, teks yang dimasukkan diperlakukan sebagai urutan byte dengan encoding karakter yang dipilih, lalu nilai hash MD5 ditampilkan sebagai 32 digit heksadesimal.</p>

<p>Misalnya, nilai hash MD5 untuk "Hello, world!" adalah sebagai berikut.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Karakteristik nilai hash</h4>
<p>MD5 selalu menghasilkan nilai hash yang sama dari input yang sama. Jika input berubah sedikit saja, nilai hash yang dihasilkan berubah secara signifikan.</p>
<p>Fungsi hash adalah fungsi satu arah, sehingga data input asli tidak dapat dipulihkan dari nilai hash.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Nilai hash MD5</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 kadang ditemukan saat membandingkan checksum lama, tetapi untuk penggunaan yang memerlukan keamanan seperti deteksi perubahan atau tanda tangan, pertimbangkan <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> atau fungsi hash yang lebih baru.</p>
