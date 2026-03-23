<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Kode Morse</h3>
<p>
Kode Morse (Morse code) adalah sistem pengkodean telegrafi yang merepresentasikan huruf dan simbol menggunakan kombinasi sinyal pendek (Dit) dan sinyal panjang (Dah).
</p>

<p>
DenCode menggunakan simbol berikut untuk merepresentasikan kode Morse.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Nama</th><th>Simbol</th></tr>
		<tr><td>Dit (titik pendek)</td><td><code>.</code> (Titik)</td></tr>
		<tr><td>Dah (titik panjang)</td><td><code>-</code> (Tanda hubung)</td></tr>
		<tr><td>Spasi antar huruf (Letter space)</td><td><code> </code> (Spasi)</td></tr>
		<tr><td>Spasi antar kata (Word space)</td><td><code>/</code> (Garis miring)</td></tr>
	</table>
</div>

<p>
Hasil konversi "<var>MORSE CODE</var>" ke kode Morse internasional adalah sebagai berikut.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Waktu sinyal</h4>
<p>
Saat mengirimkan kode Morse, terdapat rasio ketat yang ditetapkan untuk panjang dit dan dah serta interval di antara keduanya.
Dengan panjang dit sebagai 1 unit, panjang setiap elemen adalah sebagai berikut.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Elemen</th><th>Panjang</th><th>Deskripsi</th></tr>
		<tr><td>Dit</td><td>1 unit</td><td>Nada sinyal pendek</td></tr>
		<tr><td>Dah</td><td>3 unit</td><td>Nada sinyal 3 kali panjang dit</td></tr>
		<tr><td>Jarak intra-karakter</td><td>1 unit</td><td>Keheningan antara dit dan dah dalam karakter yang sama</td></tr>
		<tr><td>Spasi antar huruf</td><td>3 unit</td><td>Keheningan antara karakter yang berbeda</td></tr>
		<tr><td>Spasi antar kata</td><td>7 unit</td><td>Keheningan antara kata yang berbeda</td></tr>
	</table>
</div>

<p>
Misalnya, saat mengirimkan "<var>MORSE CODE</var>", sinyal dikirim dengan waktu berikut.
<code>▄</code> (<code>1</code>) mewakili nada sinyal, dan <code> </code> (<code>0</code>) mewakili keheningan.
</p>
<pre>
M    : ▄▄▄ ▄▄▄         (1110111)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
R    : ▄ ▄▄▄ ▄         (1011101)
S    : ▄ ▄ ▄           (10101)
E    : ▄               (1)
     :                 (0000000)
C    : ▄▄▄ ▄ ▄▄▄ ▄     (11101011101)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
D    : ▄▄▄ ▄ ▄         (1110101)
E    : ▄               (1)

   M           O           R        S     E            C             O           D      E
▄▄▄ ▄▄▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄ ▄▄▄ ▄   ▄ ▄ ▄   ▄       ▄▄▄ ▄ ▄▄▄ ▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄▄▄ ▄ ▄   ▄
11101110001110111011100010111010001010100010000000111010111010001110111011100011101010001
</pre>

<p>
Dengan cara ini, semua panjang ditentukan sebagai rasio bilangan bulat berdasarkan 1 unit dit, sehingga rasio yang tepat dapat dijaga meskipun kecepatan transmisi berubah.
Kecepatan komunikasi umumnya dinyatakan dalam WPM (Words Per Minute), yang didefinisikan oleh berapa kali kata referensi "PARIS" dapat dikirimkan per menit.
Misalnya, pada 20 WPM, satu unit dit adalah sekitar 60 milidetik.
</p>


<h3>Kode Morse internasional</h3>
<p>
Kode Morse internasional adalah kode Morse standar dunia untuk merepresentasikan huruf, angka, dan simbol.
Ditetapkan oleh standar International Telecommunication Union (ITU) (ITU-R M.1677-1).
</p>

<h4>Alfabet</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>A</th><td>.-</td><th>B</th><td>-...</td><th>C</th><td>-.-.</td><th>D</th><td>-..</td></tr>
		<tr><th>E</th><td>.</td><th>F</th><td>..-.</td><th>G</th><td>--.</td><th>H</th><td>....</td></tr>
		<tr><th>I</th><td>..</td><th>J</th><td>.---</td><th>K</th><td>-.-</td><th>L</th><td>.-..</td></tr>
		<tr><th>M</th><td>--</td><th>N</th><td>-.</td><th>O</th><td>---</td><th>P</th><td>.--.</td></tr>
		<tr><th>Q</th><td>--.-</td><th>R</th><td>.-.</td><th>S</th><td>...</td><th>T</th><td>-</td></tr>
		<tr><th>U</th><td>..-</td><th>V</th><td>...-</td><th>W</th><td>.--</td><th>X</th><td>-..-</td></tr>
		<tr><th>Y</th><td>-.--</td><th>Z</th><td>--..</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>

