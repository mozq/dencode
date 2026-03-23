<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>모스 부호에 대하여</h3>
<p>
모스 부호 (Morse code)는 짧은 신호 (Dit)와 긴 신호 (Dah)의 조합으로 문자와 기호를 표현하는 전신용 부호입니다.
</p>

<p>
DenCode에서는 모스 부호를 표현할 때 다음 기호를 사용합니다.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>명칭</th><th>기호</th></tr>
		<tr><td>단점 (Dit)</td><td><code>.</code> (도트)</td></tr>
		<tr><td>장점 (Dah)</td><td><code>-</code> (하이픈)</td></tr>
		<tr><td>문자 간격 (Letter space)</td><td><code> </code> (스페이스)</td></tr>
		<tr><td>단어 간격 (Word space)</td><td><code>/</code> (슬래시)</td></tr>
	</table>
</div>

<p>
"<var>MORSE CODE</var>"를 국제 모스 부호로 변환한 결과는 다음과 같습니다.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>신호 타이밍</h4>
<p>
모스 부호를 송신할 때는 단점과 장점의 길이 및 간격에 엄격한 비율이 정해져 있습니다.
단점의 길이를 1단위로 하면, 각 요소의 길이는 다음과 같습니다.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>요소</th><th>길이</th><th>설명</th></tr>
		<tr><td>단점</td><td>1단위</td><td>짧은 신호음</td></tr>
		<tr><td>장점</td><td>3단위</td><td>단점의 3배 길이의 신호음</td></tr>
		<tr><td>부호 내 간격</td><td>1단위</td><td>같은 문자 내의 단점·장점 사이의 무음 구간</td></tr>
		<tr><td>문자 간격</td><td>3단위</td><td>서로 다른 문자 사이의 무음 구간</td></tr>
		<tr><td>단어 간격</td><td>7단위</td><td>서로 다른 단어 사이의 무음 구간</td></tr>
	</table>
</div>

<p>
예를 들어, "<var>MORSE CODE</var>"를 송신할 경우, 다음과 같은 타이밍으로 신호가 전송됩니다.
<code>▄</code> (<code>1</code>)은 신호음, <code> </code> (<code>0</code>)은 무음 구간을 나타냅니다.
</p>
<pre>
M    : ▄▄▄ ▄▄▄         (1110111)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
R    : ▄ ▄▄▄ ▄         (1011101)
S    : ▄ ▄ ▄           (10101)
E    : ▄               (1)
     :                 (0000000)
C    : ▄▄▄ ▄ ▄▄▄ ▄     (11101011101)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
D    : ▄▄▄ ▄ ▄         (1110101)
E    : ▄               (1)

   M           O           R        S     E            C             O           D      E
▄▄▄ ▄▄▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄ ▄▄▄ ▄   ▄ ▄ ▄   ▄       ▄▄▄ ▄ ▄▄▄ ▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄▄▄ ▄ ▄   ▄
11101110001110111011100010111010001010100010000000111010111010001110111011100011101010001
</pre>

<p>
이와 같이, 단점 1단위를 기준으로 모든 길이가 정수비로 정해지므로, 전송 속도를 변경해도 정확한 비율을 유지할 수 있습니다.
통신 속도는 일반적으로 WPM (Words Per Minute)으로 표현되며, 기준 단어 "PARIS"를 1분에 몇 번 전송할 수 있는지로 정의됩니다.
예를 들어, 20 WPM의 경우 단점 1단위는 약 60밀리초입니다.
</p>


<h3>국제 모스 부호</h3>
<p>
알파벳, 숫자, 기호를 표현하는 세계 표준 모스 부호입니다.
국제전기통신연합 (ITU)의 표준 (ITU-R M.1677-1)으로 규정되어 있습니다.
</p>

<h4>알파벳</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>A</th><td>.-</td><th>B</th><td>-...</td><th>C</th><td>-.-.</td><th>D</th><td>-..</td></tr>
		<tr><th>E</th><td>.</td><th>F</th><td>..-.</td><th>G</th><td>--.</td><th>H</th><td>....</td></tr>
		<tr><th>I</th><td>..</td><th>J</th><td>.---</td><th>K</th><td>-.-</td><th>L</th><td>.-..</td></tr>
		<tr><th>M</th><td>--</td><th>N</th><td>-.</td><th>O</th><td>---</td><th>P</th><td>.--.</td></tr>
		<tr><th>Q</th><td>--.-</td><th>R</th><td>.-.</td><th>S</th><td>...</td><th>T</th><td>-</td></tr>
		<tr><th>U</th><td>..-</td><th>V</th><td>...-</td><th>W</th><td>.--</td><th>X</th><td>-..-</td></tr>
		<tr><th>Y</th><td>-.--</td><th>Z</th><td>--..</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>

