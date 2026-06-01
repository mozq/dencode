<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>HSL 색상 정보</h3>
<p>HSL 색상은 색상, 채도, 명도로 색을 표현하는 색 모델입니다. 빨강, 초록, 파랑 빛의 세기를 직접 지정하는 RGB와 달리 HSL은 색감, 선명함, 밝기를 분리하므로 색 조정과 CSS 디자인 작업에 자주 사용됩니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>성분</th><th>의미</th><th>값 예</th></tr>
		</thead>
		<tbody>
			<tr><td>H: 색상</td><td>색감을 각도로 나타냅니다. 빨강은 0deg, 초록은 120deg, 파랑은 240deg 부근입니다.</td><td><code>90deg</code></td></tr>
			<tr><td>S: 채도</td><td>색의 선명함을 나타냅니다. 0%는 무채색, 100%는 가장 선명한 색입니다.</td><td><code>50%</code></td></tr>
			<tr><td>L: 명도</td><td>색의 밝기를 나타냅니다. 0%는 검정, 50%는 일반적인 밝기, 100%는 흰색입니다.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>예를 들어 빨강과 같은 주요 색은 다음과 같이 나타낼 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>HSL 표기</th><th>RGB 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>초록</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>라임</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>파랑</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>흰색</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>검정</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>투명도를 포함하려면 알파 값을 추가합니다. 예를 들어 반투명 빨강은 <code>hsl(0deg 100% 50% / 0.5)</code> 와 같이 나타낼 수 있습니다.</p>

<p>입력에서는 <code>hsl(0deg 100% 50%)</code> 같은 공백 구분 표기와 <code>hsl(0deg, 100%, 50%)</code> 같은 기존 쉼표 구분 표기를 사용할 수 있습니다.</p>

<h4>색상, 채도, 명도의 처리</h4>
<p>색상은 각도로 처리하며, 360deg를 넘는 값이나 음수 값은 0deg부터 360deg 범위로 정규화합니다. 예를 들어 <code>hsl(360deg 100% 50%)</code> 는 <code>hsl(0deg 100% 50%)</code> 와 같은 색으로, <code>hsl(-120deg 100% 50%)</code> 는 <code>hsl(240deg 100% 50%)</code> 와 같은 색으로 처리됩니다.</p>

<p>채도와 명도는 0%부터 100%까지의 범위로 처리합니다. 채도가 0%이면 색상과 관계없이 회색 계열의 무채색이 됩니다. 명도가 0%이면 검정, 100%이면 흰색이 됩니다.</p>

<h4>HSL과 RGB의 차이</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a>는 빨강, 초록, 파랑 성분을 직접 지정하므로 화면 표시나 이미지 데이터에 가까운 표현입니다. HSL은 색상, 채도, 명도를 분리하므로 “같은 색상으로 더 밝게 만들기” 또는 “채도만 낮추기” 같은 조정이 쉽습니다.</p>

<p>다만 HSL은 사람의 지각에 완전히 균일한 색 공간은 아닙니다. 눈에 보이는 밝기나 색 차이를 더 쉽게 다루려면 <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a>, <a href="${dc:h(basePath)}/color/oklch">Oklch</a> 같은 색 공간을 사용할 수 있습니다.</p>
