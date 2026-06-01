<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Lab 색상 정보</h3>
<p>Lab 색상은 명도, 초록에서 빨강으로 향하는 축, 파랑에서 노랑으로 향하는 축으로 색을 표현하는 색 공간입니다. 디스플레이의 빨강, 초록, 파랑 성분을 직접 지정하는 RGB와 달리, Lab은 밝기와 색감을 사람의 시각에 더 가까운 방식으로 분리합니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>성분</th><th>의미</th><th>값 예</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 명도</td><td>색의 밝기를 나타냅니다. 0%는 검정, 100%는 흰색입니다.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>초록에서 빨강으로 향하는 방향을 나타냅니다. 음수는 초록 쪽, 양수는 빨강 쪽입니다.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>파랑에서 노랑으로 향하는 방향을 나타냅니다. 음수는 파랑 쪽, 양수는 노랑 쪽입니다.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>예를 들어 빨강과 같은 주요 색은 다음과 같이 나타낼 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>Lab 표기</th><th>RGB 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>초록</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>라임</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>파랑</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>흰색</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>검정</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>투명도를 포함하려면 알파 값을 추가합니다. 예를 들어 반투명 빨강은 다음과 같이 나타낼 수 있습니다: <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>명도, a, b의 처리</h4>
<p>색의 밝기를 나타냅니다. 0%는 검정, 100%는 흰색입니다 0% 미만은 0%, 100% 초과는 100%로 제한합니다.</p>

<p><code>a</code>와 <code>b</code>는 양수 또는 음수로 지정합니다. 값은 고정 범위로 잘리지 않고 지정된 성분으로 처리됩니다.</p>

<h4>Lab과 LCH의 차이</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> 는 Lab과 같은 지각 기반 개념을 사용하지만 색감을 채도와 색상으로 표현합니다.</p>
