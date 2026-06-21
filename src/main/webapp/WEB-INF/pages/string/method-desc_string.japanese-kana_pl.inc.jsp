<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>O konwersji japońskiej kany / romaji</h3>
<p>Konwertuje japońską hiraganę, katakanę i romaji między sobą.</p>
<p>Konwersja romaji obsługuje systemy Hepburn i Kunrei-shiki.</p>

<p>Na przykład wynik konwersji romaji „sakura” na katakanę wygląda następująco.</p>

<pre>サクラ</pre>

<p>Wynik konwersji hiragany „しんぶん” na romaji (Hepburn) wygląda następująco.</p>

<pre>shinbun</pre>

<p>Przy wyjściu w romaji znaki „、” i „。” są konwertowane na przecinek i kropkę. Przy wyjściu w kanie przecinek i kropka są konwertowane na „、” i „。” tylko wtedy, gdy po nich występuje spacja lub koniec wiersza.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Podczas konwersji z romaji na kanę ciąg liter łacińskich jest konwertowany tylko wtedy, gdy cały ciąg można zinterpretować jako romaji. Na przykład „computer” nie może zostać zinterpretowane jako romaji, dlatego pozostaje bez zmian jako „computer”.</p>
<p>Katakana o połówkowej szerokości nie jest konwertowana. Aby ją przekonwertować, najpierw zmień ją na katakanę o pełnej szerokości za pomocą <a href="${dc:h(basePath)}/string/character-width">konwersji szerokości znaków</a>.</p>
