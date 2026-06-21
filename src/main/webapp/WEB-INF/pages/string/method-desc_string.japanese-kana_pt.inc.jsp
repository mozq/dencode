<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a conversão de kana japonês / romaji</h3>
<p>Converte hiragana, katakana e romaji japoneses entre si.</p>
<p>A conversão de romaji oferece suporte aos sistemas Hepburn e Kunrei-shiki.</p>

<p>Por exemplo, o resultado da conversão do romaji "sakura" para katakana é o seguinte.</p>

<pre>サクラ</pre>

<p>O resultado da conversão do hiragana "しんぶん" para romaji (Hepburn) é o seguinte.</p>

<pre>shinbun</pre>

<p>Ao gerar romaji, "、" e "。" são convertidos em vírgula e ponto. Ao gerar kana, vírgula e ponto só são convertidos em "、" e "。" quando seguidos por um espaço ou pelo fim da linha.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Ao converter romaji para kana, uma sequência de letras latinas só é convertida se toda a sequência puder ser interpretada como romaji. Por exemplo, "computer" não pode ser interpretado como romaji, portanto permanece inalterado como "computer".</p>
<p>Katakana de meia largura não é convertida. Para convertê-la, primeiro transforme-a em katakana de largura completa com a <a href="${dc:h(basePath)}/string/character-width">conversão de largura de caracteres</a>.</p>
