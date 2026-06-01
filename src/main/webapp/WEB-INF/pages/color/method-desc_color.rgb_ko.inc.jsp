<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>RGB 색상 정보</h3>
<p>RGB 색상은 빨강, 초록, 파랑 세 가지 빛 성분을 조합해 색을 표현하는 색 모델입니다. 디스플레이, 웹 페이지, 이미지 데이터처럼 화면에서 다루는 색 표현으로 널리 사용됩니다.</p>

<p>RGB에서는 각 성분의 세기를 수치로 지정합니다. 일반적으로 0부터 255까지의 정수 또는 0%부터 100%까지의 퍼센티지로 나타냅니다. 모든 성분이 0이면 검정이고, 모든 성분이 최댓값이면 흰색입니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색</th><th>RGB 표기</th><th>16진 표기</th></tr>
		</thead>
		<tbody>
			<tr><td>빨강</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>초록</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>파랑</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>흰색</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>검정</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGB 색상은 함수 형식과 16진 형식으로 쓸 수 있습니다. 예를 들어 빨강은 <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code>, <code>#f00</code> 처럼 나타낼 수 있습니다.</p>

<p>투명도를 포함하려면 알파 값을 추가합니다. 예를 들어 반투명 빨강은 <code>rgb(255 0 0 / 50%)</code> 또는 <code>#ff000080</code> 처럼 나타낼 수 있습니다.</p>

<p>DenCode의 RGB 색상 변환은 다음 표기 옵션을 지원합니다.</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGB 색상 (16진)</caption>
		<thead>
			<tr><th>표기 옵션</th><th>포맷</th><th>예</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB 색상</caption>
		<thead>
			<tr><th>표기 옵션</th><th>포맷</th><th>예</th></tr>
		</thead>
		<tbody>
			<tr><td>수치</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>퍼센티지</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> 는 CSS의 표준 16진 색상 표기는 아니지만, 프로그램이나 애플리케이션 설정에서 사용되는 경우가 있는 ARGB 형식입니다. 앞의 <code>AA</code> 는 알파, 이어지는 <code>RR</code>, <code>GG</code>, <code>BB</code> 는 빨강, 초록, 파랑 성분을 나타냅니다.</p>

<h4>sRGB와 기타 RGB 색 공간</h4>
<p>RGB는 빨강, 초록, 파랑 세 성분으로 색을 표현하는 색 모델입니다. 다만 같은 RGB 값이라도 어떤 색 공간에서 해석하는지에 따라 실제 색은 달라집니다. 웹에서 일반적인 <code>rgb()</code> 와 <code>#RRGGBB</code> 는 보통 sRGB 색 공간의 색으로 처리됩니다.</p>

<p>CSS Color Module Level 4에서는 Display P3나 ProPhoto RGB처럼 sRGB와 다루는 색 범위가 다른 RGB 색 공간도 정의합니다. DenCode는 이러한 색 공간의 변환도 지원합니다.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>색 공간</th><th>포맷</th><th>예</th><th>특징</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>웹과 CSS에서 일반적인 RGB 색 공간입니다. 16진 색상 코드와 일반적인 <code>rgb()</code> 는 기본적으로 sRGB로 처리됩니다. <code>color(srgb ...)</code> 는 CSS Color Module Level 4의 포맷입니다.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>sRGB와 같은 색역을 선형화된 성분 값으로 표현하는 색 공간입니다. 색 계산과 합성에 사용됩니다.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>sRGB보다 넓은 색역을 가진 색 공간으로, 광색역 디스플레이와 일부 모바일 기기에서 사용됩니다.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>sRGB보다 넓은 색역을 가지며, 사진 편집이나 인쇄 지향 워크플로에서 사용되는 경우가 있습니다.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Adobe RGB보다 더 넓은 색역을 다룰 수 있는 RGB 색 공간으로, 사진 편집의 작업용 색 공간으로 사용됩니다.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>매우 넓은 색역을 가진 RGB 색 공간으로, UHDTV와 HDR 영상 규격에서 사용됩니다.</td></tr>
		</tbody>
	</table>
</div>

<p>넓은 색역의 RGB 색 공간으로 지정한 색은 sRGB 화면이나 일반적인 16진 색상 코드로 정확히 표현되지 않을 수 있습니다. DenCode에서 <code>#RRGGBB</code> 또는 수치 <code>rgb(R G B)</code> 로 변환하는 경우, sRGB에서 표현 가능한 범위를 벗어난 성분은 <code>0</code>부터 <code>255</code> 범위에 들어가도록 처리합니다. 반면 <code>color(display-p3 ...)</code> 또는 <code>color(a98-rgb ...)</code> 같은 색 공간을 선택하면 선택한 색 공간의 성분 값으로 표시할 수 있습니다.</p>