<h4>숫자</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>기호</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>확장 부호</h4>
<p>
발음 기호가 붙은 문자 중 국제전기통신연합 (ITU)에서 규정하고 있는 것은 "É"뿐이며, 그 밖의 부호는 각국의 주관청이나 관행에 의해 정해진 "확장 부호"로 정의되어 있습니다.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>À, Å</th><td>.--.-</td><th>Ä, Æ, Ą</th><td>.-.-</td><th>Ć, Ĉ, Ç</th><td>-.-..</td><th>É, Ę, Đ</th><td>..-..</td></tr>
		<tr><th>Ð</th><td>..--.</td><th>È, Ł</th><td>.-..-</td><th>Ĝ</th><td>--.-.</td><th>Ĥ, Š</th><td>----</td></tr>
		<tr><th>Ĵ</th><td>.---.</td><th>Ń, Ñ</th><td>--.--</td><th>Ó, Ö, Ø</th><td>---.</td><th>Ś</th><td>...-...</td></tr>
		<tr><th>Ŝ</th><td>...-.</td><th>Þ</th><td>.--..</td><th>Ü, Ŭ</th><td>..--</td><th>Ź</th><td>--..-.</td></tr>
		<tr><th>Ż</th><td>--..-</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>일본어 모스 부호 (와분 부호)</h3>
<p>
일본어의 히라가나 및 가타카나를 표현하기 위한 모스 부호입니다.
문자의 배열은 전통적인 "이로하" 순서에 기반합니다.
</p>

<h4>히라가나 / 가타카나 (이로하 순서)</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>イ</th><td>.-</td><th>ロ</th><td>.-.-</td><th>ハ</th><td>-...</td><th>ニ</th><td>-.-.</td><th>ホ</th><td>-..</td></tr>
		<tr><th>ヘ</th><td>.</td><th>ト</th><td>..-..</td><th>チ</th><td>..-.</td><th>リ</th><td>--.</td><th>ヌ</th><td>....</td></tr>
		<tr><th>ル</th><td>-.--.</td><th>ヲ</th><td>.---</td><th>ワ</th><td>-.-</td><th>カ</th><td>.-..</td><th>ヨ</th><td>--</td></tr>
		<tr><th>タ</th><td>-.</td><th>レ</th><td>---</td><th>ソ</th><td>---.</td><th>ツ</th><td>.--.</td><th>ネ</th><td>--.-</td></tr>
		<tr><th>ナ</th><td>.-.</td><th>ラ</th><td>...</td><th>ム</th><td>-</td><th>ウ</th><td>..-</td><th>ヰ</th><td>.-..-</td></tr>
		<tr><th>ノ</th><td>..--</td><th>オ</th><td>.-...</td><th>ク</th><td>...-</td><th>ヤ</th><td>.--</td><th>マ</th><td>-..-</td></tr>
		<tr><th>ケ</th><td>-.--</td><th>フ</th><td>--..</td><th>コ</th><td>----</td><th>エ</th><td>-.---</td><th>テ</th><td>.-.--</td></tr>
		<tr><th>ア</th><td>--.--</td><th>サ</th><td>-.-.-</td><th>キ</th><td>-.-..</td><th>ユ</th><td>-..--</td><th>メ</th><td>-...-</td></tr>
		<tr><th>ミ</th><td>..-.-</td><th>シ</th><td>--.-.</td><th>ヱ</th><td>.--..</td><th>ヒ</th><td>--..-</td><th>モ</th><td>-..-.</td></tr>
		<tr><th>セ</th><td>.---.</td><th>ス</th><td>---.-</td><th>ン</th><td>.-.-.</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>゛ (탁점)</th><td>..</td><th>゜ (반탁점)</th><td>..--.</td></tr>
	</table>
</div>

<p>
탁점 (゛)과 반탁점 (゜)은 각각 독립된 부호를 가지고 있습니다. 청음을 나타내는 부호 뒤에 문자 간격 (스페이스)을 두고 탁점 부호 (<code>..</code>) 또는 반탁점 부호 (<code>..--.</code>)를 배치하여 표현합니다.
예를 들어, "ガ"는 "カ (<code>.-..</code>)"와 "゛ (<code>..</code>)"를 조합하여 "<code>.-.. ..</code>"가 됩니다.
</p>

