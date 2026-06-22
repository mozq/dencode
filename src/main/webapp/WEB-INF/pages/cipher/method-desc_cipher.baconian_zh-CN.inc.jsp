<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于培根密码</h3>
<p>培根密码是一种替换密码，用 A/B 等二值的五位模式表示每个字母。</p>

<pre>
明文 : HELLO, WORLD!
密文 : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>原始培根密码使用 24 个字母的字母表，其中 I/J 和 U/V 分别视为同一个字母。后来的第二版为 A 到 Z 的每个字母都分配了独立的编码。DenCode 支持这两种字母表。</p>

<h4>原始的 24 字母表</h4>
<p>在原始字母表中，I 和 J 共用一个编码，U 和 V 也共用一个编码。编码时，J 按 I 处理，V 按 U 处理。</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>第二版：26 字母表</h4>
<p>在第二版中，从 A 到 Z 的每个字母都有独立的培根编码，包括 I、J、U 和 V。</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>所选字母表不支持的字符会保持原样。</p>

<h4>作为隐写术使用</h4>
<p>培根密码由弗朗西斯·培根于 1605 年提出。如果直接写成五位 A/B 组，它就是一种替换密码；如果把 A/B 的差异隐藏在另一段文字的外观中，它也可以作为隐藏式密码或隐写术使用。</p>
<p>作为隐写术使用时，先把秘密消息转换成 A/B 序列，再准备一段长度足够的表面文字来承载这个序列。表面文字中的每个字母用两种字体之一书写：一种读作 A，另一种读作 B。文字看起来仍然是普通句子，但按五个一组读取字体差异，就能还原隐藏消息。培根还描述过用于手写的双字母表，让大写和小写字母各有两种替代形态。</p>

<p>例如，把“HI”加密会得到“AABBB ABAAA”。如果把它隐藏在表面文字“Hello world”中，效果如下：</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>在这个例子中，普通字母读作 A，粗体字母读作 B。看见的文字是“Hello world”，但只读取字体差异会得到“AABBB ABAAA”，按五个一组解码后就是“HI”。</p>
