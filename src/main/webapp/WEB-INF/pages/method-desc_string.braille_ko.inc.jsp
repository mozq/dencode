<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>점자에 대하여</h3>
<p>
점자(Braille)는 시각 장애인이 손끝으로 만져 읽을 수 있도록 고안된 볼록한 점으로 이루어진 문자입니다.
세로 3점, 가로 2점의 총 6점 조합으로 하나의 문자나 기호를 표현합니다(6점 점자).
전 세계적으로 이용되고 있으며, 언어에 따라 점자 할당 규칙이 다릅니다.
</p>


<h3>영어 점자(UEB Grade 1)</h3>
<p>
이 도구는 영어권에서 표준으로 사용되는 '통일 영어 점자(UEB: Unified English Braille)'의 Grade 1(1급 영어 점자: 알파벳을 한 글자씩 그대로 표기하는 방식)을 기준으로 변환합니다. 약자(Grade 2)는 지원하지 않습니다.
</p>

<p>변환 예:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>알파벳</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>a</th><td>⠁</td><th>b</th><td>⠃</td><th>c</th><td>⠉</td><th>d</th><td>⠙</td><th>e</th><td>⠑</td></tr>
		<tr><th>f</th><td>⠋</td><th>g</th><td>⠛</td><th>h</th><td>⠓</td><th>i</th><td>⠊</td><th>j</th><td>⠚</td></tr>
		<tr><th>k</th><td>⠅</td><th>l</th><td>⠇</td><th>m</th><td>⠍</td><th>n</th><td>⠝</td><th>o</th><td>⠕</td></tr>
		<tr><th>p</th><td>⠏</td><th>q</th><td>⠟</td><th>r</th><td>⠗</td><th>s</th><td>⠎</td><th>t</th><td>⠞</td></tr>
		<tr><th>u</th><td>⠥</td><th>v</th><td>⠧</td><th>w</th><td>⠺</td><th>x</th><td>⠭</td><th>y</th><td>⠽</td></tr>
		<tr><th>z</th><td>⠵</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<p>
대문자 알파벳 앞에는 대문자표(<code>⠠</code>)를 붙입니다.
또한 대문자가 연속될 때는 단어 전체를 대문자로 지정하는 '대문자 단어표(<code>⠠⠠</code>)', 여러 단어에 걸친 경우 '대문자 구절표(<code>⠠⠠⠠</code>)', 그리고 그 효력을 끝내는 '대문자 종료표(<code>⠠⠄</code>)'가 사용됩니다.
</p>

<h4>숫자</h4>
<p>
숫자는 수표(<code>⠼</code>) 뒤에 알파벳 a~j와 같은 점자를 배치하여 나타냅니다.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>수표</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
숫자 직후에 소문자 a~j가 올 때는 숫자와의 혼동을 피하기 위해 1급 점자표(<code>⠰</code>)가 삽입됩니다.
</p>

<h4>주요 기호</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (쉼표)</th><td>⠂</td><th>. (마침표)</th><td>⠲</td><th>! (느낌표)</th><td>⠖</td><th>? (물음표)</th><td>⠦</td></tr>
		<tr><th>' (아포스트로피)</th><td>⠄</td><th>- (하이픈)</th><td>⠤</td><th>; (세미콜론)</th><td>⠆</td><th>: (콜론)</th><td>⠒</td></tr>
	</table>
</div>

<h4>인용 부호 및 괄호</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (일반 큰따옴표)</th><td>⠦ *** ⠴</td><th>' *** ' (일반 작은따옴표)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (방향성 큰따옴표)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (방향성 작은따옴표)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (겹화살괄호)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (홑화살괄호)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (소괄호)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (대괄호)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (중괄호)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>일본어 점자</h3>
<p>
일본어 점자는 문장을 가나로 바꾼 후 점자로 변환하여 표기합니다.
</p>

