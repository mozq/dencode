<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Tentang Braille</h3>
<p>
Braille adalah sistem penulisan taktil berupa titik-titik timbul, yang dirancang untuk dibaca dengan ujung jari oleh penyandang tunanetra atau mereka yang memiliki penglihatan rendah.
Braille merepresentasikan karakter atau simbol melalui kombinasi 6 titik yang disusun dalam 3 baris dan 2 kolom (Braille 6 titik).
Sistem ini digunakan secara global, dan aturan penempatan titiknya bervariasi bergantung pada bahasanya.
</p>


<h3>Braille Bahasa Inggris (UEB Grade 1)</h3>
<p>
Alat ini melakukan konversi berdasarkan "Unified English Braille (UEB)" Grade 1 (Braille Bahasa Inggris Tanpa Singkatan: metode yang mengeja huruf alfabet satu per satu), yang menjadi standar yang digunakan di negara-negara berbahasa Inggris. Bentuk yang disingkat (Grade 2) tidak didukung.
</p>

<p>Contoh konversi:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Alfabet</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>a</th><td>⠁</td><th>b</th><td>⠃</td><th>c</th><td>⠉</td><th>d</th><td>⠙</td><th>e</th><td>⠑</td></tr>
		<tr><th>f</th><td>⠋</td><th>g</th><td>⠛</td><th>h</th><td>⠓</td><th>i</th><td>⠊</td><th>j</th><td>⠚</td></tr>
		<tr><th>k</th><td>⠅</td><th>l</th><td>⠇</td><th>m</th><td>⠍</td><th>n</th><td>⠝</td><th>o</th><td>⠕</td></tr>
		<tr><th>p</th><td>⠏</td><th>q</th><td>⠟</td><th>r</th><td>⠗</td><th>s</th><td>⠎</td><th>t</th><td>⠞</td></tr>
		<tr><th>u</th><td>⠥</td><th>v</th><td>⠧</td><th>w</th><td>⠺</td><th>x</th><td>⠭</td><th>y</th><td>⠽</td></tr>
		<tr><th>z</th><td>⠵</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<p>
Untuk huruf kapital, indikator kapital (<code>⠠</code>) ditempatkan sebelum huruf bersangkutan.
Selain itu, dalam kasus huruf kapital berturut-turut, "indikator kapital untuk satu kata (<code>⠠⠠</code>)" menetapkan huruf kapital untuk seluruh kata tersebut; "indikator bagian kapital (<code>⠠⠠⠠</code>)" untuk banyak kata; dan "pengakhir kapital (<code>⠠⠄</code>)" digunakan pada akhir penerapannya.
</p>

<h4>Angka</h4>
<p>
Angka direpresentasikan dengan didahului oleh tanda nomor (<code>⠼</code>). Karakter setelahnya akan diperlakukan sebagai bilangan yang meminjam representasi braille dari huruf 'a' sampai 'j'.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Tanda Nomor</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Jika huruf kecil a-j diletakkan tepat setelah suatu angka, indikator Grade 1 (<code>⠰</code>) perlu disisipkan untuk mencegah kebingungan dengan bilangan.
</p>

<h4>Simbol Utama</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Koma)</th><td>⠂</td><th>. (Titik)</th><td>⠲</td><th>! (Tanda seru)</th><td>⠖</td><th>? (Tanda tanya)</th><td>⠦</td></tr>
		<tr><th>' (Apostrof)</th><td>⠄</td><th>- (Sempang)</th><td>⠤</td><th>; (Titik koma)</th><td>⠆</td><th>: (Titik dua)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Tanda Kutip dan Tanda Kurung</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (T. Kutip Ganda Nondireksional)</th><td>⠦ *** ⠴</td><th>' *** ' (T. Kutip Tunggal Nondireksional)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (T. Kutip Ganda Direksional)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (T. Kutip Tunggal Direksional)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Tanda Kutip Sudut / Guillemet)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Tanda kurung sudut)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Tanda kurung bundar)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Tanda kurung siku)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Tanda kurung kurawal)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Braille Jepang</h3>
<p>
Braille Jepang ditulis dengan terlebih dahulu menerjemahkan kalimat ke dalam kana (suku kata dasar Jepang), kemudian mengonversinya menjadi huruf braille padanannya.
</p>

