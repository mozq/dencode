<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-256 정보</h3>
<p>SHA-256은 임의 길이의 데이터에서 256비트 해시값을 생성하는 암호학적 해시 함수입니다. SHA-2 계열의 하나로, 파일 변조 감지, 데이터 무결성 확인, 전자 서명, 인증서, 블록체인 등 다양한 용도에 사용됩니다.</p>
<p>DenCode에서는 입력된 문자열을 지정된 문자 인코딩의 바이트열로 처리하고, SHA-256 해시값을 64자리 16진수로 표시합니다.</p>

<p>예를 들어, "Hello, world!"의 SHA-256 해시값은 다음과 같습니다.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>해시값의 특징</h4>
<p>SHA-256에서는 같은 입력에서 항상 같은 해시값이 생성됩니다. 입력이 조금이라도 바뀌면 출력되는 해시값은 크게 달라집니다.</p>
<p>해시 함수는 일방향 함수이므로 해시값에서 원래 입력 데이터를 복원할 수 없습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력</th><th scope="col">SHA-256 해시값</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
