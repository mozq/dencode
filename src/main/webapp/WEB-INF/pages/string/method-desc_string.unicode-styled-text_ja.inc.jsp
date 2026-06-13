<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Unicode装飾文字変換について</h3>
<p>Unicode装飾文字変換は、英字や数字をUnicodeの装飾文字に変換します。太字、斜体、筆記体、フラクトゥール、二重線、等幅、スモールキャピタルなどの見た目の文字列を作成できます。</p>
<p>この変換は、CSSや文書のフォント設定を変更するものではありません。入力されたASCIIの英字 (A-Z, a-z) や数字 (0-9) を、対応するUnicode文字に置き換えます。対応する文字がないスタイルでは、その文字は変換されず元のまま残ります。</p>

<p>例えば、「Hello, world! 123」を筆記体 (Script) に変換すると以下のようになります。</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>この例では、英字が筆記体風のUnicode文字に置き換わり、カンマ、半角スペース、感嘆符、数字はそのまま残ります。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">スタイル</th><th scope="col">「ABC abc 123」の変換例</th><th scope="col">説明</th></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>筆記体風の文字です。数字は変換されません。</td></tr>
		<tr><td>Script (太字)</td><td><code>𝓐𝓑𝓒 𝓪𝓫𝓬 123</code></td><td>太字の筆記体風の文字です。数字は変換されません。</td></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>サンセリフ風の文字です。</td></tr>
		<tr><td>Sans-serif (太字)</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>サンセリフ風の太字です。</td></tr>
		<tr><td>Sans-serif (斜体)</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>サンセリフ風の斜体です。数字は変換されません。</td></tr>
		<tr><td>Sans-serif (太字＆斜体)</td><td><code>𝘼𝘽𝘾 𝙖𝙗𝙘 123</code></td><td>サンセリフ風の太字斜体です。数字は変換されません。</td></tr>
		<tr><td>Serif (太字)</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>セリフ風の太字です。</td></tr>
		<tr><td>Serif (斜体)</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>セリフ風の斜体です。数字は変換されません。</td></tr>
		<tr><td>Serif (太字＆斜体)</td><td><code>𝑨𝑩𝑪 𝒂𝒃𝒄 123</code></td><td>セリフ風の太字斜体です。数字は変換されません。</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>フラクトゥール風の文字です。数字は変換されません。</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>二重線の文字です。</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>等幅風の文字です。</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>小型大文字風の文字です。小文字のみ変換されます。</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>丸囲みの文字と数字です。</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>黒丸囲みの文字と数字です。小文字は大文字に変換されます。</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>四角囲みの文字です。小文字は大文字に変換されます。数字は変換されません。</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>黒四角囲みの文字です。小文字は大文字に変換されます。数字は変換されません。</td></tr>
	</table>
</div>

<p>Unicode装飾文字変換後の文字は、通常の英数字とは別のUnicode文字です。そのため、検索、コピー、読み上げ、プログラムでの比較では、見た目が似ていても元の英数字とは異なる文字として扱われます。</p>
<p>また、利用環境のフォントが対応していない場合、一部の文字が四角や空白として表示されることがあります。SNSの投稿や装飾用の短い文字列には便利ですが、識別子、URL、メールアドレス、検索される本文などには通常の英数字を使用することをおすすめします。</p>
