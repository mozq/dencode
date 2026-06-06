<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>로마 숫자에 대해</h3>
<p>로마 숫자는 <code>I</code>, <code>V</code>, <code>X</code>, <code>L</code>, <code>C</code>, <code>D</code>, <code>M</code> 기호를 조합하여 정수를 나타냅니다.</p>

<p>표준 로마 숫자는 1부터 3999까지의 정수를 나타낼 수 있습니다. 0을 나타내는 기호는 없습니다.</p>
<pre>
1234 = MCCXXXIV
3999 = MMMCMXCIX
</pre>

<h4>기본 기호</h4>
<p>로마 숫자는 다음 일곱 가지 기호를 사용합니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>기호</th><th>값</th></tr>
		</thead>
		<tbody>
			<tr><td><code>I</code></td><td>1</td></tr>
			<tr><td><code>V</code></td><td>5</td></tr>
			<tr><td><code>X</code></td><td>10</td></tr>
			<tr><td><code>L</code></td><td>50</td></tr>
			<tr><td><code>C</code></td><td>100</td></tr>
			<tr><td><code>D</code></td><td>500</td></tr>
			<tr><td><code>M</code></td><td>1000</td></tr>
		</tbody>
	</table>
</div>

<h4>가산 표기</h4>
<p>값이 큰 기호에서 작은 기호 순서로 나열하면 각 값을 더합니다.</p>
<pre>
VIII = 5 + 1 + 1 + 1 = 8
LX = 50 + 10 = 60
MDC = 1000 + 500 + 100 = 1600
</pre>

<p><code>I</code>, <code>X</code>, <code>C</code>, <code>M</code>은 최대 세 번까지 연속해서 사용할 수 있습니다. <code>V</code>, <code>L</code>, <code>D</code>는 같은 자리에서 한 번만 사용합니다.</p>

<h4>감산 표기</h4>
<p>작은 기호를 큰 기호 바로 앞에 두면 작은 값을 뺍니다. 표준 로마 숫자에서는 다음 여섯 가지 감산 표기를 사용합니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>표기</th><th>값</th></tr>
		</thead>
		<tbody>
			<tr><td><code>IV</code></td><td>4</td></tr>
			<tr><td><code>IX</code></td><td>9</td></tr>
			<tr><td><code>XL</code></td><td>40</td></tr>
			<tr><td><code>XC</code></td><td>90</td></tr>
			<tr><td><code>CD</code></td><td>400</td></tr>
			<tr><td><code>CM</code></td><td>900</td></tr>
		</tbody>
	</table>
</div>

<pre>
44 = XLIV
999 = CMXCIX
1999 = MCMXCIX
</pre>

<p><code>IC</code>를 99, <code>IL</code>을 49, <code>VX</code>를 5로 처리하는 표기는 표준이 아니므로 지원하지 않습니다.</p>

<h4>로마 숫자의 역사</h4>
<p>로마 숫자는 고대 로마에서 수를 세기 위한 단순한 표시와 새김눈에서 발전한 것으로 여겨집니다. <code>I</code>와 같은 세로획이 1을 나타내고, 5와 10의 묶음을 별도의 기호로 나타내게 되었으며, 이후 <code>V</code>, <code>X</code>, <code>L</code>, <code>C</code>, <code>D</code>, <code>M</code>을 조합하는 체계로 정리되었습니다.</p>

<p>초기의 로마 숫자는 오늘날처럼 엄격하게 통일된 표기가 아니었습니다. 예를 들어 4는 <code>IV</code>뿐 아니라 <code>IIII</code>로도 쓰였고, 9도 <code>IX</code> 대신 <code>VIIII</code>로 쓰이는 경우가 있었습니다. 오늘날 일반적인 <code>IV</code>, <code>IX</code>, <code>XL</code>, <code>XC</code>, <code>CD</code>, <code>CM</code>과 같은 감산 표기는 후대에 표준 표기로 정리된 것입니다.</p>

<p>로마 숫자는 상거래, 비문, 달력, 시계, 장 번호 등에서 오랫동안 사용되었습니다. 오늘날에도 연도와 번호를 나타내는 장식적이고 관용적인 표기로 남아 있습니다.</p>
