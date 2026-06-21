<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la conversion kana japonais / romaji</h3>
<p>Convertit les hiragana, katakana et romaji japonais les uns vers les autres.</p>
<p>La conversion en romaji prend en charge les systèmes Hepburn et Kunrei-shiki.</p>

<p>Par exemple, le résultat de la conversion du romaji « sakura » en katakana est le suivant.</p>

<pre>サクラ</pre>

<p>Le résultat de la conversion de l'hiragana « しんぶん » en romaji (Hepburn) est le suivant.</p>

<pre>shinbun</pre>

<p>Lors de la sortie en romaji, « 、 » et « 。 » sont convertis en virgule et en point. Lors de la sortie en kana, la virgule et le point ne sont convertis en « 、 » et « 。 » que s'ils sont suivis d'une espace ou de la fin de ligne.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Lors de la conversion du romaji vers les kana, une suite de lettres latines n'est convertie que si toute la suite peut être interprétée comme du romaji. Par exemple, « computer » ne peut pas être interprété comme du romaji ; il est donc conservé tel quel sous la forme « computer ».</p>
<p>Les katakana demi-chasse ne sont pas convertis. Pour les convertir, convertissez-les d'abord en katakana pleine-chasse avec la <a href="${dc:h(basePath)}/string/character-width">conversion de largeur des caractères</a>.</p>
