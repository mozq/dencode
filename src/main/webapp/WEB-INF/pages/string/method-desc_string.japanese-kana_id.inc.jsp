<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Tentang konversi Kana Jepang / Romaji</h3>
<p>Mengonversi hiragana, katakana, dan romaji Jepang satu sama lain.</p>
<p>Konversi romaji mendukung sistem Hepburn dan Kunrei-shiki.</p>

<p>Misalnya, hasil konversi romaji "sakura" ke katakana adalah sebagai berikut.</p>

<pre>サクラ</pre>

<p>Hasil konversi hiragana "しんぶん" ke romaji (Hepburn) adalah sebagai berikut.</p>

<pre>shinbun</pre>

<p>Saat menghasilkan romaji, "、" dan "。" dikonversi menjadi koma dan titik. Saat menghasilkan kana, koma dan titik hanya dikonversi menjadi "、" dan "。" jika diikuti spasi atau akhir baris.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Saat mengonversi romaji ke kana, rangkaian huruf Latin hanya dikonversi jika seluruh rangkaian dapat ditafsirkan sebagai romaji. Misalnya, "computer" tidak dapat ditafsirkan sebagai romaji, sehingga dibiarkan tetap sebagai "computer".</p>
<p>Katakana half-width tidak dikonversi. Untuk mengonversinya, ubah terlebih dahulu menjadi katakana full-width dengan <a href="${dc:h(basePath)}/string/character-width">konversi lebar karakter</a>.</p>
