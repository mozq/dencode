<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sulla conversione kana giapponese / romaji</h3>
<p>Converte hiragana, katakana e romaji giapponesi tra loro.</p>
<p>La conversione in romaji supporta i sistemi Hepburn e Kunrei-shiki.</p>

<p>Ad esempio, il risultato della conversione del romaji "sakura" in katakana è il seguente.</p>

<pre>サクラ</pre>

<p>Il risultato della conversione dell'hiragana "しんぶん" in romaji (Hepburn) è il seguente.</p>

<pre>shinbun</pre>

<p>Quando si produce romaji, "、" e "。" vengono convertiti in virgola e punto. Quando si produce kana, virgola e punto vengono convertiti in "、" e "。" solo se seguiti da uno spazio o dalla fine della riga.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Quando si converte dal romaji al kana, una sequenza di lettere latine viene convertita solo se l'intera sequenza può essere interpretata come romaji. Ad esempio, "computer" non può essere interpretato come romaji, quindi viene lasciato invariato come "computer".</p>
<p>Il katakana a mezza larghezza non viene convertito. Per convertirlo, trasformarlo prima in katakana a larghezza intera con la <a href="${dc:h(basePath)}/string/character-width">conversione della larghezza dei caratteri</a>.</p>
