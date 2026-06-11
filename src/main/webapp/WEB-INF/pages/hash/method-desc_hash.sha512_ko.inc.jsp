<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-512 정보</h3>
<p>SHA-512는 임의 길이의 데이터에서 512비트 해시값을 생성하는 암호학적 해시 함수입니다. SHA-2 계열의 하나로, <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>보다 긴 해시값을 출력합니다.</p>
<p>DenCode에서는 입력된 문자열을 지정된 문자 인코딩의 바이트열로 처리하고, SHA-512 해시값을 128자리 16진수로 표시합니다.</p>

<p>예를 들어, "Hello, world!"의 SHA-512 해시값은 다음과 같습니다.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>해시값의 특징</h4>
<p>SHA-512에서는 같은 입력에서 항상 같은 해시값이 생성됩니다. 입력이 조금이라도 바뀌면 출력되는 해시값은 크게 달라집니다.</p>
<p>해시 함수는 일방향 함수이므로 해시값에서 원래 입력 데이터를 복원할 수 없습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력</th><th scope="col">SHA-512 해시값</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
