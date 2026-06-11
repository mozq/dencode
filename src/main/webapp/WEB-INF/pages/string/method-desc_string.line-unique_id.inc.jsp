<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang penghapusan baris duplikat</h3>
<p>Fungsi ini menghapus baris yang berulang dari teks multi-baris. Jika baris yang sama muncul lebih dari sekali, hanya kemunculan pertama yang dipertahankan dan kemunculan berikutnya dihapus.</p>
<p>Baris yang tersisa tetap mengikuti urutan aslinya. Teks tidak diurutkan.</p>

<p>Misalnya, jika baris duplikat dihapus dari teks berikut:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>Hasilnya adalah:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Baris Input</th><th scope="col">Hasil</th><th scope="col">Deskripsi</th></tr>
		<tr><td><code>apple</code> (ke-1)</td><td>Tetap</td><td>Ini adalah kemunculan pertama baris tersebut.</td></tr>
		<tr><td><code>banana</code> (ke-1)</td><td>Tetap</td><td>Ini adalah kemunculan pertama baris tersebut.</td></tr>
		<tr><td><code>apple</code> (ke-2)</td><td>Dihapus</td><td>Baris yang sama sudah muncul sebelumnya.</td></tr>
		<tr><td><code>orange</code> (ke-1)</td><td>Tetap</td><td>Ini adalah kemunculan pertama baris tersebut.</td></tr>
		<tr><td><code>banana</code> (ke-2)</td><td>Dihapus</td><td>Baris yang sama sudah muncul sebelumnya.</td></tr>
	</table>
</div>

<p>Deteksi duplikat membandingkan seluruh isi setiap baris. Perbedaan huruf besar dan kecil, spasi di awal atau akhir, serta karakter lebar penuh atau setengah lebar dianggap sebagai teks yang berbeda.</p>
