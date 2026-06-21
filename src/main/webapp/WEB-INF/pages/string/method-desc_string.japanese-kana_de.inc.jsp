<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Über die Umwandlung japanischer Kana / Romaji</h3>
<p>Japanische Hiragana, Katakana und Romaji werden ineinander umgewandelt.</p>
<p>Für Romaji werden die Systeme Hepburn und Kunrei-shiki unterstützt.</p>

<p>Das Ergebnis der Umwandlung von Romaji "sakura" in Katakana sieht zum Beispiel so aus.</p>

<pre>サクラ</pre>

<p>Das Ergebnis der Umwandlung von Hiragana "しんぶん" in Romaji (Hepburn) sieht so aus.</p>

<pre>shinbun</pre>

<p>Bei der Ausgabe als Romaji werden „、“ und „。“ in Komma und Punkt umgewandelt. Bei der Ausgabe als Kana werden Komma und Punkt nur dann in „、“ und „。“ umgewandelt, wenn darauf ein Leerzeichen oder das Zeilenende folgt.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Bei der Umwandlung von Romaji in Kana wird eine Folge lateinischer Buchstaben nur dann umgewandelt, wenn die gesamte Folge als Romaji interpretiert werden kann. Beispielsweise kann „computer“ nicht als Romaji interpretiert werden und bleibt daher unverändert als „computer“ erhalten.</p>
<p>Halbbreite Katakana werden nicht umgewandelt. Wenn Sie halbbreite Katakana umwandeln möchten, wandeln Sie sie zuerst mit der <a href="${dc:h(basePath)}/string/character-width">Zeichenbreiten-Umwandlung</a> in vollbreite Katakana um.</p>
