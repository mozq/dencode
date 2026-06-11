<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>역순 텍스트에 대하여</h3>
<p>역순 텍스트는 입력된 문자열의 문자를 반대 순서로 바꾸는 변환입니다. 문자열 전체를 마지막 문자부터 첫 문자까지 거꾸로 읽습니다.</p>

<p>예를 들어, "Hello, world!"를 역순으로 변환하면 다음과 같습니다:</p>

<pre>!dlrow ,olleH</pre>

<p>여러 줄의 텍스트에서는 줄바꿈도 문자열의 일부로 취급됩니다. 따라서 줄의 순서를 포함해 전체 내용이 반대로 뒤집힙니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력</th><th scope="col">역순 변환 후</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>이 변환은 문장의 의미를 유지한 채 단어 순서를 바꾸는 기능이 아닙니다. 입력된 문자 순서를 그대로 반대로 뒤집습니다.</p>
