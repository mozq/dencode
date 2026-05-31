<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>분수에 대해서</h3>
<p>분수(Fraction)는 수치를 분자(Numerator)와 분모(Denominator)의 비율(몫)로서 '분자/분모' 형식으로 나타내는 표현 방법입니다.</p>

<p>DenCode에서는 입력된 수치(정수 또는 소수)를 기약분수(더 이상 약분할 수 없는 분수)로 변환합니다.</p>

<p>분수로의 변환 예는 다음과 같습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10진수 (입력)</th><th>분수 (출력)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>끝에 '...'이 붙은 소수는 '생략된 수치'로 해석되어 다음 규칙에 따라 변환됩니다:</p>
<ul>
	<li><strong>반복 패턴이 있는 경우(순환소수):</strong> 소수점 이하의 반복 패턴(순환마디)을 자동으로 감지하여 정확한 분수 표현으로 변환합니다.</li>
	<li><strong>반복 패턴이 없는 경우:</strong> 입력된 자릿수에 기반한 유한소수로서 분수로 변환됩니다.</li>
</ul>

<p>끝에 '...'이 붙은 소수의 변환 예는 다음과 같습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10진수 (입력)</th><th>분수 (출력)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
