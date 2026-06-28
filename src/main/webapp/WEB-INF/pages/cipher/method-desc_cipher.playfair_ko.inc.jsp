<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>플레이페어 암호에 대하여</h3>
<p>플레이페어 암호는 5×5 문자표를 사용하여 두 글자씩 짝을 지어 치환하는 치환식 암호입니다.</p>

<p>예를 들어 키가 "SECRET"이고 평문이 "HELLO"인 경우, 다음과 같이 암호화됩니다.</p>

<pre>
평문   : HELLO
암호문 : ISKYIQ
</pre>

<p>암호화에서는 먼저 평문을 두 글자씩 짝으로 나눕니다. "LL"처럼 같은 글자가 한 짝이 되는 경우에는 그 사이에 보조 문자 "X"를 삽입합니다. 마지막에 한 글자만 남는 경우에도 보조 문자 "X"를 추가합니다.</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>다음으로 총 25칸의 5×5 암호표를 준비합니다. 알파벳은 26글자이므로 일반적으로 "I=J"를 같은 칸에 넣습니다.</p>
<p>암호표에는 먼저 키의 문자를 중복 없이 적습니다. 키가 "SECRET"인 경우 중복되는 두 번째 "E"는 적지 않습니다. 이어서 "ABCDEFGHIKLMNOPQRSTUVWXYZ"를 적되, 여기서도 키와 중복되는 문자는 적지 않습니다. 이렇게 중복 문자가 없는 5×5 암호표가 완성됩니다.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>이 암호표를 사용하여 아래 규칙으로 두 글자씩 암호화합니다. 두 글자가 암호표에서 어떤 위치 관계에 있는지에 따라 변환 방법이 달라집니다.</p>

<ul>
	<li>같은 행에 있는 경우: 각각 오른쪽 글자로 변환합니다. 가장 오른쪽에 있으면 가장 왼쪽으로 돌아갑니다.</li>
	<li>같은 열에 있는 경우: 각각 아래쪽 글자로 변환합니다. 가장 아래에 있으면 가장 위로 돌아갑니다.</li>
	<li>서로 다른 행과 열에 있는 경우: 두 글자를 모서리로 하는 직사각형을 떠올리고, 나머지 두 모서리의 글자로 변환합니다.</li>
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

<p>복호화에서는 암호문을 같은 문자표로 두 글자씩 처리합니다. 보조 문자 "X"는 자동으로 삭제되지 않는다는 점에 주의하세요.</p>

<pre>
암호문 : ISKYIQ
평문   : HEL<strong>X</strong>LO
</pre>
