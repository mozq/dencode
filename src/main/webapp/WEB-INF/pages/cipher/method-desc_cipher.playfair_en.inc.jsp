<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About the Playfair Cipher</h3>
<p>The Playfair Cipher is a substitution cipher that replaces pairs of letters using a 5×5 letter table.</p>

<p>For example, when the key is "SECRET" and the plaintext is "HELLO", it is encrypted as follows.</p>

<pre>
Plaintext  : HELLO
Ciphertext : ISKYIQ
</pre>

<p>First, the plaintext is split into pairs of letters. If a pair contains the same letter, such as "LL", an auxiliary letter "X" is inserted between them. If one letter remains at the end, an auxiliary "X" is also added.</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Next, prepare a 5×5 (25-cell) cipher table. The table has room for 25 letters, but the alphabet has 26 letters, so "I=J" is usually placed in the same cell.</p>
<p>First, write the letters of the key into the table without duplicates. With the key "SECRET", the second "E" is skipped. Then write "ABCDEFGHIKLMNOPQRSTUVWXYZ", again skipping letters that already appear in the key. This creates a 5×5 cipher table with no duplicate letters.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Using this table, encrypt each pair of letters according to the rules below. The method depends on how the two letters are positioned in the table.</p>

<ul>
	<li>If they are in the same row: replace each letter with the letter to its right. If it is at the right edge, wrap around to the left edge.</li>
	<li>If they are in the same column: replace each letter with the letter below it. If it is at the bottom, wrap around to the top.</li>
	<li>If they are in different rows and columns: imagine a rectangle whose corners include the two letters, and replace them with the letters at the other two corners.</li>
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

<p>For decryption, process the ciphertext in pairs using the same letter table. Note that the auxiliary letter "X" is not removed automatically.</p>

<pre>
Ciphertext : ISKYIQ
Plaintext  : HEL<strong>X</strong>LO
</pre>
