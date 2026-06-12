<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Unicode 장식 문자 변환 정보</h3>
<p>Unicode 장식 문자 변환은 영문자와 숫자를 장식용 Unicode 문자로 바꿉니다. 굵게, 기울임, 필기체, Fraktur, 이중선, 고정폭, 작은 대문자처럼 보이는 문자열을 만들 수 있습니다.</p>
<p>이 변환은 CSS나 문서의 글꼴 설정을 바꾸는 것이 아닙니다. 입력된 ASCII 영문자(A-Z, a-z)와 숫자(0-9)를 대응하는 Unicode 문자로 치환합니다. 선택한 스타일에 대응하는 문자가 없으면 해당 문자는 변환되지 않고 그대로 남습니다.</p>

<p>예를 들어, “Hello, world! 123”을 필기체 스타일로 변환하면 다음과 같습니다.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>이 예에서는 영문자가 필기체처럼 보이는 Unicode 문자로 바뀌고, 쉼표, 공백, 느낌표, 숫자는 그대로 유지됩니다.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">스타일</th><th scope="col">“ABC abc 123” 변환 예</th><th scope="col">설명</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>산세리프처럼 보이는 문자입니다.</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>산세리프 스타일의 굵은 문자입니다.</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>산세리프 스타일의 기울임 문자입니다. 숫자는 변환되지 않습니다.</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>세리프 스타일의 굵은 문자입니다.</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>세리프 스타일의 기울임 문자입니다. 숫자는 변환되지 않습니다.</td></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>필기체처럼 보이는 문자입니다. 숫자는 변환되지 않습니다.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Fraktur 스타일의 문자입니다. 숫자는 변환되지 않습니다.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>이중선 문자입니다.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>고정폭처럼 보이는 문자입니다.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>작은 대문자처럼 보이는 문자입니다. 소문자만 변환됩니다.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>원형 문자와 숫자입니다.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>음각 원형 문자와 숫자입니다. 소문자는 대문자로 변환됩니다.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>사각형 문자입니다. 소문자는 대문자로 변환됩니다. 숫자는 변환되지 않습니다.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>음각 사각형 문자입니다. 소문자는 대문자로 변환됩니다. 숫자는 변환되지 않습니다.</td></tr>
	</table>
</div>

<p>Unicode 장식 문자 변환 후의 문자는 일반 영문자나 숫자와 다른 Unicode 문자입니다. 따라서 검색, 복사, 음성 읽기, 프로그램에서의 비교에서는 모양이 비슷해도 원래 문자와 다른 문자로 취급됩니다.</p>
<p>사용 환경의 글꼴이 일부 문자를 지원하지 않으면 사각형이나 빈칸으로 표시될 수 있습니다. SNS 게시물이나 짧은 장식용 문자열에는 유용하지만, 식별자, URL, 이메일 주소, 검색되어야 하는 본문에는 일반 영문자와 숫자를 사용하는 것이 좋습니다.</p>