<h4>Angka</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Simbol</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Kode perluasan</h4>
<p>
Di antara karakter dengan tanda diakritik, hanya "É" yang ditetapkan oleh International Telecommunication Union (ITU). Semua kode lainnya didefinisikan sebagai "kode perluasan" yang ditetapkan oleh otoritas nasional atau berdasarkan konvensi.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>À, Å</th><td>.--.-</td><th>Ä, Æ, Ą</th><td>.-.-</td><th>Ć, Ĉ, Ç</th><td>-.-..</td><th>É, Ę, Đ</th><td>..-..</td></tr>
		<tr><th>Ð</th><td>..--.</td><th>È, Ł</th><td>.-..-</td><th>Ĝ</th><td>--.-.</td><th>Ĥ, Š</th><td>----</td></tr>
		<tr><th>Ĵ</th><td>.---.</td><th>Ń, Ñ</th><td>--.--</td><th>Ó, Ö, Ø</th><td>---.</td><th>Ś</th><td>...-...</td></tr>
		<tr><th>Ŝ</th><td>...-.</td><th>Þ</th><td>.--..</td><th>Ü, Ŭ</th><td>..--</td><th>Ź</th><td>--..-.</td></tr>
		<tr><th>Ż</th><td>--..-</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Kode Morse Jepang (kode Wabun)</h3>
<p>
Kode Morse Jepang adalah sistem kode Morse yang dirancang untuk merepresentasikan karakter Hiragana dan Katakana Jepang.
Urutan karakter didasarkan pada urutan tradisional "Iroha".
</p>

<h4>Hiragana / Katakana (urutan Iroha)</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>イ</th><td>.-</td><th>ロ</th><td>.-.-</td><th>ハ</th><td>-...</td><th>ニ</th><td>-.-.</td><th>ホ</th><td>-..</td></tr>
		<tr><th>ヘ</th><td>.</td><th>ト</th><td>..-..</td><th>チ</th><td>..-.</td><th>リ</th><td>--.</td><th>ヌ</th><td>....</td></tr>
		<tr><th>ル</th><td>-.--.</td><th>ヲ</th><td>.---</td><th>ワ</th><td>-.-</td><th>カ</th><td>.-..</td><th>ヨ</th><td>--</td></tr>
		<tr><th>タ</th><td>-.</td><th>レ</th><td>---</td><th>ソ</th><td>---.</td><th>ツ</th><td>.--.</td><th>ネ</th><td>--.-</td></tr>
		<tr><th>ナ</th><td>.-.</td><th>ラ</th><td>...</td><th>ム</th><td>-</td><th>ウ</th><td>..-</td><th>ヰ</th><td>.-..-</td></tr>
		<tr><th>ノ</th><td>..--</td><th>オ</th><td>.-...</td><th>ク</th><td>...-</td><th>ヤ</th><td>.--</td><th>マ</th><td>-..-</td></tr>
		<tr><th>ケ</th><td>-.--</td><th>フ</th><td>--..</td><th>コ</th><td>----</td><th>エ</th><td>-.---</td><th>テ</th><td>.-.--</td></tr>
		<tr><th>ア</th><td>--.--</td><th>サ</th><td>-.-.-</td><th>キ</th><td>-.-..</td><th>ユ</th><td>-..--</td><th>メ</th><td>-...-</td></tr>
		<tr><th>ミ</th><td>..-.-</td><th>シ</th><td>--.-.</td><th>ヱ</th><td>.--..</td><th>ヒ</th><td>--..-</td><th>モ</th><td>-..-.</td></tr>
		<tr><th>セ</th><td>.---.</td><th>ス</th><td>---.-</td><th>ン</th><td>.-.-.</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>゛ (Dakuten / Tanda suara bergetar)</th><td>..</td><th>゜ (Handakuten / Tanda suara semi-bergetar)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Dakuten (゛) dan Handakuten (゜) memiliki kode independen tersendiri. Dinyatakan dengan menempatkan kode Dakuten (<code>..</code>) atau kode Handakuten (<code>..--.</code>) setelah kode karakter dasar, dipisahkan oleh spasi antar huruf.
Misalnya, "ガ" adalah kombinasi dari "カ (<code>.-..</code>)" dan "゛ (<code>..</code>)", menghasilkan "<code>.-.. ..</code>".
</p>

