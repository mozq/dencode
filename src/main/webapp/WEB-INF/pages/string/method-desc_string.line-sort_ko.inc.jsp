<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>행 정렬에 대하여</h3>
<p>행 정렬은 여러 줄의 텍스트를 줄 단위로 다시 배열하는 변환입니다. 입력된 행을 오름차순, 내림차순으로 정렬하거나 현재 순서를 그대로 뒤집을 수 있습니다.</p>
<p>오름차순과 내림차순에서는 각 행 전체를 하나의 Unicode 문자열로 비교합니다. 역순에서는 각 행의 내용은 바꾸지 않고, 행의 순서만 위아래로 뒤집습니다.</p>

<p>예를 들어 다음 텍스트를 오름차순으로 정렬하면:</p>

<pre>
banana
apple
orange
</pre>

<p>결과는 다음과 같습니다:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">순서</th><th scope="col">설명</th><th scope="col">변환 예</th></tr>
		<tr><td>오름차순</td><td>Unicode 문자열 값이 작은 행부터 큰 행 순서로 정렬합니다.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>내림차순</td><td>Unicode 문자열 값이 큰 행부터 작은 행 순서로 정렬합니다.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>역순</td><td>입력된 행의 순서를 반대로 뒤집습니다.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>대문자와 소문자, 숫자, 기호, 한글 등은 각각 Unicode 문자로 비교됩니다. 따라서 정렬 결과는 자연어의 사전식 순서나 숫자의 크기가 아니라 문자열 비교를 기준으로 합니다.</p>
