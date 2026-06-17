<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-3 정보</h3>
<p>SHA-3은 임의 길이의 데이터에서 고정 길이의 해시값을 생성하는 암호학적 해시 함수입니다. SHA-3에는 해시값 길이가 다른 SHA3-224, SHA3-256, SHA3-384, SHA3-512 네 가지 함수가 있습니다.</p>
<p>DenCode에서는 입력된 문자열을 지정된 문자 인코딩의 바이트열로 처리하고, SHA-3 해시값을 16진수로 표시합니다.</p>

<p>예를 들어, "Hello, world!"의 SHA3-256 해시값은 다음과 같습니다.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>해시값의 특징</h4>
<p>SHA-3에서는 같은 입력에서 항상 같은 해시값이 생성됩니다. 입력이 조금이라도 바뀌면 출력되는 해시값은 크게 달라집니다.</p>
<p>해시 함수는 일방향 함수이므로 해시값에서 원래 입력 데이터를 복원할 수 없습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력</th><th scope="col">SHA3-256 해시값</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>SHA-2와의 차이</h4>
<p>SHA-2는 MD5와 SHA-1과 같은 계열의 Merkle-Damgård 구조를 바탕으로 합니다. 반면 SHA-3은 Keccak을 표준화한 것으로, 스펀지 구조를 사용합니다. 따라서 SHA-256과 SHA3-256은 모두 256비트 해시값을 출력하지만, 생성되는 값은 서로 다릅니다.</p>
