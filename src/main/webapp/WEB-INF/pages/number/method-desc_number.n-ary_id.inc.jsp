<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Angka Posisional (Basis N)</h3>
<p>Angka posisional basis N (N-ary) merepresentasikan nilai numerik dalam notasi posisional menggunakan N simbol (biasanya angka "0–9" dan huruf "A–Z").</p>

<p>DenCode mendukung basis dari 2 hingga 36. Untuk basis yang lebih besar dari 10 (11 hingga 36), huruf alfabet yang dimulai dari "A" digunakan secara berurutan untuk merepresentasikan nilai 10 atau lebih. Misalnya, nilai 10 hingga 15 direpresentasikan dengan huruf A hingga F pada basis 16, dan nilai 10 hingga 35 direpresentasikan dengan A hingga Z pada basis 36.</p>

<p>Contoh konversi pada masing-masing basis adalah sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Desimal</th><th>Biner</th><th>Oktal</th><th>Heksadesimal</th><th>Basis 32</th><th>Basis 36</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td><td class="text-right">8</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td><td class="text-right">9</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td><td class="text-right">A</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td><td class="text-right">F</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">G</td><td class="text-right">G</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td><td class="text-right">H</td><td class="text-right">H</td></tr>
			<tr><td class="text-right">31</td><td class="text-right">11111</td><td class="text-right">37</td><td class="text-right">1F</td><td class="text-right">V</td><td class="text-right">V</td></tr>
			<tr><td class="text-right">32</td><td class="text-right">100000</td><td class="text-right">40</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">W</td></tr>
			<tr><td class="text-right">35</td><td class="text-right">100011</td><td class="text-right">43</td><td class="text-right">23</td><td class="text-right">13</td><td class="text-right">Z</td></tr>
			<tr><td class="text-right">36</td><td class="text-right">100100</td><td class="text-right">44</td><td class="text-right">24</td><td class="text-right">14</td><td class="text-right">10</td></tr>
		</tbody>
	</table>
</div>

<p>Selain itu, nilai pecahan setelah titik desimal dikonversi dalam basis N sebagai nilai tempat N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... Jika nilai pecahan tidak dapat direpresentasikan secara tepat sebagai jumlah dari N<sup>-n</sup>, konversi ke basis N tidak akan lengkap dan terjadi kesalahan presisi. Dalam kasus tersebut, DenCode menyingkat representasi dengan menambahkan "..." di akhir.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Desimal</th><th>Biner</th><th>Oktal</th><th>Heksadesimal</th><th>Basis 32</th><th>Basis 36</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
