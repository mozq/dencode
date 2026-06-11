<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Punycode IDN 정보</h3>
<p>Punycode는 Unicode 문자열을 ASCII 문자만으로 표현하기 위한 인코딩 방식입니다. 주로 일본어, 중국어, 한국어, 악센트가 있는 라틴 문자 등을 포함한 국제화 도메인명(IDN)을 DNS에서 처리할 수 있는 ASCII 형식으로 변환할 때 사용됩니다.</p>
<p>국제화 도메인명에서는 도메인명의 각 라벨을 Punycode로 변환하고, 변환된 라벨 앞에 <code>xn--</code>를 붙입니다. 이 ASCII 형식을 A-label, 원래 Unicode 형식을 U-label이라고 합니다.</p>

<p>예를 들어, “ドメイン.com”을 Punycode IDN으로 변환하면 다음과 같습니다.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>이 예에서는 최상위 도메인 <code>com</code>이 ASCII 문자만으로 구성되어 있으므로 그대로 유지되고, “ドメイン” 라벨만 <code>xn--eckwd4c7c</code>로 변환됩니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode 형식</th><th scope="col">Punycode IDN 형식</th><th scope="col">설명</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>일본어 문자를 포함한 도메인명입니다.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>각 라벨이 개별적으로 변환됩니다.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>악센트가 있는 라틴 문자를 포함한 예입니다.</td></tr>
	</table>
</div>

<p>Punycode IDN은 URL 인코딩과 다른 방식입니다. URL 인코딩은 URL 안의 문자를 <code>%E3%81%82</code> 같은 바이트열로 표현하지만, Punycode IDN은 도메인명의 라벨을 <code>xn--</code>로 시작하는 ASCII 라벨로 변환합니다.</p>

<h4>도메인명 라벨 단위 변환</h4>
<p>도메인명은 점(<code>.</code>)으로 구분된 라벨의 나열입니다. Punycode IDN은 도메인명 전체를 하나의 문자열로 변환하지 않고, 각 라벨을 개별적으로 변환합니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">라벨</th><th scope="col">변환 결과</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>따라서 <code>例え.テスト</code>의 변환 결과는 <code>xn--r8jz45g.xn--zckzah</code>입니다.</p>
