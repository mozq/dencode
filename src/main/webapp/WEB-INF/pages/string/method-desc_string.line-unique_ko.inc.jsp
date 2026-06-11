<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>중복 행 삭제에 대하여</h3>
<p>중복 행 삭제는 여러 줄의 텍스트에서 반복되는 행을 제거하는 변환입니다. 같은 행이 두 번 이상 나타나면 처음 나온 행만 남기고 이후의 같은 행은 삭제합니다.</p>
<p>남은 행은 원래 나타난 순서를 유지합니다. 행 정렬은 수행하지 않습니다.</p>

<p>예를 들어, 다음 텍스트에서 중복 행을 삭제합니다:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>결과는 다음과 같습니다:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">입력 행</th><th scope="col">결과</th><th scope="col">설명</th></tr>
		<tr><td><code>apple</code> (1번째)</td><td>남음</td><td>처음 나타난 행입니다.</td></tr>
		<tr><td><code>banana</code> (1번째)</td><td>남음</td><td>처음 나타난 행입니다.</td></tr>
		<tr><td><code>apple</code> (2번째)</td><td>삭제</td><td>이미 동일한 행이 나타났습니다.</td></tr>
		<tr><td><code>orange</code> (1번째)</td><td>남음</td><td>처음 나타난 행입니다.</td></tr>
		<tr><td><code>banana</code> (2번째)</td><td>삭제</td><td>이미 동일한 행이 나타났습니다.</td></tr>
	</table>
</div>

<p>중복 판정은 각 행 전체의 문자열을 기준으로 합니다. 대문자와 소문자, 앞뒤 공백, 전각/반각 차이 등은 서로 다른 문자열로 취급됩니다.</p>
