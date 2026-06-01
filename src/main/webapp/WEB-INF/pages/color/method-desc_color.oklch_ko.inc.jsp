<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Oklch 색상 정보</h3>
<p>Oklch 색상은 명도, 채도, 색상으로 색을 표현하는 지각 기반 색 공간입니다. Oklab과 같은 개념을 사용하지만, 색감을 채도와 각도로 표현하므로 색의 강도와 색상을 따로 조정하기 쉽습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>성분</th><th>의미</th><th>값 예</th></tr>
		</thead>
		<tbody>
			<tr><td>L: 명도</td><td>색의 밝기를 나타냅니다. 0%는 검정, 100%는 흰색입니다.</td><td><code>60%</code></td></tr>
			<tr><td>C: 채도</td><td>색의 강도를 나타냅니다. 0은 무채색이며 값이 클수록 더 선명한 색이 됩니다.</td><td><code>0.2</code></td></tr>
			<tr><td>H: 색상</td><td>색상을 각도로 나타냅니다.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>예를 들어 빨강과 같은 주요 색은 다음과 같이 나타낼 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>Oklch 표기</th><th>RGB 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>초록</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>라임</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>파랑</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>흰색</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>검정</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>투명도를 포함하려면 알파 값을 추가합니다. 예를 들어 반투명 빨강은 다음과 같이 나타낼 수 있습니다: <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>명도, 채도, 색상의 처리</h4>
<p>색의 밝기를 나타냅니다. 0%는 검정, 100%는 흰색입니다 0% 미만은 0%, 100% 초과는 100%로 제한합니다.</p>

<p>색의 강도를 나타냅니다. 0은 무채색이며 값이 클수록 더 선명한 색이 됩니다. 음수 채도는 0으로 처리합니다. 채도가 0이면 무채색이 되고 색상은 0deg로 처리합니다.</p>

<p>색상을 각도로 나타냅니다. <code>oklch(62.8% 0.2577 389.23deg)</code> 는 <code>oklch(62.8% 0.2577 29.23deg)</code> 와 같은 색으로 처리됩니다.</p>

<h4>Oklch와 Oklab의 차이</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> 은 a와 b의 직교 좌표로 색을 표현합니다. Oklch는 이를 채도와 색상으로 바꾸어 표현하므로 조정이 더 직관적일 수 있습니다.</p>

<h4>Oklch와 LCH의 차이</h4>
<p>Oklch 는 <a href="${dc:h(basePath)}/color/lch">LCH</a> 보다 색상이나 채도를 바꿀 때 시각적 변화가 더 균일하도록 설계되었습니다.</p>
