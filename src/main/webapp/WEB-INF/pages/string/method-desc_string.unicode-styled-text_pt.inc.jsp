<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre a conversão de texto Unicode estilizado</h3>
<p>A conversão de texto Unicode estilizado substitui letras latinas e dígitos por caracteres Unicode decorativos. Ela permite criar textos com aparência de negrito, itálico, manuscrito, Fraktur, duplo traço, monoespaçado, versalete e outros estilos.</p>
<p>Essa conversão não altera a fonte definida em CSS nem em um documento. Em vez disso, substitui letras ASCII (A-Z, a-z) e dígitos (0-9) da entrada pelos caracteres Unicode correspondentes. Se um estilo não tiver um caractere correspondente, esse caractere permanece inalterado.</p>

<p>Por exemplo, ao converter “Hello, world! 123” para um estilo manuscrito, o resultado é o seguinte.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>Neste exemplo, as letras são substituídas por caracteres Unicode com aparência manuscrita, enquanto a vírgula, o espaço, o ponto de exclamação e os dígitos permanecem iguais.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Estilo</th><th scope="col">Exemplo de conversão para “ABC abc 123”</th><th scope="col">Descrição</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Caracteres com aparência sans-serif.</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Caracteres sans-serif em negrito.</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Caracteres sans-serif em itálico. Os dígitos não são convertidos.</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Caracteres serifados em negrito.</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Caracteres serifados em itálico. Os dígitos não são convertidos.</td></tr>
		<tr><td>Script</td><td><code>𝒜𝐵𝒞 𝒶𝒷𝒸 123</code></td><td>Caracteres com aparência manuscrita. Os dígitos não são convertidos.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Caracteres em estilo Fraktur. Os dígitos não são convertidos.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Caracteres de duplo traço.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Caracteres com aparência monoespaçada.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Caracteres com aparência de versalete. Apenas letras minúsculas são convertidas.</td></tr>
	</table>
</div>

<p>Os caracteres gerados são caracteres Unicode diferentes das letras e dígitos comuns. Por isso, em buscas, cópias, leitura por voz e comparações em programas, eles são tratados como caracteres diferentes, mesmo que tenham aparência parecida.</p>
<p>Se a fonte do ambiente usado não oferecer suporte a alguns desses caracteres, eles podem aparecer como quadrados ou espaços em branco. Eles são úteis para publicações em redes sociais e textos decorativos curtos, mas para identificadores, URLs, endereços de e-mail e textos pesquisáveis é melhor usar letras e dígitos comuns.</p>
