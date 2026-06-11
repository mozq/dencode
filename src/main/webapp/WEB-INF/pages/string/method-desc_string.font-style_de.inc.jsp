<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Unicode-Ziertext-Konvertierung</h3>
<p>Die Unicode-Ziertext-Konvertierung ersetzt lateinische Buchstaben und Ziffern durch dekorative Unicode-Zeichen. So lassen sich Texte erzeugen, die etwa fett, kursiv, handschriftlich, wie Fraktur, doppelt konturiert, gleichbreit oder wie Kapitälchen aussehen.</p>
<p>Dabei wird keine CSS- oder Dokument-Schriftart geändert. Stattdessen werden ASCII-Buchstaben (A-Z, a-z) und Ziffern (0-9) durch passende Unicode-Zeichen ersetzt. Gibt es für einen Stil kein entsprechendes Zeichen, bleibt das Zeichen unverändert.</p>

<p>Wenn beispielsweise „Hello, world! 123“ in einen Schreibschrift-Stil umgewandelt wird, ergibt sich Folgendes.</p>

<pre>𝐻𝑒𝓁𝓁𝑜, 𝓌𝑜𝓇𝓁𝒹! 123</pre>

<p>In diesem Beispiel werden die Buchstaben durch Unicode-Zeichen im Schreibschrift-Stil ersetzt. Komma, Leerzeichen, Ausrufezeichen und Ziffern bleiben unverändert.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Stil</th><th scope="col">Umwandlungsbeispiel für „ABC abc 123“</th><th scope="col">Beschreibung</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Zeichen im Sans-Serif-Stil.</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Fette Zeichen im Sans-Serif-Stil.</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Kursive Zeichen im Sans-Serif-Stil. Ziffern werden nicht umgewandelt.</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Fette Zeichen im Serif-Stil.</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Kursive Zeichen im Serif-Stil. Ziffern werden nicht umgewandelt.</td></tr>
		<tr><td>Script</td><td><code>𝒜𝐵𝒞 𝒶𝒷𝒸 123</code></td><td>Zeichen im Schreibschrift-Stil. Ziffern werden nicht umgewandelt.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Zeichen im Fraktur-Stil. Ziffern werden nicht umgewandelt.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Doppelt gestrichene Zeichen.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Zeichen im Monospace-Stil.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Zeichen im Kapitälchen-Stil. Nur Kleinbuchstaben werden umgewandelt.</td></tr>
	</table>
</div>

<p>Die Zeichen nach der Unicode-Ziertext-Konvertierung sind andere Unicode-Zeichen als normale Buchstaben und Ziffern. Bei Suche, Kopieren, Sprachausgabe und programmatischem Vergleich werden sie daher als andere Zeichen behandelt, auch wenn sie ähnlich aussehen.</p>
<p>Wenn die Schriftart in der jeweiligen Umgebung diese Zeichen nicht unterstützt, können sie als Kästchen oder Leerstellen erscheinen. Für Beiträge in sozialen Netzwerken und kurze dekorative Texte sind sie praktisch; für Bezeichner, URLs, E-Mail-Adressen und durchsuchbaren Fließtext sollten jedoch normale Buchstaben und Ziffern verwendet werden.</p>
