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

<h4>기본 이스케이프와 전체 이스케이프</h4>
<p>DenCode에서는 HTML 이스케이프 결과로 “기본”과 “모두” 두 종류를 표시합니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">종류</th><th scope="col">설명</th><th scope="col">“A &lt; あ”의 변환 예</th></tr>
		<tr><td>HTML 이스케이프 (기본)</td><td><code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code>, <code>'</code> 다섯 문자를 변환합니다.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML 이스케이프 (모두)</td><td>HTML 이름 문자 참조가 있는 문자는 이름 문자 참조로, 그 외 문자는 10진수 숫자 문자 참조로 변환합니다.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>일반적인 HTML 표시에서는 필요한 문자만 변환하는 기본 이스케이프가 주로 사용됩니다. 전체 이스케이프는 문자열을 HTML 문자 참조로 확인하거나 모든 문자를 명시적인 참조 형식으로 나타내고 싶을 때 사용할 수 있습니다.</p>

<h4>언이스케이프</h4>
<p>HTML 언이스케이프는 HTML 문자 참조를 원래 문자로 되돌립니다. DenCode에서는 <code>&amp;lt;</code>, <code>&amp;amp;</code> 같은 이름 문자 참조뿐만 아니라 <code>&amp;#12354;</code> 같은 10진수 숫자 문자 참조와 <code>&amp;#x3042;</code> 같은 16진수 숫자 문자 참조도 디코드할 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML 문자 참조</th><th scope="col">언이스케이프 후</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
