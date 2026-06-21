<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>일본어 가나 / 로마자 변환에 대해</h3>
<p>일본어 히라가나, 가타카나, 로마자를 서로 변환합니다.</p>
<p>로마자 변환은 Hepburn 방식과 Kunrei-shiki 방식을 지원합니다.</p>

<p>예를 들어 로마자 "sakura"를 가타카나로 변환한 결과는 다음과 같습니다.</p>

<pre>サクラ</pre>

<p>히라가나 "しんぶん"을 로마자(Hepburn)로 변환한 결과는 다음과 같습니다.</p>

<pre>shinbun</pre>

<p>로마자로 변환할 때는 "、"와 "。"를 쉼표와 마침표로 변환합니다. 가나로 변환할 때는 쉼표와 마침표 뒤에 공백 또는 줄 끝이 오는 경우에만 "、"와 "。"로 변환합니다.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>로마자에서 가나로 변환할 때는 라틴 문자 연속 부분 전체가 로마자로 해석될 수 있는 경우에만 변환합니다. 예를 들어 "computer"는 로마자로 해석할 수 없으므로 변환하지 않고 "computer" 그대로 남깁니다.</p>
<p>반각 가타카나는 변환 대상이 아닙니다. 반각 가타카나를 변환하려면 먼저 <a href="${dc:h(basePath)}/string/character-width">문자 폭 변환</a>으로 전각 가타카나로 변환하세요.</p>
