<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Over conversie van Japanse kana / romaji</h3>
<p>Converteert Japanse hiragana, katakana en romaji naar elkaar.</p>
<p>Romaji-conversie ondersteunt Hepburn en Kunrei-shiki.</p>

<p>Bijvoorbeeld, het resultaat van het converteren van romaji "sakura" naar katakana is als volgt.</p>

<pre>サクラ</pre>

<p>Het resultaat van het converteren van hiragana "しんぶん" naar romaji (Hepburn) is als volgt.</p>

<pre>shinbun</pre>

<p>Bij uitvoer als romaji worden "、" en "。" omgezet naar komma en punt. Bij uitvoer als kana worden komma en punt alleen omgezet naar "、" en "。" wanneer ze worden gevolgd door een spatie of het einde van de regel.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Bij conversie van romaji naar kana wordt een reeks Latijnse letters alleen geconverteerd als de volledige reeks als romaji kan worden geïnterpreteerd. Bijvoorbeeld, "computer" kan niet als romaji worden geïnterpreteerd en blijft daarom ongewijzigd als "computer" staan.</p>
<p>Katakana met halve breedte wordt niet geconverteerd. Converteer dit eerst naar katakana met volledige breedte met <a href="${dc:h(basePath)}/string/character-width">conversie voor halve/volledige breedte</a>.</p>
