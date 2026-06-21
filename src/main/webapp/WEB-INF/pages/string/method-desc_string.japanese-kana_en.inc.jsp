<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About Japanese Kana / Romaji Conversion</h3>
<p>Convert between Japanese hiragana, katakana, and romaji.</p>
<p>Romaji conversion supports Hepburn and Kunrei-shiki romanization.</p>

<p>For example, the result of converting the romaji "sakura" to katakana is as follows.</p>

<pre>サクラ</pre>

<p>The result of converting the hiragana "しんぶん" to romaji (Hepburn) is as follows.</p>

<pre>shinbun</pre>

<p>When outputting romaji, "、" and "。" are converted to commas and periods. When outputting kana, commas and periods are converted to "、" and "。" only when followed by a space or the end of the line.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>When converting romaji to kana, a sequence of Latin letters is converted only if the whole sequence can be interpreted as romaji. For example, "computer" cannot be interpreted as romaji, so it is left unchanged as "computer".</p>
<p>Half-width katakana is not converted. To convert half-width katakana, first convert it to full-width katakana with <a href="${dc:h(basePath)}/string/character-width">Character Width conversion</a>.</p>
