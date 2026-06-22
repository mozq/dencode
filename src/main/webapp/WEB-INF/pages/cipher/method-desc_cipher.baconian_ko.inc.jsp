<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>베이컨 암호란?</h3>
<p>베이컨 암호는 각 문자를 A/B처럼 두 값으로 이루어진 5자리 패턴으로 나타내는 치환식 암호입니다.</p>

<pre>
평문     : HELLO, WORLD!
암호문   : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>오리지널 베이컨 암호는 I/J와 U/V를 같은 문자로 취급하는 24자 문자표를 사용합니다. 이후의 두 번째 버전에서는 A부터 Z까지 26개 문자에 각각 고유한 코드가 배정되었습니다. DenCode는 두 문자표를 모두 지원합니다.</p>

<h4>오리지널 24자 문자표</h4>
<p>오리지널 문자표에서는 I와 J가 하나의 코드를 공유하고, U와 V도 하나의 코드를 공유합니다. 인코딩할 때 J는 I로, V는 U로 변환됩니다.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>두 번째 버전: 26자 문자표</h4>
<p>두 번째 버전에서는 I, J, U, V를 포함해 A부터 Z까지 각 문자에 개별 베이컨 암호가 배정됩니다.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>선택한 문자표에서 지원하지 않는 문자는 그대로 유지됩니다.</p>

<h4>스테가노그래피로 사용하기</h4>
<p>베이컨 암호는 프랜시스 베이컨이 1605년에 고안한 암호입니다. A/B의 5자리 묶음을 그대로 쓰면 치환식 암호로 동작하지만, A/B의 차이를 다른 문장의 겉모습에 숨기면 은닉 암호나 스테가노그래피로도 사용할 수 있습니다.</p>
<p>스테가노그래피로 사용할 때는 먼저 비밀 메시지를 A/B 열로 변환하고, 그 열을 담을 수 있을 만큼 긴 표면 텍스트를 준비합니다. 그런 다음 각 문자를 두 가지 서체 중 하나로 써서 한쪽은 A, 다른 한쪽은 B로 읽게 합니다. 겉보기에는 평범한 문장이지만, 서체 차이를 다섯 글자씩 읽으면 숨겨진 메시지를 복원할 수 있습니다. 베이컨은 손글씨용으로 대문자와 소문자에 두 가지 대체 형태를 두는 이문자 알파벳도 설명했습니다.</p>

<p>예를 들어 “HI”를 암호화하면 “AABBB ABAAA”가 됩니다. 이를 표면 텍스트 “Hello world”에 숨기면 다음과 같습니다:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>이 예에서는 일반 글자를 A, 굵은 글자를 B로 읽습니다. 겉으로 보이는 문장은 “Hello world”이지만, 서체 차이만 읽으면 “AABBB ABAAA”가 되고, 이를 다섯 글자씩 복원하면 “HI”가 됩니다.</p>