<h4>숫자</h4>
<p>
국제 모스 부호와 동일합니다.
</p>

<h4>기호</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>러시아어 (키릴 문자) 모스 부호</h3>
<p>
러시아어 등에서 사용되는 키릴 문자를 표현하기 위한 모스 부호입니다.
키릴 문자의 알파벳 순서가 아니라, 대응하는 발음의 라틴 문자 (국제 모스 부호)와 동일한 부호가 할당되어 있습니다.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>А</th><td>.-</td><th>Б</th><td>-...</td><th>В</th><td>.--</td><th>Г</th><td>--.</td></tr>
		<tr><th>Д</th><td>-..</td><th>Е</th><td>.</td><th>Ж</th><td>...-</td><th>З</th><td>--..</td></tr>
		<tr><th>И</th><td>..</td><th>Й</th><td>.---</td><th>К</th><td>-.-</td><th>Л</th><td>.-..</td></tr>
		<tr><th>М</th><td>--</td><th>Н</th><td>-.</td><th>О</th><td>---</td><th>П</th><td>.--.</td></tr>
		<tr><th>Р</th><td>.-.</td><th>С</th><td>...</td><th>Т</th><td>-</td><th>У</th><td>..-</td></tr>
		<tr><th>Ф</th><td>..-.</td><th>Х</th><td>....</td><th>Ц</th><td>-.-.</td><th>Ч</th><td>---.</td></tr>
		<tr><th>Ш</th><td>----</td><th>Щ</th><td>--.-</td><th>Ъ</th><td>--.--</td><th>Ы</th><td>-.--</td></tr>
		<tr><th>Ь</th><td>-..-</td><th>Э</th><td>..-..</td><th>Ю</th><td>..--</td><th>Я</th><td>.-.-</td></tr>
	</table>
</div>

<h4>숫자</h4>
<p>
국제 모스 부호와 동일합니다.
</p>

<h4>기호</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>모스 부호의 역사</h3>
<p>
1830년대에 미국의 발명가 새뮤얼 모스 (Samuel Morse)와 알프레드 베일 (Alfred Vail)에 의해 초기 전신기를 위해 개발되었습니다.
최초의 모스 부호는 숫자만 전송하고, 수신 측에서 사전을 사용하여 단어로 변환하는 방식이었으나, 이후 베일이 알파벳을 포함한 현재의 체계로 확장했습니다.
사용 빈도가 높은 문자 (예: <code>E</code>)에는 짧은 부호 (<code>.</code>)를, 사용 빈도가 낮은 문자 (예: <code>Q</code>)에는 긴 부호 (<code>--.-</code>)를 할당하여 통신 효율의 최적화를 도모했습니다.
</p>

<p>
이후, 유럽을 중심으로 하는 국제 통신의 수요로 인해 알파벳 할당이 재검토되어, 현재 전 세계에서 사용되는 "국제 모스 부호 (International Morse Code)"로 발전했습니다.
일본에서는 에도 말기부터 메이지 초기에 걸쳐 전신 기술이 도입되면서, 50음을 독자적으로 모스 부호에 할당한 "와분 모스 부호"가 고안되었습니다.
"イロハニホヘト…"의 순서로 부호가 할당되어 있는 것이 와분 모스의 큰 특징입니다.
</p>

<p>
오랜 세월 동안, 모스 부호는 선박, 항공기, 군사 통신, 상업 통신에서 전 세계적으로 널리 이용되어 왔습니다.
그러나, 위성 통신과 디지털 통신의 발전에 따라, 1990년대의 GMDSS (해상에서의 조난 및 안전에 관한 세계적 제도)로의 전환을 계기로, 공식적인 조난 통신 수단으로서의 모스 부호는 그 역할을 거의 마쳤습니다.
</p>

<p>
현재는 주로 아마추어 무선이나, 일부 항법용 무선 표지 등에서 관행적으로 사용되고 있습니다.
그러나, 매우 단순한 온·오프 원리 (빛의 점멸, 소리의 장단, 나아가 눈깜빡임이나 벽을 두드리는 소리 등)만으로 의사소통이 가능하다는 특성 덕분에, 자연재해 등에서의 궁극적인 통신 수단으로서의 가치는 현대에도 전혀 잃지 않고 있습니다.
유명한 조난 신호 "SOS"도, 언어적인 의미를 가지지 않으며, 송신하기 쉽고 듣기 쉬운 "<code>... --- ...</code>"라는 부호의 조합에서 채택된 것입니다.
</p>
