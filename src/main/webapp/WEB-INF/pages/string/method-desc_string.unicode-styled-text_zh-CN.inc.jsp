<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于 Unicode 装饰文字转换</h3>
<p>Unicode 装饰文字转换会把英文字母和数字替换为装饰性的 Unicode 字符。可以生成看起来像粗体、斜体、手写体、Fraktur、双线体、等宽体、小型大写字母等样式的文本。</p>
<p>这种转换不会改变 CSS 或文档中的字体设置。它会把输入中的 ASCII 英文字母（A-Z, a-z）和数字（0-9）替换为对应的 Unicode 字符。如果某个样式没有对应字符，该字符会保持原样。</p>

<p>例如，将“Hello, world! 123”转换为手写体样式后如下。</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>在这个例子中，英文字母被替换为类似手写体的 Unicode 字符，而逗号、半角空格、感叹号和数字保持不变。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">样式</th><th scope="col">“ABC abc 123”的转换示例</th><th scope="col">说明</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>类似无衬线字体的字符。</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>类似无衬线字体的粗体字符。</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>类似无衬线字体的斜体字符。数字不会转换。</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>类似衬线字体的粗体字符。</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>类似衬线字体的斜体字符。数字不会转换。</td></tr>
		<tr><td>Script</td><td><code>𝒜𝐵𝒞 𝒶𝒷𝒸 123</code></td><td>类似手写体的字符。数字不会转换。</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>类似 Fraktur 的字符。数字不会转换。</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>双线体字符。</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>类似等宽字体的字符。</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>类似小型大写字母的字符。只转换小写字母。</td></tr>
	</table>
</div>

<p>Unicode 装饰文字转换后的字符是与普通英文字母和数字不同的 Unicode 字符。因此，在搜索、复制、朗读和程序比较时，即使外观相似，也会被当作不同字符处理。</p>
<p>如果使用环境中的字体不支持某些字符，它们可能显示为方框或空白。这些字符适合社交媒体发布和短装饰文本，但在标识符、URL、电子邮件地址以及需要被搜索的正文中，建议使用普通英文字母和数字。</p>
