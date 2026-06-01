<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang Nama Warna</h3>
<p>Nama warna adalah cara merepresentasikan warna menggunakan named color yang didefinisikan di CSS. Karena warna dapat ditentukan dengan kata kunci seperti <code>red</code>, <code>blue</code>, dan <code>orange</code>, warna yang umum digunakan di HTML dan CSS dapat ditulis dengan mudah dibaca.</p>

<p>Misalnya, warna utama seperti merah dapat direpresentasikan sebagai berikut.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Warna</th><th>Nama warna</th><th>Notasi RGB</th><th>Notasi heksadesimal</th></tr>
		</thead>
		<tbody>
			<tr><td>Merah</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lime</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Biru</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Putih</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Hitam</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Oranye</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Transparan</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> adalah nama warna khusus yang merepresentasikan hitam transparan.</p>

<p>Nama warna, kecuali <code>transparent</code>, tidak memiliki informasi transparansi. Di DenCode, jika warna dengan transparansi dapat direpresentasikan sebagai named color, warna tersebut ditampilkan dengan sintaks warna relatif CSS. Misalnya, <code>red</code> semi-transparan direpresentasikan sebagai <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Perbedaan antara nama warna dan RGB</h4>
<p>Nama warna merepresentasikan warna umum dengan kata kunci yang mudah dibaca. Sebaliknya, <a href="${dc:h(basePath)}/color/rgb">RGB</a> menentukan nilai komponen merah, hijau, dan biru, sehingga dapat merepresentasikan lebih banyak warna secara numerik. Nama warna sering digunakan saat keterbacaan di CSS atau HTML diprioritaskan, sedangkan notasi RGB sering digunakan untuk spesifikasi warna detail atau konversi warna.</p>
