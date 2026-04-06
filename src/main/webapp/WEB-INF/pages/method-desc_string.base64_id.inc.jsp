<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Base64</h3>
<p>Base64 adalah skema pengkodean yang menggunakan karakter ASCII 7-bit yang dapat dicetak. Ini terutama digunakan dalam email untuk mentransfer data 8-bit melalui jalur data 7-bit.</p>
<p>Dalam Base64, data dibagi menjadi 6 bit masing-masing dan dikonversi menjadi karakter alfanumerik (A-Z, a-z, 0-9) dan simbol (+, /). Konversi dilakukan setiap 4 karakter, dan jika kurang dari 4 karakter di akhir, dipadding dengan tanda sama dengan (=).</p>
<p>Selain itu, RFC 1421 (PEM: Privacy-Enhanced Mail) menetapkan baris baru setiap 64 karakter, dan RFC 2045 (MIME) setiap 76 karakter.</p>

<p>Tabel konversi ke karakter Base64 adalah sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>6 bit data</th><th>Karakter Base64</th></tr>
		<tr><td>000000</td><td>A</td></tr>
		<tr><td>000001</td><td>B</td></tr>
		<tr><td>000010</td><td>C</td></tr>
		<tr><td>000011</td><td>D</td></tr>
		<tr><td>000100</td><td>E</td></tr>
		<tr><td>000101</td><td>F</td></tr>
		<tr><td>000110</td><td>G</td></tr>
		<tr><td>000111</td><td>H</td></tr>
		<tr><td>001000</td><td>I</td></tr>
		<tr><td>001001</td><td>J</td></tr>
		<tr><td>001010</td><td>K</td></tr>
		<tr><td>001011</td><td>L</td></tr>
		<tr><td>001100</td><td>M</td></tr>
		<tr><td>001101</td><td>N</td></tr>
		<tr><td>001110</td><td>O</td></tr>
		<tr><td>001111</td><td>P</td></tr>
		<tr><td>010000</td><td>Q</td></tr>
		<tr><td>010001</td><td>R</td></tr>
		<tr><td>010010</td><td>S</td></tr>
		<tr><td>010011</td><td>T</td></tr>
		<tr><td>010100</td><td>U</td></tr>
		<tr><td>010101</td><td>V</td></tr>
		<tr><td>010110</td><td>W</td></tr>
		<tr><td>010111</td><td>X</td></tr>
		<tr><td>011000</td><td>Y</td></tr>
		<tr><td>011001</td><td>Z</td></tr>
		<tr><td>011010</td><td>a</td></tr>
		<tr><td>011011</td><td>b</td></tr>
		<tr><td>011100</td><td>c</td></tr>
		<tr><td>011101</td><td>d</td></tr>
		<tr><td>011110</td><td>e</td></tr>
		<tr><td>011111</td><td>f</td></tr>
		<tr><td>100000</td><td>g</td></tr>
		<tr><td>100001</td><td>h</td></tr>
		<tr><td>100010</td><td>i</td></tr>
		<tr><td>100011</td><td>j</td></tr>
		<tr><td>100100</td><td>k</td></tr>
		<tr><td>100101</td><td>l</td></tr>
		<tr><td>100110</td><td>m</td></tr>
		<tr><td>100111</td><td>n</td></tr>
		<tr><td>101000</td><td>o</td></tr>
		<tr><td>101001</td><td>p</td></tr>
		<tr><td>101010</td><td>q</td></tr>
		<tr><td>101011</td><td>r</td></tr>
		<tr><td>101100</td><td>s</td></tr>
		<tr><td>101101</td><td>t</td></tr>
		<tr><td>101110</td><td>u</td></tr>
		<tr><td>101111</td><td>v</td></tr>
		<tr><td>110000</td><td>w</td></tr>
		<tr><td>110001</td><td>x</td></tr>
		<tr><td>110010</td><td>y</td></tr>
		<tr><td>110011</td><td>z</td></tr>
		<tr><td>110100</td><td>0</td></tr>
		<tr><td>110101</td><td>1</td></tr>
		<tr><td>110110</td><td>2</td></tr>
		<tr><td>110111</td><td>3</td></tr>
		<tr><td>111000</td><td>4</td></tr>
		<tr><td>111001</td><td>5</td></tr>
		<tr><td>111010</td><td>6</td></tr>
		<tr><td>111011</td><td>7</td></tr>
		<tr><td>111100</td><td>8</td></tr>
		<tr><td>111101</td><td>9</td></tr>
		<tr><td>111110</td><td>+</td></tr>
		<tr><td>111111</td><td>/</td></tr>
	</table>