<p>Contoh konversi:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>Kana</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>ア (a)</th><td>⠁</td><th>イ (i)</th><td>⠃</td><th>ウ (u)</th><td>⠉</td><th>エ (e)</th><td>⠋</td><th>オ (o)</th><td>⠊</td></tr>
		<tr><th>カ (ka)</th><td>⠡</td><th>キ (ki)</th><td>⠣</td><th>ク (ku)</th><td>⠩</td><th>ケ (ke)</th><td>⠫</td><th>コ (ko)</th><td>⠪</td></tr>
		<tr><th>サ (sa)</th><td>⠱</td><th>シ (shi)</th><td>⠳</td><th>ス (su)</th><td>⠹</td><th>セ (se)</th><td>⠻</td><th>ソ (so)</th><td>⠺</td></tr>
		<tr><th>タ (ta)</th><td>⠕</td><th>チ (chi)</th><td>⠗</td><th>ツ (tsu)</th><td>⠝</td><th>テ (te)</th><td>⠟</td><th>ト (to)</th><td>⠞</td></tr>
		<tr><th>ナ (na)</th><td>⠅</td><th>ニ (ni)</th><td>⠇</td><th>ヌ (nu)</th><td>⠍</td><th>ネ (ne)</th><td>⠏</td><th>ノ (no)</th><td>⠎</td></tr>
		<tr><th>ハ (ha)</th><td>⠥</td><th>ヒ (hi)</th><td>⠧</td><th>フ (fu)</th><td>⠭</td><th>ヘ (he)</th><td>⠯</td><th>ホ (ho)</th><td>⠮</td></tr>
		<tr><th>マ (ma)</th><td>⠵</td><th>ミ (mi)</th><td>⠷</td><th>ム (mu)</th><td>⠽</td><th>メ (me)</th><td>⠿</td><th>モ (mo)</th><td>⠾</td></tr>
		<tr><th>ヤ (ya)</th><td>⠌</td><th></th><td></td><th>ユ (yu)</th><td>⠬</td><th></th><td></td><th>ヨ (yo)</th><td>⠜</td></tr>
		<tr><th>ラ (ra)</th><td>⠑</td><th>リ (ri)</th><td>⠓</td><th>ル (ru)</th><td>⠙</td><th>レ (re)</th><td>⠛</td><th>ロ (ro)</th><td>⠚</td></tr>
		<tr><th>ワ (wa)</th><td>⠄</td><th>ヰ (wi)</th><td>⠆</td><th></th><td></td><th>ヱ (we)</th><td>⠖</td><th>ヲ (wo)</th><td>⠔</td></tr>
		<tr><th>ン (n)</th><td>⠴</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ッ (Sokuon)</th><td>⠂</td><th>ー (Chōon)</th><td>⠒</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>ガ (ga)</th><td>⠐⠡</td><th>ギ (gi)</th><td>⠐⠣</td><th>グ (gu)</th><td>⠐⠩</td><th>ゲ (ge)</th><td>⠐⠫</td><th>ゴ (go)</th><td>⠐⠪</td></tr>
		<tr><th>ザ (za)</th><td>⠐⠱</td><th>ジ (ji)</th><td>⠐⠳</td><th>ズ (zu)</th><td>⠐⠹</td><th>ゼ (ze)</th><td>⠐⠻</td><th>ゾ (zo)</th><td>⠐⠺</td></tr>
		<tr><th>ダ (da)</th><td>⠐⠕</td><th>ヂ (ji)</th><td>⠐⠗</td><th>ヅ (zu)</th><td>⠐⠝</td><th>デ (de)</th><td>⠐⠟</td><th>ド (do)</th><td>⠐⠞</td></tr>
		<tr><th>バ (ba)</th><td>⠐⠥</td><th>ビ (bi)</th><td>⠐⠧</td><th>ブ (bu)</th><td>⠐⠭</td><th>ベ (be)</th><td>⠐⠯</td><th>ボ (bo)</th><td>⠐⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>パ (pa)</th><td>⠠⠥</td><th>ピ (pi)</th><td>⠠⠧</td><th>プ (pu)</th><td>⠠⠭</td><th>ペ (pe)</th><td>⠠⠯</td><th>ポ (po)</th><td>⠠⠮</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>キャ (kya)</th><td>⠈⠡</td><th>キュ (kyu)</th><td>⠈⠩</td><th>キョ (kyo)</th><td>⠈⠪</td></tr>
		<tr><th>シャ (sha)</th><td>⠈⠱</td><th>シュ (shu)</th><td>⠈⠹</td><th>ショ (sho)</th><td>⠈⠺</td></tr>
		<tr><th>チャ (cha)</th><td>⠈⠕</td><th>チュ (chu)</th><td>⠈⠝</td><th>チョ (cho)</th><td>⠈⠞</td></tr>
		<tr><th>ニャ (nya)</th><td>⠈⠅</td><th>ニュ (nyu)</th><td>⠈⠍</td><th>ニョ (nyo)</th><td>⠈⠎</td></tr>
		<tr><th>ヒャ (hya)</th><td>⠈⠥</td><th>ヒュ (hyu)</th><td>⠈⠭</td><th>ヒョ (hyo)</th><td>⠈⠮</td></tr>
		<tr><th>ミャ (mya)</th><td>⠈⠵</td><th>ミュ (myu)</th><td>⠈⠽</td><th>ミョ (myo)</th><td>⠈⠾</td></tr>
		<tr><th>リャ (rya)</th><td>⠈⠑</td><th>リュ (ryu)</th><td>⠈⠙</td><th>リョ (ryo)</th><td>⠈⠚</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ギャ (gya)</th><td>⠘⠡</td><th>ギュ (gyu)</th><td>⠘⠩</td><th>ギョ (gyo)</th><td>⠘⠪</td></tr>
		<tr><th>ジャ (ja)</th><td>⠘⠱</td><th>ジュ (ju)</th><td>⠘⠹</td><th>ジョ (jo)</th><td>⠘⠺</td></tr>
		<tr><th>ヂャ (ja)</th><td>⠘⠕</td><th>ヂュ (ju)</th><td>⠘⠝</td><th>ヂョ (jo)</th><td>⠘⠞</td></tr>
		<tr><th>ビャ (bya)</th><td>⠘⠥</td><th>ビュ (byu)</th><td>⠘⠭</td><th>ビョ (byo)</th><td>⠘⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ピャ (pya)</th><td>⠨⠥</td><th>ピュ (pyu)</th><td>⠨⠭</td><th>ピョ (pyo)</th><td>⠨⠮</td></tr>
	</table>
