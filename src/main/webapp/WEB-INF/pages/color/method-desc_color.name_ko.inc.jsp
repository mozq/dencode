<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>색상 이름 정보</h3>
<p>색상 이름은 CSS에 정의된 이름 있는 색상을 사용해 색을 표현하는 방법입니다. <code>red</code>, <code>blue</code>, <code>orange</code> 같은 키워드로 지정할 수 있으므로 HTML이나 CSS에서 자주 쓰는 색을 읽기 쉽게 작성할 수 있습니다.</p>

<p>예를 들어 빨강과 같은 주요 색은 다음과 같이 나타낼 수 있습니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>색상 이름</th><th>RGB 표기</th><th>16진 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>라임</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>파랑</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>흰색</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>검정</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>주황</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>투명</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> 는 투명한 검정을 나타내는 특별한 색상 이름입니다.</p>

<p>색상 이름은 <code>transparent</code> 를 제외하면 투명도 정보를 가지지 않습니다. DenCode에서는 투명도를 포함한 색이 이름 있는 색상으로 표현될 수 있는 경우 CSS 상대 색상 구문으로 표시합니다. 예를 들어 반투명 <code>red</code> 는 <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code> 와 같이 나타냅니다.</p>

<h4>색상 이름과 RGB의 차이</h4>
<p>색상 이름은 사람이 읽기 쉬운 키워드로 대표적인 색을 나타내는 방법입니다. 반면 <a href="${dc:h(basePath)}/color/rgb">RGB</a>는 빨강, 초록, 파랑의 성분 값을 지정하여 더 많은 색을 수치로 표현할 수 있습니다. CSS나 HTML에서 읽기 쉬움을 우선할 때는 색상 이름이, 세부 색 지정이나 색 변환에는 RGB 표기가 자주 사용됩니다.</p>