<p>변환 예:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>가나</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>ア</th><td>⠁</td><th>イ</th><td>⠃</td><th>ウ</th><td>⠉</td><th>エ</th><td>⠋</td><th>オ</th><td>⠊</td></tr>
		<tr><th>カ</th><td>⠡</td><th>キ</th><td>⠣</td><th>ク</th><td>⠩</td><th>ケ</th><td>⠫</td><th>コ</th><td>⠪</td></tr>
		<tr><th>サ</th><td>⠱</td><th>シ</th><td>⠳</td><th>ス</th><td>⠹</td><th>セ</th><td>⠻</td><th>ソ</th><td>⠺</td></tr>
		<tr><th>タ</th><td>⠕</td><th>チ</th><td>⠗</td><th>ツ</th><td>⠝</td><th>テ</th><td>⠟</td><th>ト</th><td>⠞</td></tr>
		<tr><th>ナ</th><td>⠅</td><th>ニ</th><td>⠇</td><th>ヌ</th><td>⠍</td><th>ネ</th><td>⠏</td><th>ノ</th><td>⠎</td></tr>
		<tr><th>ハ</th><td>⠥</td><th>ヒ</th><td>⠧</td><th>フ</th><td>⠭</td><th>ヘ</th><td>⠯</td><th>ホ</th><td>⠮</td></tr>
		<tr><th>マ</th><td>⠵</td><th>ミ</th><td>⠷</td><th>ム</th><td>⠽</td><th>メ</th><td>⠿</td><th>モ</th><td>⠾</td></tr>
		<tr><th>ヤ</th><td>⠌</td><th></th><td></td><th>ユ</th><td>⠬</td><th></th><td></td><th>ヨ</th><td>⠜</td></tr>
		<tr><th>라</th><td>⠑</td><th>리</th><td>⠓</td><th>루</th><td>⠙</td><th>레</th><td>⠛</td><th>로</th><td>⠚</td></tr>
		<tr><th>ワ</th><td>⠄</td><th>ヰ</th><td>⠆</td><th></th><td></td><th>ヱ</th><td>⠖</td><th>ヲ</th><td>⠔</td></tr>
		<tr><th>ン</th><td>⠴</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ッ (촉음)</th><td>⠂</td><th>ー (장음)</th><td>⠒</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>ガ</th><td>⠐⠡</td><th>ギ</th><td>⠐⠣</td><th>グ</th><td>⠐⠩</td><th>ゲ</th><td>⠐⠫</td><th>ゴ</th><td>⠐⠪</td></tr>
		<tr><th>ザ</th><td>⠐⠱</td><th>ジ</th><td>⠐⠳</td><th>ズ</th><td>⠐⠹</td><th>ゼ</th><td>⠐⠻</td><th>ゾ</th><td>⠐⠺</td></tr>
		<tr><th>ダ</th><td>⠐⠕</td><th>ヂ</th><td>⠐⠗</td><th>ヅ</th><td>⠐⠝</td><th>デ</th><td>⠐⠟</td><th>ド</th><td>⠐⠞</td></tr>
		<tr><th>バ</th><td>⠐⠥</td><th>ビ</th><td>⠐⠧</td><th>ブ</th><td>⠐⠭</td><th>베</th><td>⠐⠯</td><th>보</th><td>⠐⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>パ</th><td>⠠⠥</td><th>ピ</th><td>⠠⠧</td><th>プ</th><td>⠠⠭</td><th>ペ</th><td>⠠⠯</td><th>ポ</th><td>⠠⠮</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>キャ</th><td>⠈⠡</td><th>キュ</th><td>⠈⠩</td><th>キョ</th><td>⠈⠪</td></tr>
		<tr><th>シャ</th><td>⠈⠱</td><th>シュ</th><td>⠈⠹</td><th>ショ</th><td>⠈⠺</td></tr>
		<tr><th>チャ</th><td>⠈⠕</td><th>チュ</th><td>⠈⠝</td><th>チョ</th><td>⠈⠞</td></tr>
		<tr><th>ニャ</th><td>⠈⠅</td><th>ニュ</th><td>⠈⠍</td><th>ニョ</th><td>⠈⠎</td></tr>
		<tr><th>ヒャ</th><td>⠈⠥</td><th>ヒュ</th><td>⠈⠭</td><th>ヒョ</th><td>⠈⠮</td></tr>
		<tr><th>ミャ</th><td>⠈⠵</td><th>ミュ</th><td>⠈⠽</td><th>ミョ</th><td>⠈⠾</td></tr>
		<tr><th>リャ</th><td>⠈⠑</td><th>リュ</th><td>⠈⠙</td><th>リョ</th><td>⠈⠚</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ギャ</th><td>⠘⠡</td><th>ギュ</th><td>⠘⠩</td><th>ギョ</th><td>⠘⠪</td></tr>
		<tr><th>ジャ</th><td>⠘⠱</td><th>ジュ</th><td>⠘⠹</td><th>ジョ</th><td>⠘⠺</td></tr>
		<tr><th>ヂャ</th><td>⠘⠕</td><th>ヂュ</th><td>⠘⠝</td><th>ヂョ</th><td>⠘⠞</td></tr>
		<tr><th>ビャ</th><td>⠘⠥</td><th>ビュ</th><td>⠘⠭</td><th>ビョ</th><td>⠘⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ピャ</th><td>⠨⠥</td><th>ピュ</th><td>⠨⠭</td><th>ピョ</th><td>⠨⠮</td></tr>
	</table>
</div>

