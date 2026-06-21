<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於日文假名 / 羅馬字轉換</h3>
<p>可在日文平假名、片假名和羅馬字之間相互轉換。</p>
<p>羅馬字轉換支援 Hepburn 和 Kunrei-shiki 兩種方式。</p>

<p>例如，將羅馬字「sakura」轉換為片假名的結果如下。</p>

<pre>サクラ</pre>

<p>將平假名「しんぶん」轉換為羅馬字（Hepburn）的結果如下。</p>

<pre>shinbun</pre>

<p>轉換為羅馬字時，會將「、」「。」轉換為逗號和句號。轉換為假名時，只有逗號和句號後面是空格或行尾時，才會將其轉換為「、」「。」。</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>從羅馬字轉換為假名時，只有整段拉丁字母都可解讀為羅馬字時才會轉換。例如，「computer」不能解讀為羅馬字，因此不會轉換，會保留為「computer」。</p>
<p>半形片假名不在轉換範圍內。如需轉換半形片假名，請先使用<a href="${dc:h(basePath)}/string/character-width">半形/全形字符轉換</a>轉換為全形片假名。</p>
