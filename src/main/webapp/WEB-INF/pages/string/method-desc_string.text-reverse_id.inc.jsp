<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang teks terbalik</h3>
<p>Teks terbalik membalik urutan karakter dalam string input. Seluruh string dibaca dari karakter terakhir hingga karakter pertama.</p>

<p>Misalnya, jika "Hello, world!" dibalik, hasilnya adalah:</p>

<pre>!dlrow ,olleH</pre>

<p>Dalam teks multi-baris, karakter baris baru juga dianggap sebagai bagian dari string. Karena itu, seluruh konten ikut dibalik, termasuk urutan baris.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">Setelah Pembalikan</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Konversi ini tidak menyusun ulang kata sambil mempertahankan makna kalimat. Konversi ini hanya membalik urutan karakter yang dimasukkan.</p>
