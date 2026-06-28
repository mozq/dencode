<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於普萊費爾密碼</h3>
<p>普萊費爾密碼是一種替換式密碼，使用 5×5 的字母表，以兩個字母為一組進行替換。</p>

<p>例如，金鑰為「SECRET」、明文為「HELLO」時，會加密如下。</p>

<pre>
明文 : HELLO
密文 : ISKYIQ
</pre>

<p>加密時，首先將明文分成兩個字母一組。如果一組中出現相同字母，例如「LL」，就在中間插入輔助字母「X」。如果最後只剩下一個字母，也會追加輔助字母「X」。</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>接著準備一個 5×5（共25格）的密碼表。密碼表需要填入25個字母，但英文字母共有26個，因此通常將「I=J」放在同一格中。</p>
<p>密碼表中先寫入金鑰中的字母，並去除重複。金鑰為「SECRET」時，重複的第二個「E」不會寫入。然後繼續寫入「ABCDEFGHIKLMNOPQRSTUVWXYZ」，同樣跳過已經出現在金鑰中的字母。這樣就完成一個沒有重複字母的 5×5 密碼表。</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>使用這個密碼表，按照以下規則對每兩個字母進行加密。轉換方式取決於這兩個字母在密碼表中的位置關係。</p>

<ul>
	<li>在同一行時：分別替換為右側的字母。如果在最右側，則回到最左側。</li>
	<li>在同一列時：分別替換為下方的字母。如果在最下方，則回到最上方。</li>
	<li>在不同行且不同列時：想像一個以這兩個字母為角的矩形，並替換為另外兩個角上的字母。</li>
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

<p>解碼時，使用同一個字母表以兩個字母為一組處理密文。請注意，輔助字母「X」不會被自動刪除。</p>

<pre>
密文 : ISKYIQ
明文 : HEL<strong>X</strong>LO
</pre>