</div>

<h4>Simbol Utama</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Koma Jepang)</th><td>⠰</td><th>。 (Titik Jepang)</th><td>⠲</td><th>？ (Tanda tanya)</th><td>⠢</td><th>！ (Tanda seru)</th><td>⠖</td></tr>
		<tr><th>・ (Titik Tengah)</th><td>⠐</td><th>〜 (Tanda Hubung Gelombang)</th><td>⠤⠤</td><th>＆ (Simbol ampersand)</th><td>⠰⠯</td><th>％ (Tanda persen)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Tanda Kutip dan Tanda Kurung</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Kutip Tunggal Jepang)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Kutip Ganda Jepang)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (T. Kurung Bundar Penuh)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (T. Kurung Bundar Ganda)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Alfabet Asing</h4>
<p>
Ketika alfabet bahasa Inggris atau alfabet bahasa asing lain terjalin bersama teks Jepang, indikator pemisahan kata asing (<code>⠰</code>) disisipkan tepat sebelum alfabet tersebut, yang diikuti dengan representasi UEB-nya yang sebangun.
</p>

<h4>Angka</h4>
<p>
Aturannya sama dengan Braille dalam Bahasa Inggris.
</p>

<h4>Pemisah Kata (Wakachigaki)</h4>
<p>
DenCode tidak akan otomatis memasukkan spasi untuk memisah frasa-frasa dalam susunan alami bahasa Jepang, tetapi langsung saja menelan mentah-mentah konversi dari baris masukannya. Guna menangkap translasi Braille bahasa Jepang secara mutlak lebih baik, harapkan Anda menuliskan langsung masukannya dengan menyisipkan spasi pemisah secara nyata di antarkatanya (Wakachigaki).
</p>


<h3>Sejarah Braille</h3>
<p>
Tulisan braille yang saat ini berpakem 6 titik ditemukan tahun 1825 oleh pria Prancis Louis Braille.
Dia mengalami kebutaan imbas musibah tatkala kanak-kanak, lalu mengembangkan sekaligus menyempurnakan landasan dari sistem tulisan ini dalam umur yang cuma sekadar 15 tahun.
Model tata baca untuk penyandang permasalahan penglihatan sebelum yang ini paling lazim mencetak huruf Latin lumrah ke wujud timbul saja, sungguh terlalu payah dibaca raba terlebih merumitkan sewaktu penulisannya manual pakai tangan.
Boleh dikata, pemanfaatan jenius susunan timbulan 6 titik menjadi gerbang pembuka orang-orang buat membaca amat pesat via perabaan jemarinya, serta tak pelak menolong kegiatan penulisannya secara leluasa pakai perangkat-perangkat sesederhana itu. Untuk sekarang "Braille" kian berakar luas jadi nama sinonim pada segenap teks tulisan titik bagi seantero muka bumi ini.
</p>
<p>
Sangkut pautnya ke Negara Jepang, usulan mengenai adaptasi bahasa Braille sempat direntangkan sejalan terbitnya permulaan restorasi di era Meiji.
Dalam rentang tahun 1890 (Meiji ke-23), braille berkarakter Jepang bertumpu standar ke-6 titik—tercakup pemformatan 'kana'-nya serupa yang eksis hingga waktu belakangan ini—akhirnya rampung disempurnakan mantap di tangan Kuraji Ishikawa, salah satu pengajar sekolah Tokyo School of the Blind and Dumb kala masa itu.
Semenjak itu tradisi tanggal 1 di bulan November —waktu ketok palu persetujuan berlakunya rumusan pakem Ishikawa— turun temurun ditandai memori sebagai "Hari Braille".
</p>

