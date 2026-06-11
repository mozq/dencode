<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang CRC32</h3>
<p>CRC32 adalah metode deteksi kesalahan yang menghasilkan nilai pemeriksaan 32 bit dari data dengan panjang berapa pun. CRC32 digunakan dalam transfer file, format kompresi, dan konteks serupa untuk memeriksa apakah data rusak.</p>
<p>Di DenCode, teks yang dimasukkan diperlakukan sebagai urutan byte dengan encoding karakter yang dipilih, lalu nilai CRC32 ditampilkan dalam heksadesimal.</p>

<p>Misalnya, CRC32 untuk "Hello, world!" adalah sebagai berikut.</p>

<pre>ebe6c6e6</pre>

<h4>Karakteristik CRC32</h4>
<p>CRC32 cocok untuk mendeteksi kerusakan data yang tidak disengaja. Namun, karena bukan fungsi hash kriptografis, CRC32 tidak cocok untuk penggunaan yang memerlukan keamanan terhadap perubahan.</p>
<p>CRC32 selalu menghasilkan nilai yang sama dari input yang sama. Ketika input berubah, nilai yang dihasilkan juga berubah. Namun, data input asli tidak dapat dipulihkan dari nilai CRC32.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
