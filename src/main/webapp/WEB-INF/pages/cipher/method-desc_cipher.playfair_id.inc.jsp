<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Sandi Playfair</h3>
<p>Sandi Playfair adalah sandi substitusi yang mengganti pasangan huruf dengan menggunakan tabel huruf 5×5.</p>

<p>Misalnya, jika kuncinya adalah "SECRET" dan plaintext-nya "HELLO", hasil enkripsinya adalah sebagai berikut.</p>

<pre>
Plaintext : HELLO
Ciphertext: ISKYIQ
</pre>

<p>Dalam enkripsi, plaintext terlebih dahulu dibagi menjadi pasangan huruf. Jika satu pasangan berisi huruf yang sama, seperti "LL", huruf bantu "X" disisipkan di antaranya. Jika tersisa satu huruf di akhir, huruf bantu "X" juga ditambahkan.</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Berikutnya, siapkan tabel sandi 5×5 dengan total 25 kotak. Karena alfabet memiliki 26 huruf, biasanya "I=J" ditempatkan dalam kotak yang sama.</p>
<p>Pertama, tuliskan huruf-huruf kunci ke dalam tabel tanpa duplikasi. Dengan kunci "SECRET", huruf "E" yang kedua dilewati. Lalu tuliskan "ABCDEFGHIKLMNOPQRSTUVWXYZ", dengan melewati huruf yang sudah ada dalam kunci. Dengan begitu, terbentuk tabel 5×5 tanpa huruf ganda.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Dengan tabel ini, setiap pasangan huruf dienkripsi sesuai aturan berikut. Metodenya bergantung pada posisi kedua huruf di dalam tabel.</p>

<ul>
	<li>Jika berada pada baris yang sama: setiap huruf diganti dengan huruf di sebelah kanannya. Jika berada di ujung kanan, kembali ke ujung kiri.</li>
	<li>Jika berada pada kolom yang sama: setiap huruf diganti dengan huruf di bawahnya. Jika berada di bagian bawah, kembali ke bagian atas.</li>
	<li>Jika berada pada baris dan kolom yang berbeda: bayangkan persegi panjang yang sudutnya mencakup kedua huruf tersebut, lalu ganti dengan huruf di dua sudut lainnya.</li>
</ul>

<pre>
S <strong>E</strong>
A B
<strong>H</strong> I

K <strong>L</strong>
P Q
<strong>X</strong> Y

I K <strong>L</strong>
<strong>O</strong> P Q
</pre>

<pre>
HE LX LO
↓
IS KY IQ
</pre>

<p>Dalam dekripsi, ciphertext diproses per pasangan menggunakan tabel huruf yang sama. Perhatikan bahwa huruf bantu "X" tidak dihapus secara otomatis.</p>

<pre>
Ciphertext : ISKYIQ
Plaintext  : HEL<strong>X</strong>LO
</pre>
