<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-384 정보</h3>
<p>SHA-384는 임의 길이의 데이터에서 384비트 해시값을 생성하는 암호학적 해시 함수입니다. SHA-2 계열의 하나로, <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>보다 긴 해시값을 출력합니다.</p>
<p>DenCode에서는 입력된 문자열을 지정된 문자 인코딩의 바이트열로 처리하고, SHA-384 해시값을 96자리 16진수로 표시합니다.</p>

<p>예를 들어, "Hello, world!"의 SHA-384 해시값은 다음과 같습니다.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>해시값의 특징</h4>
<p>SHA-384에서는 같은 입력에서 항상 같은 해시값이 생성됩니다. 입력이 조금이라도 바뀌면 출력되는 해시값은 크게 달라집니다.</p>
<p>해시 함수는 일방향 함수이므로 해시값에서 원래 입력 데이터를 복원할 수 없습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력</th><th scope="col">SHA-384 해시값</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
