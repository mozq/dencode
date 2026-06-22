<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>ベーコン暗号について</h3>
<p>ベーコン暗号は、各文字を「A/B」など2値の5桁で表す換字式暗号です。</p>

<pre>
暗号化前 : HELLO, WORLD!
暗号化後 : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>オリジナルのベーコン暗号では、I/JおよびU/Vを同一視する24文字の文字表を使用します。その後の第2版では、AからZまでの26文字すべてに個別の符号が割り当てられました。DenCodeでは、どちらの文字表もサポートしています。</p>

<h4>オリジナルの24文字の表</h4>
<p>オリジナルの文字表では、IとJ、UとVをそれぞれ同じ文字として扱います。暗号化時は、JはI、VはUとして変換されます。</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>第2版の26文字の表</h4>
<p>第2版の文字表では、I、J、U、Vを含むAからZまでの各文字に個別のベーコン暗号を割り当てます。</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>選択した文字表で対応していない文字は、そのまま保持されます。</p>

<h4>ステガノグラフィーとしての利用</h4>
<p>ベーコン暗号は、フランシス・ベーコンが1605年に考案した暗号です。A/Bの5文字組をそのまま書けば換字式暗号として扱えますが、A/Bの違いを別の文章の見た目に隠すことで、隠蔽式暗号やステガノグラフィーとしても使用できます。</p>
<p>ステガノグラフィーとして使用する場合は、秘密のメッセージをA/B列に変換し、その長さに合う表向きの文章を用意します。そして、各文字を2種類の書体で書き分け、片方をA、もう片方をBとして読ませます。見た目には通常の文章に見えますが、書体の違いを5文字ごとに読むと隠されたメッセージを復元できます。ベーコン自身は、手書き文字の大文字・小文字に2種類の形を用意する「二字式アルファベット」も示しました。</p>

<p>例えば、「HI」を暗号化すると「AABBB ABAAA」になり、ステガノグラフィーとして文章「Hello world」に隠すと以下のようになります。</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>この例では、通常の文字をA、太字の文字をBとして読みます。見た目の文章は「Hello world」ですが、書体の違いだけを読むと「AABBB ABAAA」となり、5文字ごとに復元すると「HI」になります。</p>
