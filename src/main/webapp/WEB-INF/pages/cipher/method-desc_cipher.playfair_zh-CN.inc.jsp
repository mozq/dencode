<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于普莱费尔密码</h3>
<p>普莱费尔密码是一种替换式密码，使用 5×5 的字母表按两个字母一组进行替换。</p>

<p>例如，当密钥为“SECRET”、明文为“HELLO”时，会加密如下。</p>

<pre>
明文 : HELLO
密文 : ISKYIQ
</pre>

<p>加密时，首先将明文分成两个字母一组。如果一组中出现相同字母，例如“LL”，就在中间插入辅助字母“X”。如果最后只剩下一个字母，也会追加辅助字母“X”。</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>接下来准备一个 5×5（共25格）的密码表。密码表需要填入25个字母，但英文字母共有26个，因此通常将“I=J”放在同一格中。</p>
<p>密码表中先写入密钥中的字母，并去除重复。密钥为“SECRET”时，重复的第二个“E”不会写入。然后继续写入“ABCDEFGHIKLMNOPQRSTUVWXYZ”，同样跳过已经出现在密钥中的字母。这样就完成了一个没有重复字母的 5×5 密码表。</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>使用这个密码表，按照以下规则对每两个字母进行加密。转换方式取决于这两个字母在密码表中的位置关系。</p>

<ul>
	<li>在同一行时：分别替换为右侧的字母。如果在最右侧，则回到最左侧。</li>
	<li>在同一列时：分别替换为下方的字母。如果在最下方，则回到最上方。</li>
	<li>在不同行且不同列时：想象一个以这两个字母为角的矩形，并替换为另外两个角上的字母。</li>
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

<p>解密时，使用同一个字母表按两个字母一组处理密文。请注意，辅助字母“X”不会被自动删除。</p>

<pre>
密文 : ISKYIQ
明文 : HEL<strong>X</strong>LO
</pre>
