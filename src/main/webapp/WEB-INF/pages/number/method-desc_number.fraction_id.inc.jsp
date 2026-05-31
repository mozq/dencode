<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Pecahan</h3>
<p>Pecahan (Fractions) merepresentasikan angka dalam bentuk "pembilang/penyebut" sebagai rasio (hasil bagi) dari pembilang dan penyebut.</p>

<p>Dalam DenCode, angka yang dimasukkan (bilangan bulat atau desimal) dikonversi menjadi pecahan sederhana (pecahan yang tidak dapat disederhanakan lagi).</p>

<p>Contoh konversi pecahan adalah sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Desimal (Input)</th><th>Pecahan (Output)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>Desimal yang diakhiri dengan "..." ditafsirkan sebagai "angka yang terpotong" dan dikonversi berdasarkan aturan berikut:</p>
<ul>
	<li><strong>Jika ada pola berulang (desimal berulang):</strong> Pola berulang di bagian desimal (repetend) secara otomatis dideteksi dan dikonversi menjadi representasi pecahan yang tepat.</li>
	<li><strong>Jika tidak ada pola berulang:</strong> Konversi dilakukan menjadi pecahan desimal terbatas berdasarkan jumlah digit yang dimasukkan.</li>
</ul>

<p>Contoh konversi pecahan desimal yang diakhiri dengan "..." adalah sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Desimal (Input)</th><th>Pecahan (Output)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
