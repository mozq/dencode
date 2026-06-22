<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Baconian Cipher</h3>
<p>Baconian cipher is a substitution cipher that represents each letter with a five-symbol binary pattern, such as A/B.</p>

<pre>
Plain text  : HELLO, WORLD!
Cipher text : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>The original Baconian cipher uses a 24-letter alphabet, where I/J and U/V are treated as the same letters. A second version assigns a unique code to each letter from A to Z. DenCode supports both alphabets.</p>

<h4>Original 24-letter alphabet</h4>
<p>In the original alphabet, I and J share one code, and U and V share one code. When encoding, J is converted as I, and V is converted as U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Second version: 26-letter alphabet</h4>
<p>In the second version, each letter from A to Z has its own Baconian code, including I, J, U, and V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Characters not supported by the selected alphabet are kept as they are.</p>

<h4>Steganographic use</h4>
<p>Baconian cipher was devised by Francis Bacon in 1605. Written directly as five-character A/B groups, it works as a substitution cipher. By hiding the A/B choices in the appearance of another text, it can also be used as a concealment cipher or a form of steganography.</p>
<p>For steganographic use, the secret message is first converted into an A/B sequence, and a cover text long enough to carry that sequence is prepared. Each letter in the cover text is then written in one of two typefaces, one read as A and the other as B. The text still looks like an ordinary sentence, but reading the typeface differences in groups of five reveals the hidden message. Bacon also described a biliteral alphabet for handwriting, using two alternative forms of uppercase and lowercase letters.</p>

<p>For example, encrypting "HI" produces "AABBB ABAAA". Hidden in the cover text "Hello world", it looks like this:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>In this example, normal letters are read as A and bold letters are read as B. The visible text is "Hello world", but reading only the typeface differences gives "AABBB ABAAA", which decodes in groups of five as "HI".</p>
