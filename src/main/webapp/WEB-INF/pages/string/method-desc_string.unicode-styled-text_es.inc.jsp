<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca de la conversión de texto Unicode estilizado</h3>
<p>La conversión de texto Unicode estilizado reemplaza letras latinas y dígitos por caracteres Unicode decorativos. Permite crear texto con apariencia de negrita, cursiva, escritura manuscrita, Fraktur, doble trazo, monoespaciado, versalitas, etc.</p>
<p>Esta conversión no cambia la configuración de fuente de CSS ni de un documento. En su lugar, sustituye las letras ASCII (A-Z, a-z) y los dígitos (0-9) de la entrada por los caracteres Unicode correspondientes. Si un estilo no tiene un carácter equivalente, ese carácter se deja sin cambios.</p>

<p>Por ejemplo, al convertir “Hello, world! 123” a un estilo manuscrito (Script) se obtiene lo siguiente.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>En este ejemplo, las letras se sustituyen por caracteres Unicode con aspecto manuscrito, mientras que la coma, el espacio, el signo de exclamación y los dígitos permanecen igual.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Estilo</th><th scope="col">Ejemplo de conversión para “ABC abc 123”</th><th scope="col">Descripción</th></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Caracteres con aspecto manuscrito. Los dígitos no se convierten.</td></tr>
		<tr><td>Script (Negrita)</td><td><code>𝓐𝓑𝓒 𝓪𝓫𝓬 123</code></td><td>Caracteres manuscritos en negrita. Los dígitos no se convierten.</td></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Caracteres con aspecto sans-serif.</td></tr>
		<tr><td>Sans-serif (Negrita)</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Caracteres sans-serif en negrita.</td></tr>
		<tr><td>Sans-serif (Cursiva)</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Caracteres sans-serif en cursiva. Los dígitos no se convierten.</td></tr>
		<tr><td>Sans-serif (Negrita y cursiva)</td><td><code>𝘼𝘽𝘾 𝙖𝙗𝙘 123</code></td><td>Caracteres sans-serif en negrita y cursiva. Los dígitos no se convierten.</td></tr>
		<tr><td>Serif (Negrita)</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Caracteres serif en negrita.</td></tr>
		<tr><td>Serif (Cursiva)</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Caracteres serif en cursiva. Los dígitos no se convierten.</td></tr>
		<tr><td>Serif (Negrita y cursiva)</td><td><code>𝑨𝑩𝑪 𝒂𝒃𝒄 123</code></td><td>Caracteres serif en negrita y cursiva. Los dígitos no se convierten.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Caracteres con estilo Fraktur. Los dígitos no se convierten.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Caracteres de doble trazo.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Caracteres con aspecto monoespaciado.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Caracteres con aspecto de versalitas. Solo se convierten las minúsculas.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Letras y dígitos encerrados en círculo.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Letras y dígitos en círculo negativo. Las minúsculas se convierten en mayúsculas.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Letras encerradas en cuadrados. Las minúsculas se convierten en mayúsculas. Los dígitos no se convierten.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Letras en cuadrados negativos. Las minúsculas se convierten en mayúsculas. Los dígitos no se convierten.</td></tr>
	</table>
</div>

<p>Los caracteres resultantes son caracteres Unicode distintos de las letras y dígitos normales. Por eso, en búsquedas, copias, lectura en voz alta y comparaciones de programas, se tratan como caracteres diferentes aunque se parezcan visualmente.</p>
<p>Si la fuente del entorno de uso no admite algunos de estos caracteres, pueden aparecer como cuadros o espacios en blanco. Son útiles para publicaciones en redes sociales y textos decorativos cortos, pero para identificadores, URL, direcciones de correo y texto que deba poder buscarse se recomienda usar letras y dígitos normales.</p>
