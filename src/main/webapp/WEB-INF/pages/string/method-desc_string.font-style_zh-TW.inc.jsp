<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於 Unicode 裝飾文字轉換</h3>
<p>Unicode 裝飾文字轉換會把英文字母和數字替換為裝飾性的 Unicode 字元。可以產生看起來像粗體、斜體、手寫體、Fraktur、雙線體、等寬體、小型大寫字母等樣式的文字。</p>
<p>這種轉換不會改變 CSS 或文件中的字型設定。它會把輸入中的 ASCII 英文字母（A-Z, a-z）和數字（0-9）替換為對應的 Unicode 字元。如果某個樣式沒有對應字元，該字元會保持原樣。</p>

<p>例如，將「Hello, world! 123」轉換為手寫體樣式後如下。</p>

<pre>𝐻𝑒𝓁𝓁𝑜, 𝓌𝑜𝓇𝓁𝒹! 123</pre>

<p>在這個例子中，英文字母被替換為類似手寫體的 Unicode 字元，而逗號、半形空格、驚嘆號和數字保持不變。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">樣式</th><th scope="col">「ABC abc 123」的轉換範例</th><th scope="col">說明</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>類似無襯線字型的字元。</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>類似無襯線字型的粗體字元。</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>類似無襯線字型的斜體字元。數字不會轉換。</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>類似襯線字型的粗體字元。</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>類似襯線字型的斜體字元。數字不會轉換。</td></tr>
		<tr><td>Script</td><td><code>𝒜𝐵𝒞 𝒶𝒷𝒸 123</code></td><td>類似手寫體的字元。數字不會轉換。</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>類似 Fraktur 的字元。數字不會轉換。</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>雙線體字元。</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>類似等寬字型的字元。</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>類似小型大寫字母的字元。只轉換小寫字母。</td></tr>
	</table>
</div>

<p>Unicode 裝飾文字轉換後的字元，是與普通英文字母和數字不同的 Unicode 字元。因此，在搜尋、複製、朗讀和程式比較時，即使外觀相似，也會被當作不同字元處理。</p>
<p>如果使用環境中的字型不支援某些字元，它們可能顯示為方框或空白。這些字元適合社群媒體貼文和短裝飾文字，但在識別碼、URL、電子郵件地址以及需要被搜尋的正文中，建議使用普通英文字母和數字。</p>
