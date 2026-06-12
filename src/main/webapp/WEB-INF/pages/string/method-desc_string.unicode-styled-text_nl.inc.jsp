<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over conversie naar gestileerde Unicode-tekst</h3>
<p>Conversie naar gestileerde Unicode-tekst vervangt Latijnse letters en cijfers door decoratieve Unicode-tekens. Zo kunt u tekst maken die eruitziet als vet, cursief, sierlijk schrift, Fraktur, dubbelgestreept, monospace, kleinkapitalen en andere stijlen.</p>
<p>Deze conversie wijzigt geen CSS- of documentlettertype. In plaats daarvan worden ASCII-letters (A-Z, a-z) en cijfers (0-9) in de invoer vervangen door overeenkomstige Unicode-tekens. Als een stijl geen overeenkomstig teken heeft, blijft dat teken ongewijzigd.</p>

<p>Als “Hello, world! 123” bijvoorbeeld naar een sierlijke stijl wordt geconverteerd, ziet het resultaat er als volgt uit.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>In dit voorbeeld worden de letters vervangen door Unicode-tekens met een sierlijke uitstraling. De komma, spatie, het uitroepteken en de cijfers blijven ongewijzigd.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Stijl</th><th scope="col">Conversievoorbeeld voor “ABC abc 123”</th><th scope="col">Beschrijving</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Tekens in sans-serifstijl.</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Vette tekens in sans-serifstijl.</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Cursieve tekens in sans-serifstijl. Cijfers worden niet geconverteerd.</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Vette tekens in serifstijl.</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Cursieve tekens in serifstijl. Cijfers worden niet geconverteerd.</td></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Tekens in sierlijke schrijfstijl. Cijfers worden niet geconverteerd.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Tekens in Fraktur-stijl. Cijfers worden niet geconverteerd.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Dubbelgestreepte tekens.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Tekens in monospace-stijl.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Tekens in kleinkapitalenstijl. Alleen kleine letters worden geconverteerd.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Omcirkelde letters en cijfers.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Negatief omcirkelde letters en cijfers. Kleine letters worden omgezet naar hoofdletters.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Letters in vierkanten. Kleine letters worden omgezet naar hoofdletters. Cijfers worden niet omgezet.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Negatieve letters in vierkanten. Kleine letters worden omgezet naar hoofdletters. Cijfers worden niet omgezet.</td></tr>
	</table>
</div>

<p>De geconverteerde tekens zijn andere Unicode-tekens dan gewone letters en cijfers. Bij zoeken, kopiëren, voorlezen en programmatische vergelijking worden ze daarom als andere tekens behandeld, ook als ze er vergelijkbaar uitzien.</p>
<p>Als het lettertype in de gebruikte omgeving sommige tekens niet ondersteunt, kunnen ze als vierkantjes of lege ruimtes verschijnen. Ze zijn handig voor berichten op sociale media en korte decoratieve teksten, maar voor identificatoren, URL’s, e-mailadressen en doorzoekbare tekst kunt u beter gewone letters en cijfers gebruiken.</p>
