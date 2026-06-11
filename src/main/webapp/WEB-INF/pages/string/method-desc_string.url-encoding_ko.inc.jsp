<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>URL 인코딩에 대해</h3>
<p>URL 인코딩은 URL에 포함되는 문자열을 안전하게 표현하기 위한 인코딩 방식입니다. 정식 명칭은 URI 사양인 <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>에서 정의하는 "퍼센트 인코딩 (percent-encoding)"입니다.</p>
<p>URL에서 특별한 의미를 갖는 문자나 URL에서 그대로 다루기 어려운 문자를 퍼센트 기호 (%)와 2자리 16진수 형식으로 변환합니다.</p>
<p>예를 들어 공백은 <code>%20</code>, 느낌표 (<code>!</code>)는 <code>%21</code>, 일본어 문자 "あ"는 UTF-8에서 <code>%E3%81%82</code>로 표현됩니다.</p>

<p>URL 인코딩에서는 문자열을 선택한 문자 인코딩의 바이트열로 변환한 뒤, 필요한 각 바이트를 <code>%HH</code> 형식으로 나타냅니다. DenCode에서는 RFC 3986의 비예약 문자, 즉 영숫자와 <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>는 변환하지 않고, 그 밖의 문자를 퍼센트 인코딩합니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">문자</th><th scope="col">URL 인코딩 후</th><th scope="col">설명</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>영숫자는 비예약 문자이므로 변환하지 않습니다.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>는 비예약 문자이므로 변환하지 않습니다.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>URL 경로 구분자로 의미를 가지므로 값으로 사용할 때는 인코딩합니다.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>쿼리 문자열의 시작을 나타내는 예약 문자입니다.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>쿼리 매개변수를 구분하는 예약 문자입니다.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>쿼리 매개변수의 이름과 값을 구분하는 예약 문자입니다.</td></tr>
		<tr><td>공백</td><td><code>%20</code></td><td>URL의 퍼센트 인코딩에서는 <code>%20</code>, <code>application/x-www-form-urlencoded</code>에서는 <code>+</code>로 인코딩합니다.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td><code>+</code> 자체를 값으로 사용할 때는 인코딩해야 합니다.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>UTF-8에서는 3바이트열로 인코딩됩니다.</td></tr>
	</table>
</div>

<p>예를 들어 "Hello, world!"를 URL 인코딩하면 다음과 같습니다.</p>

<pre>Hello%2C%20world%21</pre>

<p>이 예에서는 쉼표 (<code>,</code>)가 <code>%2C</code>, 공백이 <code>%20</code>, 느낌표 (<code>!</code>)가 <code>%21</code>로 변환됩니다.</p>


<h4>application/x-www-form-urlencoded의 공백 표기</h4>
<p>HTML 폼 전송 등에 사용되는 <code>application/x-www-form-urlencoded</code>에서는 공백을 <code>+</code>로 나타낼 수 있습니다. 이 형식은 <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a>에서 폼 전송용 인코딩으로 정의되어 있습니다.</p>
<p>DenCode에서는 인코딩 시 공백을 <code>%20</code> 또는 <code>+</code> 중 어느 형식으로 출력할지 선택할 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">형식</th><th scope="col">"Hello world"의 변환 결과</th><th scope="col">용도</th></tr>
		<tr><td>퍼센트 인코딩</td><td><code>Hello%20world</code></td><td>URL 일반에 사용하기 쉬운 형식입니다.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>HTML 폼의 쿼리 문자열이나 요청 본문에서 사용되는 형식입니다.</td></tr>
	</table>
</div>
