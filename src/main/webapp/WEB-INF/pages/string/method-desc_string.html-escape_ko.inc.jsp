<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>HTML 이스케이프 정보</h3>
<p>HTML 이스케이프는 HTML에서 특별한 의미를 가지는 문자를 문자 참조로 변환하여, 문자열을 HTML 텍스트로 안전하게 표시하기 위한 변환입니다. 예를 들어 태그로 해석될 수 있는 <code>&lt;</code>와 <code>&gt;</code>는 <code>&amp;lt;</code>, <code>&amp;gt;</code>처럼 나타냅니다.</p>
<p>HTML 이스케이프를 하면 입력한 문자열이 HTML 태그나 속성으로 해석되지 않고 화면에 그대로 텍스트로 표시됩니다.</p>

<p>예를 들어 “&lt;p&gt;Hello, world!&lt;/p&gt;”를 HTML 이스케이프하면 다음과 같습니다.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">문자</th><th scope="col">HTML 이스케이프 후</th><th scope="col">설명</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>HTML 태그의 시작으로 해석될 수 있는 문자입니다.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>HTML 태그의 끝으로 해석될 수 있는 문자입니다.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>문자 참조의 시작으로 해석될 수 있는 문자입니다.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>속성값을 큰따옴표로 감쌀 때 특별한 의미를 가집니다.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>속성값을 작은따옴표로 감쌀 때 특별한 의미를 가집니다.</td></tr>
	</table>
</div>

<h4>HTML 이스케이프 옵션</h4>
<p>DenCode에서는 대상, 이름 있는 문자 참조의 사용 방식, 숫자 참조 표기를 선택할 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<caption>대상</caption>
		<tr><th scope="col">옵션</th><th scope="col">설명</th><th scope="col">“A &lt; 😀” 변환 예</th></tr>
		<tr><td>기본</td><td><code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code>, <code>'</code> 다섯 문자를 변환합니다.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>기본 + 비ASCII</td><td>기본 다섯 문자와 비ASCII 문자를 변환합니다.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>영숫자 제외</td><td>ASCII 영문자와 숫자가 아닌 문자를 변환합니다.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>전체</td><td>모든 문자를 변환합니다.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>일반적인 HTML 표시에는 필요한 문자만 변환하는 “기본”이 자주 사용됩니다. 문자열을 HTML 문자 참조로 확인하거나 모든 문자를 명시적인 참조 형식으로 나타내려면 “전체”를 사용할 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<caption>이름 있는 문자 참조</caption>
		<tr><th scope="col">옵션</th><th scope="col">설명</th><th scope="col">예</th></tr>
		<tr><td>HTML5</td><td>HTML5에 정의된 이름 있는 문자 참조를 사용합니다.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>HTML4에 정의된 이름 있는 문자 참조를 사용합니다.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td><code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code>, <code>&amp;apos;</code> 다섯 참조를 사용합니다.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>없음</td><td>이름 있는 문자 참조를 사용하지 않고 숫자 참조만 사용합니다.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>숫자 참조 표기</caption>
		<tr><th scope="col">옵션</th><th scope="col">설명</th><th scope="col">예</th></tr>
		<tr><td>10진수</td><td>10진수 숫자 참조를 사용합니다.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>16진수 소문자</td><td>소문자 16진수 숫자 참조를 사용합니다.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>16진수 대문자</td><td>대문자 16진수 숫자 참조를 사용합니다.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
