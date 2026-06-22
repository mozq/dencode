<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Sandi Bacon</h3>
<p>Sandi Bacon adalah sandi substitusi yang merepresentasikan setiap huruf dengan pola biner lima simbol, seperti A/B.</p>

<pre>
Teks asli : HELLO, WORLD!
Teks sandi: AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Sandi Bacon asli menggunakan alfabet 24 huruf, dengan I/J dan U/V dianggap sebagai huruf yang sama. Versi kedua memberi kode unik untuk setiap huruf dari A sampai Z. DenCode mendukung kedua alfabet tersebut.</p>

<h4>Alfabet asli 24 huruf</h4>
<p>Dalam alfabet asli, I dan J berbagi satu kode, begitu juga U dan V. Saat dienkode, J diperlakukan sebagai I, dan V diperlakukan sebagai U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Versi kedua: alfabet 26 huruf</h4>
<p>Dalam versi kedua, setiap huruf dari A sampai Z memiliki kode Baconian sendiri, termasuk I, J, U, dan V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Karakter yang tidak didukung oleh alfabet yang dipilih akan dipertahankan apa adanya.</p>

<h4>Penggunaan sebagai steganografi</h4>
<p>Sandi Bacon dirancang oleh Francis Bacon pada tahun 1605. Jika kelompok A/B lima karakter ditulis langsung, sandi ini bekerja sebagai sandi substitusi. Jika pilihan A/B disembunyikan dalam tampilan teks lain, sandi ini juga dapat digunakan sebagai sandi penyembunyian atau bentuk steganografi.</p>
<p>Untuk penggunaan steganografi, pesan rahasia terlebih dahulu diubah menjadi urutan A/B, lalu disiapkan teks samaran yang cukup panjang untuk memuat urutan tersebut. Setiap huruf dalam teks samaran ditulis dengan salah satu dari dua jenis huruf: satu dibaca sebagai A dan yang lain sebagai B. Teks tetap terlihat seperti kalimat biasa, tetapi perbedaan jenis huruf yang dibaca per lima huruf akan mengungkap pesan tersembunyi. Bacon juga menjelaskan alfabet biliteral untuk tulisan tangan, dengan dua bentuk alternatif untuk huruf besar dan huruf kecil.</p>

<p>Misalnya, mengenkripsi “HI” menghasilkan “AABBB ABAAA”. Jika disembunyikan dalam teks samaran “Hello world”, hasilnya seperti ini:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>Dalam contoh ini, huruf normal dibaca sebagai A dan huruf tebal dibaca sebagai B. Teks yang terlihat adalah “Hello world”, tetapi jika hanya perbedaan jenis huruf yang dibaca, hasilnya “AABBB ABAAA”, yang didekode per lima huruf menjadi “HI”.</p>
