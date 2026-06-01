<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>HWB 색상 정보</h3>
<p>HWB 색상은 색상, 백색도, 흑색도라는 세 가지 성분으로 색을 표현하는 색 모델입니다. 색상은 기본 색감을 지정하고, 백색도와 흑색도는 흰색과 검정을 얼마나 섞을지를 지정하므로 색을 밝게 하거나 어둡게 하거나 회색에 가깝게 만드는 조정을 직관적으로 이해하기 쉽습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>성분</th><th>의미</th><th>값 예</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 색상</td><td>색감을 각도로 나타냅니다. 빨강은 0deg, 초록은 120deg, 파랑은 240deg 부근입니다.</td><td><code>90deg</code></td></tr>
			<tr><td>W: 백색도</td><td>색에 섞는 흰색의 양을 나타냅니다. 값이 클수록 더 흰색에 가까워집니다.</td><td><code>20%</code></td></tr>
			<tr><td>B: 흑색도</td><td>색에 섞는 검정의 양을 나타냅니다. 값이 클수록 더 어두워집니다.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>예를 들어 빨강과 같은 주요 색은 다음과 같이 나타낼 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>HWB 표기</th><th>RGB 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>초록</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>라임</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>파랑</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>흰색</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>검정</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>투명도를 포함하려면 알파 값을 추가합니다. 예를 들어 반투명 빨강은 <code>hwb(0deg 0% 0% / 0.5)</code> 와 같이 나타낼 수 있습니다.</p>

<h4>색상, 백색도, 흑색도의 처리</h4>
<p>색상은 각도로 처리하며, 360deg를 넘는 값이나 음수 값은 0deg부터 360deg 범위로 정규화합니다. 예를 들어 <code>hwb(360deg 0% 0%)</code> 는 <code>hwb(0deg 0% 0%)</code> 와 같은 색으로, <code>hwb(-120deg 0% 0%)</code> 는 <code>hwb(240deg 0% 0%)</code> 와 같은 색으로 처리합니다.</p>

<p>백색도와 흑색도는 0%부터 100%까지의 범위로 처리합니다. 백색도가 클수록 흰색에 가까워지고, 흑색도가 클수록 검정에 가까워집니다. 백색도와 흑색도의 합이 100% 이상이면 색상과 관계없이 회색 계열의 색으로 처리합니다.</p>

<h4>HWB와 HSL의 차이</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a>은 채도와 명도로 색을 조정하므로 색의 선명함이나 밝기를 지정하는 데 적합합니다. HWB는 섞는 흰색과 검정의 양으로 색을 조정하므로 “같은 색상으로 더 흰색에 가깝게 만들기” 또는 “검정을 더해 어둡게 만들기” 같은 작업을 설명하기 쉽습니다.</p>

<p>다만 HWB도 사람의 지각에 완전히 균일한 색 공간은 아닙니다. 눈에 보이는 밝기나 색 차이를 더 쉽게 다루려면 <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a>, <a href="${dc:h(basePath)}/color/oklch">Oklch</a> 같은 색 공간을 사용할 수 있습니다.</p>
