<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD5 정보</h3>
<p>MD5는 임의 길이의 데이터에서 128비트 해시값을 생성하는 해시 함수입니다. 널리 사용되었지만 충돌 저항성에 문제가 있어 현재의 암호학적 용도에는 권장되지 않습니다.</p>
<p>DenCode에서는 입력된 문자열을 지정된 문자 인코딩의 바이트열로 처리하고, MD5 해시값을 32자리 16진수로 표시합니다.</p>

<p>예를 들어, "Hello, world!"의 MD5 해시값은 다음과 같습니다.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>해시값의 특징</h4>
<p>MD5에서는 같은 입력에서 항상 같은 해시값이 생성됩니다. 입력이 조금이라도 바뀌면 출력되는 해시값은 크게 달라집니다.</p>
<p>해시 함수는 일방향 함수이므로 해시값에서 원래 입력 데이터를 복원할 수 없습니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력</th><th scope="col">MD5 해시값</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5는 오래된 체크섬과의 비교 등에서 볼 수 있지만, 변조 감지나 서명처럼 안전성이 필요한 용도에는 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 같은 더 새로운 해시 함수 사용을 검토하세요.</p>
