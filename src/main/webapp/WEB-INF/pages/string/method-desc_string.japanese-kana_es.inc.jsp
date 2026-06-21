<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Acerca de la conversión de kana japonés / romaji</h3>
<p>Convierte entre hiragana, katakana y romaji japoneses.</p>
<p>La conversión de romaji admite los sistemas Hepburn y Kunrei-shiki.</p>

<p>Por ejemplo, el resultado de convertir el romaji "sakura" a katakana es el siguiente.</p>

<pre>サクラ</pre>

<p>El resultado de convertir el hiragana "しんぶん" a romaji (Hepburn) es el siguiente.</p>

<pre>shinbun</pre>

<p>Al generar romaji, "、" y "。" se convierten en coma y punto. Al generar kana, la coma y el punto solo se convierten en "、" y "。" cuando van seguidos de un espacio o del final de la línea.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Al convertir de romaji a kana, una secuencia de letras latinas solo se convierte si toda la secuencia puede interpretarse como romaji. Por ejemplo, "computer" no puede interpretarse como romaji, por lo que se conserva sin cambios como "computer".</p>
<p>El katakana de ancho medio no se convierte. Para convertirlo, conviértalo primero a katakana de ancho completo con la <a href="${dc:h(basePath)}/string/character-width">conversión de ancho de caracteres</a>.</p>
