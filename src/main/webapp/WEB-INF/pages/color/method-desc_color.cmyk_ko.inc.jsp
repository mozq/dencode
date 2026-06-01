<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>CMYK 색상 정보</h3>
<p>CMYK 색상은 시안, 마젠타, 노랑, 검정(Key plate)의 네 가지 성분으로 색을 표현하는 색 모델입니다. 주로 인쇄와 DTP 분야에서 사용되며, 잉크를 겹쳐 색을 만드는 감산 혼합의 원리에 기반합니다.</p>

<p>CMYK에서는 각 성분의 양을 0%부터 100%까지의 범위로 나타냅니다. 일반적으로 <code>C</code>, <code>M</code>, <code>Y</code>는 색감을, <code>K</code>는 검정의 양을 나타냅니다. 모든 성분이 0%이면 흰색이고, <code>K</code>가 100%이면 검정에 가까운 색이 됩니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>CMYK 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>시안</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>마젠타</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>노랑</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>흰색</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>검정</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>투명도를 포함하려면 알파 값을 추가합니다. 예를 들어 반투명 빨강은 <code>device-cmyk(0% 100% 100% 0% / 0.5)</code> 와 같이 나타낼 수 있습니다.</p>

<h4>색상 프로파일</h4>
<p>DenCode에서는 여러 색상 프로파일을 선택할 수 있습니다. 지원하는 색상 프로파일은 다음과 같습니다.</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYK 색상</caption>
		<thead>
			<tr><th>색상 프로파일</th><th>CMYK 표기 예</th><th>특징</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>단순한 RGB와 CMYK 변환입니다. 특정 인쇄 조건이나 ICC 프로파일에 의존하지 않습니다.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>U.S. Web Coated (SWOP) v2에 근사한 CMYK 색상 프로파일입니다.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>SWOP 2013 C3 ICC 프로파일을 사용한 CMYK 변환입니다.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>GRACoL 2013 ICC 프로파일을 사용한 CMYK 변환입니다.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>FOGRA39 ICC 프로파일을 사용한 CMYK 변환입니다.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>FOGRA51에 근사한 CMYK 색상 프로파일입니다.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>FOGRA52에 근사한 CMYK 색상 프로파일입니다.</td></tr>
		</tbody>
	</table>
</div>

<p>“ICC 프로파일” 또는 “근사 색상 프로파일”의 CMYK 색상은 CSS 사용자 정의 색 공간 형식인 <code>color(--profile C% M% Y% K%)</code> 형태로 나타냅니다. 실제 CSS에서 사용할 때는 <code>@color-profile</code>로 해당 ICC 프로파일을 지정합니다.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>근사 색상 프로파일은 공개된 Characterization data를 기반으로 근사 CMYK 색상을 계산합니다. 따라서 CSS의 <code>@color-profile</code>에서 비슷한 ICC 프로파일을 사용하더라도 표시되는 색감이 약간 다를 수 있습니다.</p>

<h4>CMYK와 RGB의 차이</h4>
<p>CMYK는 인쇄 잉크를 다루는 감산 혼합 색 모델입니다. 반면 <a href="${dc:h(basePath)}/color/rgb">RGB</a>는 디스플레이 같은 빛을 다루는 가산 혼합 색 모델입니다. 같은 색처럼 보이더라도 CMYK와 RGB의 성분 값은 크게 다를 수 있습니다.</p>
