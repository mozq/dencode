<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de la conversion de texte stylisé Unicode</h3>
<p>La conversion de texte stylisé Unicode remplace les lettres latines et les chiffres par des caractères Unicode décoratifs. Elle permet de créer du texte qui ressemble à du gras, de l’italique, de l’écriture manuscrite, du Fraktur, du double trait, du monospace, des petites capitales, etc.</p>
<p>Cette conversion ne modifie pas la police CSS ni la police d’un document. Elle remplace plutôt les lettres ASCII (A-Z, a-z) et les chiffres (0-9) saisis par les caractères Unicode correspondants. Si un style ne possède pas de caractère correspondant, le caractère est conservé tel quel.</p>

<p>Par exemple, la conversion de « Hello, world! 123 » en style manuscrit (Script) donne le résultat suivant.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>Dans cet exemple, les lettres sont remplacées par des caractères Unicode de style manuscrit, tandis que la virgule, l’espace, le point d’exclamation et les chiffres restent inchangés.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Style</th><th scope="col">Exemple de conversion pour « ABC abc 123 »</th><th scope="col">Description</th></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Caractères de style manuscrit. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Script (Gras)</td><td><code>𝓐𝓑𝓒 𝓪𝓫𝓬 123</code></td><td>Caractères manuscrits en gras. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Caractères de style sans serif.</td></tr>
		<tr><td>Sans-serif (Gras)</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Caractères sans serif en gras.</td></tr>
		<tr><td>Sans-serif (Italique)</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Caractères sans serif en italique. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Sans-serif (Gras et italique)</td><td><code>𝘼𝘽𝘾 𝙖𝙗𝙘 123</code></td><td>Caractères sans serif en gras italique. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Serif (Gras)</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Caractères serif en gras.</td></tr>
		<tr><td>Serif (Italique)</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Caractères serif en italique. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Serif (Gras et italique)</td><td><code>𝑨𝑩𝑪 𝒂𝒃𝒄 123</code></td><td>Caractères serif en gras italique. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Caractères de style Fraktur. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Caractères à double trait.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Caractères de style monospace.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Caractères de style petites capitales. Seules les minuscules sont converties.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Lettres et chiffres cerclés.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Lettres et chiffres cerclés en négatif. Les minuscules sont converties en majuscules.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Lettres encadrées. Les minuscules sont converties en majuscules. Les chiffres ne sont pas convertis.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Lettres encadrées en négatif. Les minuscules sont converties en majuscules. Les chiffres ne sont pas convertis.</td></tr>
	</table>
</div>

<p>Les caractères produits par cette conversion sont des caractères Unicode différents des lettres et chiffres ordinaires. Lors d’une recherche, d’une copie, d’une lecture vocale ou d’une comparaison par programme, ils sont donc traités comme des caractères différents, même s’ils se ressemblent visuellement.</p>
<p>Si la police utilisée dans l’environnement ne prend pas en charge certains caractères, ceux-ci peuvent apparaître sous forme de carrés ou d’espaces vides. Ils sont pratiques pour les publications sur les réseaux sociaux et les courts textes décoratifs, mais il est préférable d’utiliser des lettres et chiffres ordinaires pour les identifiants, URL, adresses e-mail et textes destinés à être recherchés.</p>