<h4>주요 기호</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (모점)</th><td>⠰</td><th>。 (고리점)</th><td>⠲</td><th>？ (물음표)</th><td>⠢</td><th>！ (느낌표)</th><td>⠖</td></tr>
		<tr><th>・ (가운뎃점)</th><td>⠐</td><th>〜 (물결표)</th><td>⠤⠤</td><th>＆ (앰퍼샌드)</th><td>⠰⠯</td><th>％ (퍼센트)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>인용 부호 및 괄호</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (홑화살괄호)</th><td>⠤ *** ⠤</td><th>『 *** 』 (겹화살괄호)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (소괄호)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (이중 소괄호)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>알파벳</h4>
<p>
영어나 기타 외국어 알파벳이 섞일 때는 알파벳 바로 앞에 외국어표(<code>⠰</code>)를 삽입하고 그 뒤에 UEB 상당의 알파벳 점자를 배치합니다.
</p>

<h4>숫자</h4>
<p>
영어 점자와 동일한 규칙입니다.
</p>

<h4>띄어쓰기</h4>
<p>
DenCode는 띄어쓰기(단어별 공백 분리)를 자동으로 삽입하지 않고 입력된 문자열을 그대로 점자로 바꿉니다. 더 정확한 일본어 점자를 만들려면 입력문을 미리 띄어쓰기 단위로 띄어서 입력하세요.
</p>


<h3>점자의 역사</h3>
<p>
현대의 6점 점자는 1825년 프랑스의 루이 브라이유(Louis Braille)가 고안했습니다.
그 또한 어린 시절의 사고로 시력을 잃었으나, 불과 15세 때 이 시스템을 완성했습니다.
그 이전의 시각 장애인용 문자는 알파벳 모양을 그대로 종이에 양각한 것으로, 읽고 쓰기가 매우 어려웠습니다.
하지만 브라이유가 고안한 6점 점자 덕분에 손가락으로 빠르게 읽고 전용 기구로 쉽게 쓸 수 있게 되었습니다. 현재는 'Braille'라는 단어 자체가 전 세계적으로 '점자'를 의미하는 말로 자리 잡았습니다.
</p>
<p>
일본에서는 메이지 시대부터 점자 도입이 논의되기 시작했습니다.
1890년(메이지 23년) 도쿄맹아학교 교사였던 이시카와 구라지에 의해 현재의 가나를 기반으로 한 일본 점자(6점 점자)가 완성되었습니다.
이 이시카와 구라지의 점자안이 공식 채택된 11월 1일은 현재 일본의 '점자의 날'로 기념되고 있습니다.
</p>

<h3>영어권에서의 점자 변천과 UEB(통일 영어 점자)</h3>
<p>
영어권에서는 오랫동안 국가나 지역마다 각기 다른 고유한 점자 체계를 사용해 왔습니다.
예를 들어 미국에서는 'English Braille, American Edition (EBAE)', 영국에서는 'Standard English Braille (SEB)' 등이 표준으로 사용되었으며, 같은 영어임에도 기호나 알파벳의 할당, 약자의 철자법이 미묘하게 다른 경우가 있었습니다.
더 나아가 수학 및 과학(Nemeth Code 등), 컴퓨터용(Computer Braille Code)으로 독립된 점자 코드가 병존하여 학습 및 시스템 양면에서 심각한 혼란을 초래했습니다.
</p>
<p>
이러한 국가에 따른 차이나 전문 분야별 복잡한 코드의 난립을 해소하기 위해 1990년대부터 국제적인 공통 규격 제정이 시작되었습니다.
그 결과 탄생한 것이 현재 세계 표준으로 채택된 <strong>통일 영어 점자(UEB: Unified English Braille)</strong>입니다.
</p>
<p>
EBAE 등 통합된 기존 방식과의 가장 뚜렷한 변경점은 기호류의 정리와 약자(Grade 2) 규칙의 삭감 및 엄격화입니다.
기존 방식에서는 글자 수를 조금이라도 줄이기 위해 매우 복잡하고 다양한 약어 규칙(Contractions)을 두었지만, UEB에서는 헷갈리기 쉬운 일부 약자가 폐지되었습니다(예: "ble" 및 "com").
또한 URL이나 이메일 주소 등에서는 약자를 사용하지 않는 규칙이 마련되었고, <code>@</code>나 <code>/</code>와 같이 현대 디지털 사회에서 필수적인 새로운 기호가 표준으로 정의되었습니다.
</p>
<p>
현재 미국, 영국, 호주, 캐나다, 뉴질랜드 등 주요 영어권 국가는 모두 UEB로 전환을 완료했으며, 전 세계의 영어 교재나 공적 문서가 UEB 기준에 따라 제공되고 있습니다.
</p>