<h3>Evolusi di lingkungan braille Barat dan Munculnya UEB</h3>
<p>
Kalangan negara berbahasa ibu sekelas bahasa Inggris pun, sedari dulu seringkali cuma mendayagunakan tata aturan pedoman konvensi braille terpisah berpatok lokasi masing-masing.
Tiliklah contoh, Amerika Serikat memedomankan panduan rupa apa yang disebut "English Braille, American Edition (EBAE)", sedang wilayah di Kerajaan Inggris berpegang panduan rupa "Standard English Braille (SEB)". Dan betapa pun samanya di bawah rona pelukan semesta nama bahasan "Bahasa Inggris", tapi selisihnya kental terpampang, perihal penataan rincian simbol, sampailah hal ihwal pelik tentang singkatan wujud yang berbeda.
Di sisi tak terungkap rupa lain, berjamur juga sekumpulan kode pakem yang lahir dikhususkan guna disiplin keilmuan yang sempit, misal di koridor hal sains matematika (p.e: Nemeth Code) sekaligus ihwal spesifik yang menyelam seluk-beluknya jagad duniawi teknologi yang disapa "Computer Braille Code", alhasil menyuguhkan ketakkeruan di tatanan pembelajaran maupun menghunjamkan kekeliruan pemrogram ketika merekayasa mesin konversi peranti lunaknya.
</p>
<p>
Terdorong kemendesakan menggulung ambik selisih lokasional pula penjamuran aneka regulasi terkotak-kotak di bawah disiplin keilmuan usang tadi, berhembus kencang angin inisiasi ke arah perintisan konsensus mendunia sedari babak panggung di medio pembuka tahun sembilan puluhan.
Keluarannya dari serangkaian unifikasi dan upaya ini mencanangkan eksistensi standarisasi kuat nan global bernama <strong>Unified English Braille (UEB)</strong>. Ini sekarang secara universal dikerahkan menjadi pakem lumrah memandu keseluruhan pedoman pada blok masyarakat bersendikan Bahasa Inggris itu.
</p>
<p>
Aksen perpindahan garis depan terpokok yang menjulang tatkala kita amati secara frontal menyeberang UEB bersanding yang kedaluwarsa laiknya EBAE ini mencakup restrukturisasi pembetulan pun pangkas amputasi untuk kaidah penyimbolan braille singkatan di wilayah "Grade 2".
Di tata panduan model bahari, sekumpulan komplikasi dari ragam wujud "kode singkatan teks" dibiakkan demi mengirit pemakaian tata ruang pada bidang fisiknya, meski sekarang ini tataran regulasi termutakhir dari panduan dari sistem (UEB) mendominasi dengan tegas melenyapkan variasi wujud yang rentan meragukan tadi (Contoh spesifik, penyatuan imbuhan singkatan bertanda semacam ‘ble’ maupun 'com' sudah bersih disingkirkan).
Juga, pakem perumus memantapkan peraturan setebal mungkin menegasi segala anjuran penggunaan akronim pada deret pengetikan web contoh taut URL alamat surel/email. Sebagai tindak lajut yang harmonis, wujud penambahan simbol Braille nan diubahsuai seiring gelombang kemutakhiran zaman terakomodasi di sistem baru untuk menyesuaikan rupa tanda yang mutlak menunjang kesehari-harian masyarakat masa siber zaman terkini contoh "tanda a keong <code>@</code>", atau lambang pelengkap layaknya "garis miring/slash <code>/</code>" dll.
</p>
<p>
Masa kita pijak di almanak kekinian ini mempancangkan kenyataan kalau rentet sekelompok negara kampiun bahasa ibundanya berupa bahasa utama Inggris dari penjuru misal Inggris (UK) berturut Amerika Serikat, juga Kanada meluaskan sayap sampai Australia dan New Zealand (Selandia Baru) total keseluruhan ini sah menjinjing adaptasinya perihal penundukkan selaras ke benderanya UEB tadi. Hal yang demikian, secara masif membentur mayor besar penulisan serta ranah perangkat media literasi bertendensi bahasa tersebut dan Braillenya pun sah meniti standar terpandu ke arah parameter ketentuan-ketentuan yang mendominasi di UEB ini.
</p>
