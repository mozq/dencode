<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>CRC32 정보</h3>
<p>CRC32는 임의 길이의 데이터에서 32비트 검사값을 생성하는 오류 검출 방식입니다. 파일 전송이나 압축 형식 등에서 데이터가 손상되지 않았는지 확인하는 데 사용됩니다.</p>
<p>DenCode에서는 입력된 문자열을 지정된 문자 인코딩의 바이트열로 처리하고, CRC32 값을 16진수로 표시합니다.</p>

<p>예를 들어, "Hello, world!"의 CRC32는 다음과 같습니다.</p>

<pre>ebe6c6e6</pre>

<h4>CRC32의 특징</h4>
<p>CRC32는 우발적인 데이터 손상을 검출하는 목적에 적합합니다. 하지만 암호학적 해시 함수가 아니므로 변조에 대한 안전성이 필요한 용도에는 적합하지 않습니다.</p>
<p>CRC32에서는 같은 입력에서 항상 같은 값이 생성됩니다. 입력이 바뀌면 출력되는 값도 바뀝니다. 다만 CRC32 값에서 원래 입력 데이터를 복원할 수는 없습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