</div>

<p>Sebagai contoh, jika Anda mengonversi "Hello" dengan Base64:</p>

<p>1. Ubah ke representasi biner.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (Untuk US-ASCII / UTF-8)</pre>

<p>2. Bagi setiap 6 bit. Jika kurang dari 6 bit, padding dengan "0" di akhir.</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Konversi ke karakter menggunakan tabel konversi. Konversi setiap 4 karakter, dan jika kurang dari 4 karakter, padding dengan "=" di akhir.</p>

<pre>SGVs bG8=</pre>

<p>4. Gabungkan semua karakter untuk mendapatkan hasil konversi Base64.</p>

<pre>SGVsbG8=</pre>


<h4>Format Header Pesan MIME Email (RFC 2047)</h4>
<p>DenCode juga mendukung dekode format header pesan MIME (RFC 2047) seperti di bawah ini. Format ini digunakan ketika subjek atau tujuan email berisi karakter non-ASCII.</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>Hasil setelah dekode adalah sebagai berikut.</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) adalah format token yang merepresentasikan data JSON secara ringkas menggunakan encoding Base64url. Format ini banyak digunakan untuk autentikasi dan otorisasi dalam aplikasi web dan telah distandarkan dalam RFC 7519.</p>

<p>JWT terdiri dari tiga elemen yang dipisahkan oleh titik (.).</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>Peran masing-masing elemen adalah sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Elemen</th><th>Deskripsi</th></tr>
		<tr><td>Header</td><td>Objek JSON yang berisi metadata seperti jenis token (typ) dan algoritma tanda tangan (alg)</td></tr>
		<tr><td>Payload</td><td>Objek JSON yang berisi informasi seperti ID pengguna dan waktu kedaluwarsa</td></tr>
		<tr><td>Signature</td><td>Data tanda tangan yang digunakan untuk mendeteksi pemalsuan header dan payload</td></tr>
	</table>
</div>

<p>Header dan payload masing-masing dienkode dalam Base64url. Base64url mengganti "+" dengan "-" dan "/" dengan "_", serta menghilangkan padding "=" dibandingkan dengan Base64 standar (RFC 4648). Hal ini memungkinkan penyertaan yang aman dalam URL dan header HTTP.</p>

<p>Misalnya, mendekode JWT berikut menghasilkan header dan payload dalam format JSON.</p>

<pre>eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c</pre>

<pre>
{
  "alg": "HS256",
  "typ": "JWT"
}
{
  "sub": "1234567890",
  "name": "John Doe",
  "iat": 1516239022
}
</pre>

<p>Field (klaim) utama yang terdapat dalam header dan payload adalah sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Field</th><th>Nama</th><th>Deskripsi</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>Algoritma yang digunakan untuk penandatanganan atau enkripsi (mis. HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>Jenis token (biasanya "JWT")</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>Tipe konten payload ("JWT" untuk JWT bersarang)</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>Pengidentifikasi kunci yang digunakan untuk verifikasi tanda tangan</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>URL yang merujuk ke JWK Set yang digunakan untuk verifikasi tanda tangan</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>URL yang merujuk ke rantai sertifikat X.509 yang digunakan untuk verifikasi tanda tangan</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>Sidik jari SHA-1 dari sertifikat X.509 yang digunakan untuk verifikasi tanda tangan</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>Field</th><th>Nama</th><th>Deskripsi</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>Penerbit token</td></tr>
		<tr><td>sub</td><td>Subject</td><td>Subjek token (mis. ID pengguna)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>Penerima token</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>Waktu kedaluwarsa token (Unix timestamp)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>Waktu sebelum token tidak valid (Unix timestamp)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>Waktu penerbitan token (Unix timestamp)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>Pengidentifikasi unik token</td></tr>
	</table>
</div>
