<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Oklab 색상 정보</h3>
<p>Oklab 색상은 명도와 두 색 성분으로 색을 표현하는 지각 기반 색 공간입니다. Lab처럼 밝기와 색감을 분리하지만, 더 새로운 모델로서 색 변화가 눈에 보이는 느낌에 더 가깝도록 설계되었습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>성분</th><th>의미</th><th>값 예</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 명도</td><td>색의 밝기를 나타냅니다. 0%는 검정, 100%는 흰색입니다.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>초록에서 빨강으로 향하는 방향을 나타냅니다. 음수는 초록 쪽, 양수는 빨강 쪽입니다.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>파랑에서 노랑으로 향하는 방향을 나타냅니다. 음수는 파랑 쪽, 양수는 노랑 쪽입니다.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>예를 들어 빨강과 같은 주요 색은 다음과 같이 나타낼 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>Oklab 표기</th><th>RGB 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>초록</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>라임</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>파랑</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>흰색</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>검정</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>투명도를 포함하려면 알파 값을 추가합니다. 예를 들어 반투명 빨강은 다음과 같이 나타낼 수 있습니다: <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>명도, a, b의 처리</h4>
<p>색의 밝기를 나타냅니다. 0%는 검정, 100%는 흰색입니다 0% 미만은 0%, 100% 초과는 100%로 제한합니다.</p>

<p><code>a</code>와 <code>b</code>는 양수 또는 음수로 지정합니다. 값은 고정 범위로 잘리지 않고 지정된 성분으로 처리됩니다.</p>

<h4>Oklab과 Oklch의 차이</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> 는 Oklab과 같은 지각 기반 개념을 사용하지만 색감을 채도와 색상으로 표현합니다.</p>

<h4>Oklab과 Lab의 차이</h4>
<p>Oklab 은 <a href="${dc:h(basePath)}/color/lab">Lab</a> 보다 색 변화가 시각적으로 더 균일해지도록 설계되었습니다.</p>
