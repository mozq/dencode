<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Punycode IDN</h3>
<p>Punycode adalah metode encoding untuk merepresentasikan string Unicode hanya dengan karakter ASCII. Metode ini terutama digunakan untuk mengonversi nama domain internasional (IDN), misalnya nama domain yang berisi karakter Jepang, Tionghoa, Korea, atau huruf Latin beraksen, ke bentuk ASCII yang dapat diproses oleh DNS.</p>
<p>Pada nama domain internasional, setiap label domain dikonversi dengan Punycode, lalu label hasil konversi diberi awalan <code>xn--</code>. Bentuk ASCII ini disebut A-label, sedangkan bentuk Unicode aslinya disebut U-label.</p>

<p>Misalnya, jika “ドメイン.com” dikonversi ke Punycode IDN, hasilnya adalah sebagai berikut.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>Dalam contoh ini, top-level domain <code>com</code> hanya terdiri dari karakter ASCII sehingga tetap sama. Hanya label “ドメイン” yang dikonversi menjadi <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Bentuk Unicode</th><th scope="col">Bentuk Punycode IDN</th><th scope="col">Keterangan</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Nama domain yang berisi karakter Jepang.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Setiap label dikonversi secara terpisah.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Contoh dengan huruf Latin beraksen.</td></tr>
	</table>
</div>

<p>Punycode IDN berbeda dari URL encoding. URL encoding merepresentasikan karakter di dalam URL sebagai urutan byte seperti <code>%E3%81%82</code>, sedangkan Punycode IDN mengonversi label nama domain menjadi label ASCII yang diawali <code>xn--</code>.</p>

<h4>Konversi per label domain</h4>
<p>Nama domain adalah rangkaian label yang dipisahkan oleh titik (<code>.</code>). Punycode IDN tidak mengonversi seluruh nama domain sebagai satu string; setiap label dikonversi secara terpisah.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Label</th><th scope="col">Hasil konversi</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Karena itu, <code>例え.テスト</code> dikonversi menjadi <code>xn--r8jz45g.xn--zckzah</code>.</p>
