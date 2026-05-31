<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>N진수에 대해서</h3>
<p>N진수(기수 N)는 수치를 N개의 기호(보통은 숫자 '0~9'와 알파벳 'A~Z')를 사용하여 표현하는 기수법입니다.</p>

<p>DenCode에서는 2부터 36까지의 기수를 지원합니다. 10진수보다 큰 기수(11진수~36진수)에서는 10 이상의 수치를 나타내기 위해 알파벳 'A'부터 순서대로 사용합니다. 예를 들어, 16진수에서는 10~15를 A~F로 나타내고, 36진수에서는 10~35를 A~Z로 나타냅니다.</p>

<p>각 진수에서의 변환 예는 다음과 같습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10진수</th><th>2진수</th><th>8진수</th><th>16진수</th><th>32진수</th><th>36진수</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td><td class="text-right">8</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td><td class="text-right">9</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td><td class="text-right">A</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td><td class="text-right">F</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">G</td><td class="text-right">G</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td><td class="text-right">H</td><td class="text-right">H</td></tr>
			<tr><td class="text-right">31</td><td class="text-right">11111</td><td class="text-right">37</td><td class="text-right">1F</td><td class="text-right">V</td><td class="text-right">V</td></tr>
			<tr><td class="text-right">32</td><td class="text-right">100000</td><td class="text-right">40</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">W</td></tr>
			<tr><td class="text-right">35</td><td class="text-right">100011</td><td class="text-right">43</td><td class="text-right">23</td><td class="text-right">13</td><td class="text-right">Z</td></tr>
			<tr><td class="text-right">36</td><td class="text-right">100100</td><td class="text-right">44</td><td class="text-right">24</td><td class="text-right">14</td><td class="text-right">10</td></tr>
		</tbody>
	</table>
</div>

<p>또한 소수점 이하의 수치는 N진수에서는 N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... 의 각 자릿수 값으로서 변환합니다. 소수점 이하의 수치가 N<sup>-n</sup>의 합계로 나타낼 수 없는 경우는, 완전하게는 N진수로 변환할 수 없어 오차가 발생합니다. 그 경우 DenCode에서는 끝에 "..."을 붙임으로써 생략하여 나타냅니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10진수</th><th>2진수</th><th>8진수</th><th>16진수</th><th>32진수</th><th>36진수</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
