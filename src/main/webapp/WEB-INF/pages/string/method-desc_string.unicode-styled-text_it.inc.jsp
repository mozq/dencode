<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Conversione del testo Unicode stilizzato</h3>
<p>La conversione del testo Unicode stilizzato sostituisce lettere latine e cifre con caratteri Unicode decorativi. Permette di creare testo con aspetto grassetto, corsivo, calligrafico, Fraktur, doppio tratto, monospaziato, maiuscoletto e altri stili.</p>
<p>Questa conversione non modifica il font impostato in CSS o in un documento. Sostituisce invece le lettere ASCII (A-Z, a-z) e le cifre (0-9) inserite con i caratteri Unicode corrispondenti. Se uno stile non ha un carattere corrispondente, quel carattere rimane invariato.</p>

<p>Ad esempio, convertendo “Hello, world! 123” in stile calligrafico (Script) si ottiene quanto segue.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>In questo esempio, le lettere vengono sostituite da caratteri Unicode in stile calligrafico, mentre virgola, spazio, punto esclamativo e cifre rimangono invariati.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Stile</th><th scope="col">Esempio di conversione per “ABC abc 123”</th><th scope="col">Descrizione</th></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Caratteri in stile calligrafico. Le cifre non vengono convertite.</td></tr>
		<tr><td>Script (grassetto)</td><td><code>𝓐𝓑𝓒 𝓪𝓫𝓬 123</code></td><td>Caratteri calligrafici in grassetto. Le cifre non vengono convertite.</td></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Caratteri in stile sans-serif.</td></tr>
		<tr><td>Sans-serif (grassetto)</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Caratteri sans-serif in grassetto.</td></tr>
		<tr><td>Sans-serif (corsivo)</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Caratteri sans-serif in corsivo. Le cifre non vengono convertite.</td></tr>
		<tr><td>Sans-serif (grassetto & corsivo)</td><td><code>𝘼𝘽𝘾 𝙖𝙗𝙘 123</code></td><td>Caratteri sans-serif in grassetto corsivo. Le cifre non vengono convertite.</td></tr>
		<tr><td>Serif (grassetto)</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Caratteri serif in grassetto.</td></tr>
		<tr><td>Serif (corsivo)</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Caratteri serif in corsivo. Le cifre non vengono convertite.</td></tr>
		<tr><td>Serif (grassetto & corsivo)</td><td><code>𝑨𝑩𝑪 𝒂𝒃𝒄 123</code></td><td>Caratteri serif in grassetto corsivo. Le cifre non vengono convertite.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Caratteri in stile Fraktur. Le cifre non vengono convertite.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Caratteri a doppio tratto.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Caratteri in stile monospaziato.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Caratteri in stile maiuscoletto. Vengono convertite solo le minuscole.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Lettere e cifre cerchiate.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Lettere e cifre cerchiate in negativo. Le minuscole vengono convertite in maiuscole.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Lettere racchiuse in quadrati. Le minuscole vengono convertite in maiuscole. Le cifre non vengono convertite.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Lettere racchiuse in quadrati negativi. Le minuscole vengono convertite in maiuscole. Le cifre non vengono convertite.</td></tr>
	</table>
</div>

<p>I caratteri ottenuti sono caratteri Unicode diversi dalle normali lettere e cifre. Per questo, in ricerche, copie, lettura vocale e confronti nei programmi vengono trattati come caratteri diversi, anche se l’aspetto è simile.</p>
<p>Se il font dell’ambiente utilizzato non supporta alcuni caratteri, questi possono apparire come quadrati o spazi vuoti. Sono utili per post sui social e brevi testi decorativi, ma per identificatori, URL, indirizzi email e testi da cercare è preferibile usare lettere e cifre normali.</p>
