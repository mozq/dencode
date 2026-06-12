<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Unicode styled text conversion</h3>
<p>Unicode styled text conversion replaces Latin letters and digits with decorative Unicode characters. It can create text that looks bold, italic, script-like, Fraktur, double-struck, monospace, small caps, and more.</p>
<p>This does not change a CSS or document font setting. Instead, ASCII letters (A-Z, a-z) and digits (0-9) in the input are replaced with corresponding Unicode characters. If a style has no corresponding character, that character is left unchanged.</p>

<p>For example, converting “Hello, world! 123” to a script style produces the following.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>In this example, the letters are replaced with script-like Unicode characters, while the comma, space, exclamation mark, and digits remain unchanged.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Style</th><th scope="col">Conversion example for “ABC abc 123”</th><th scope="col">Description</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Sans-serif-style characters.</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Sans-serif-style bold characters.</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Sans-serif-style italic characters. Digits are not converted.</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Serif-style bold characters.</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Serif-style italic characters. Digits are not converted.</td></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Script-style characters. Digits are not converted.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Fraktur-style characters. Digits are not converted.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Double-struck characters.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Monospace-style characters.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Small-capital-style characters. Only lowercase letters are converted.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Circled letters and digits.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Negative circled letters and digits. Lowercase letters are converted to uppercase.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Squared letters. Lowercase letters are converted to uppercase. Digits are not converted.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Negative squared letters. Lowercase letters are converted to uppercase. Digits are not converted.</td></tr>
	</table>
</div>

<p>Characters produced by Unicode styled text conversion are different Unicode characters from ordinary letters and digits. In search, copying, text-to-speech, and programmatic comparison, they are treated as different characters even if they look similar.</p>
<p>If the font in the user’s environment does not support some of these characters, they may appear as boxes or blanks. They are useful for social media posts and short decorative text, but ordinary letters and digits are recommended for identifiers, URLs, email addresses, and searchable body text.</p>