<h4>Angka</h4>
<p>
Sama dengan kode Morse internasional.
</p>

<h4>Simbol</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Kode Morse Rusia (Sirilik)</h3>
<p>
Ini adalah sistem kode Morse yang dirancang untuk merepresentasikan karakter Sirilik yang digunakan dalam bahasa Rusia dan bahasa lainnya.
Kode tidak disusun dalam urutan alfabet Sirilik, tetapi diberi kode yang sama dengan huruf Latin yang bersesuaian (kode Morse internasional) berdasarkan pengucapannya.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>А</th><td>.-</td><th>Б</th><td>-...</td><th>В</th><td>.--</td><th>Г</th><td>--.</td></tr>
		<tr><th>Д</th><td>-..</td><th>Е</th><td>.</td><th>Ж</th><td>...-</td><th>З</th><td>--..</td></tr>
		<tr><th>И</th><td>..</td><th>Й</th><td>.---</td><th>К</th><td>-.-</td><th>Л</th><td>.-..</td></tr>
		<tr><th>М</th><td>--</td><th>Н</th><td>-.</td><th>О</th><td>---</td><th>П</th><td>.--.</td></tr>
		<tr><th>Р</th><td>.-.</td><th>С</th><td>...</td><th>Т</th><td>-</td><th>У</th><td>..-</td></tr>
		<tr><th>Ф</th><td>..-.</td><th>Х</th><td>....</td><th>Ц</th><td>-.-.</td><th>Ч</th><td>---.</td></tr>
		<tr><th>Ш</th><td>----</td><th>Щ</th><td>--.-</td><th>Ъ</th><td>--.--</td><th>Ы</th><td>-.--</td></tr>
		<tr><th>Ь</th><td>-..-</td><th>Э</th><td>..-..</td><th>Ю</th><td>..--</td><th>Я</th><td>.-.-</td></tr>
	</table>
</div>

<h4>Angka</h4>
<p>
Sama dengan kode Morse internasional.
</p>

<h4>Simbol</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Sejarah kode Morse</h3>
<p>
Kode Morse dikembangkan pada tahun 1830-an oleh penemu Amerika Samuel Morse dan Alfred Vail untuk mesin telegraf awal.
Kode Morse pertama hanya mengirimkan angka, yang kemudian diubah menjadi kata menggunakan kamus di sisi penerima. Kemudian, Vail memperluas sistem untuk menyertakan alfabet seperti yang kita kenal saat ini.
Huruf yang lebih sering digunakan (misalnya <code>E</code>) diberi kode yang lebih pendek (<code>.</code>), sedangkan huruf yang jarang digunakan (misalnya <code>Q</code>) diberi kode yang lebih panjang (<code>--.-</code>), mengoptimalkan efisiensi komunikasi.
</p>

<p>
Selanjutnya, didorong oleh permintaan komunikasi internasional, terutama di Eropa, penugasan huruf direvisi, berkembang menjadi "Kode Morse Internasional" yang digunakan di seluruh dunia saat ini.
Di Jepang, ketika teknologi telegraf diperkenalkan dari akhir periode Edo hingga awal era Meiji, "kode Morse Wabun" diciptakan dengan menetapkan kode Morse secara unik ke silabari Kana Jepang.
Ciri khas kode Morse Wabun adalah kode ditetapkan mengikuti urutan tradisional "Iroha" ("イロハニホヘト…").
</p>

<p>
Selama bertahun-tahun, kode Morse digunakan secara luas di seluruh dunia dalam komunikasi maritim, penerbangan, militer, dan komersial.
Namun, dengan perkembangan komunikasi satelit dan digital, kode Morse sebagian besar menyelesaikan perannya sebagai sarana resmi komunikasi darurat dengan transisi ke GMDSS (Global Maritime Distress and Safety System) pada tahun 1990-an.
</p>

<p>
Saat ini, kode Morse terutama digunakan dalam radio amatir dan beberapa suar radio navigasi.
Namun, karena memungkinkan komunikasi menggunakan mekanisme on-off yang sangat sederhana — seperti lampu berkedip, nada pendek dan panjang, atau bahkan kedipan mata dan ketukan di dinding — nilainya sebagai sarana komunikasi utama dalam situasi seperti bencana alam tetap sepenuhnya tidak berkurang bahkan di era modern.
Sinyal darurat terkenal "SOS" diadopsi bukan karena makna linguistik apa pun, tetapi karena kombinasi "<code>... --- ...</code>" mudah dikirim dan mudah dikenali.
</p>
