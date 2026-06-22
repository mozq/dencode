<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於培根密碼</h3>
<p>培根密碼是一種替換密碼，用 A/B 等二值的五位模式表示每個字母。</p>

<pre>
明文 : HELLO, WORLD!
密文 : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>原始培根密碼使用 24 個字母的字母表，其中 I/J 和 U/V 分別視為同一個字母。後來的第二版為 A 至 Z 的每個字母都分配獨立編碼。DenCode 支援這兩種字母表。</p>

<h4>原始的 24 字母表</h4>
<p>在原始字母表中，I 和 J 共用一個編碼，U 和 V 亦共用一個編碼。編碼時，J 會按 I 處理，V 會按 U 處理。</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>第二版：26 字母表</h4>
<p>在第二版中，A 至 Z 的每個字母都有獨立的培根編碼，包括 I、J、U 和 V。</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>所選字母表不支援的字元會保持原樣。</p>

<h4>作為隱寫術使用</h4>
<p>培根密碼由法蘭西斯·培根於 1605 年提出。如果直接寫成五位 A/B 組，它就是一種替換密碼；如果把 A/B 的差異隱藏在另一段文字的外觀中，也可以作為隱藏式密碼或隱寫術使用。</p>
<p>作為隱寫術使用時，先把秘密訊息轉成 A/B 序列，再準備一段足夠長的表面文字來承載這個序列。表面文字中的每個字母用兩種字體之一書寫：一種讀作 A，另一種讀作 B。文字看起來仍然是普通句子，但按五個一組讀取字體差異，就能還原隱藏訊息。培根亦描述過用於手寫的雙字母表，讓大寫和小寫字母各有兩種替代形態。</p>

<p>例如，把「HI」加密會得到「AABBB ABAAA」。如果把它隱藏在表面文字「Hello world」中，效果如下：</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>在這個例子中，普通字母讀作 A，粗體字母讀作 B。看見的文字是「Hello world」，但只讀取字體差異會得到「AABBB ABAAA」，按五個一組解碼後就是「HI」。</p>
