<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Unicode सजावटी टेक्स्ट रूपांतरण के बारे में</h3>
<p>Unicode सजावटी टेक्स्ट रूपांतरण लैटिन अक्षरों और अंकों को सजावटी Unicode अक्षरों से बदलता है। इससे bold, italic, script, Fraktur, double-struck, monospace, small capital आदि जैसे दिखने वाले टेक्स्ट बनाए जा सकते हैं।</p>
<p>यह CSS या दस्तावेज़ की फ़ॉन्ट सेटिंग नहीं बदलता। इसके बजाय, इनपुट में मौजूद ASCII अक्षरों (A-Z, a-z) और अंकों (0-9) को उनसे मेल खाने वाले Unicode अक्षरों से बदला जाता है। जिस शैली में कोई मेल खाता अक्षर नहीं होता, वह अक्षर वैसा ही रहता है।</p>

<p>उदाहरण के लिए, “Hello, world! 123” को script (Script) शैली में बदलने पर परिणाम यह होता है।</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>इस उदाहरण में अक्षर script जैसे Unicode अक्षरों से बदल जाते हैं, जबकि कॉमा, स्पेस, विस्मयादिबोधक चिह्न और अंक वैसे ही रहते हैं।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">शैली</th><th scope="col">“ABC abc 123” का रूपांतरण उदाहरण</th><th scope="col">विवरण</th></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Script जैसे अक्षर. अंक नहीं बदलते.</td></tr>
		<tr><td>Script (बोल्ड)</td><td><code>𝓐𝓑𝓒 𝓪𝓫𝓬 123</code></td><td>Bold Script जैसे अक्षर. अंक नहीं बदलते.</td></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Sans-serif जैसे अक्षर.</td></tr>
		<tr><td>Sans-serif (बोल्ड)</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Sans-serif जैसे bold अक्षर.</td></tr>
		<tr><td>Sans-serif (इटैलिक)</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Sans-serif जैसे italic अक्षर. अंक नहीं बदलते.</td></tr>
		<tr><td>Sans-serif (बोल्ड और इटैलिक)</td><td><code>𝘼𝘽𝘾 𝙖𝙗𝙘 123</code></td><td>Sans-serif जैसे bold italic अक्षर. अंक नहीं बदलते.</td></tr>
		<tr><td>Serif (बोल्ड)</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Serif जैसे bold अक्षर.</td></tr>
		<tr><td>Serif (इटैलिक)</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Serif जैसे italic अक्षर. अंक नहीं बदलते.</td></tr>
		<tr><td>Serif (बोल्ड और इटैलिक)</td><td><code>𝑨𝑩𝑪 𝒂𝒃𝒄 123</code></td><td>Serif जैसे bold italic अक्षर. अंक नहीं बदलते.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Fraktur जैसे अक्षर. अंक नहीं बदलते.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Double-struck अक्षर.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Monospace जैसे अक्षर.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Small capital जैसे अक्षर. केवल lowercase अक्षर बदलते हैं.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>घेरे हुए अक्षर और अंक.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>नकारात्मक वृत्त वाले अक्षर और अंक. छोटे अक्षर बड़े अक्षरों में बदलते हैं.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>वर्गाकार अक्षर. छोटे अक्षर बड़े अक्षरों में बदलते हैं. अंक नहीं बदलते.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>नकारात्मक वर्गाकार अक्षर. छोटे अक्षर बड़े अक्षरों में बदलते हैं. अंक नहीं बदलते.</td></tr>
	</table>
</div>

<p>Unicode सजावटी टेक्स्ट रूपांतरण से बने अक्षर सामान्य अक्षरों और अंकों से अलग Unicode अक्षर होते हैं। इसलिए खोज, कॉपी, टेक्स्ट को आवाज़ में पढ़ने और प्रोग्राम में तुलना करने पर, दिखने में समान होने के बावजूद उन्हें अलग अक्षर माना जाता है।</p>
<p>यदि उपयोगकर्ता के वातावरण का फ़ॉन्ट इन अक्षरों का समर्थन नहीं करता, तो कुछ अक्षर चौकोर बॉक्स या खाली स्थान के रूप में दिख सकते हैं। ये सोशल मीडिया पोस्ट और छोटे सजावटी टेक्स्ट के लिए उपयोगी हैं, लेकिन identifiers, URL, email addresses और खोजे जाने वाले मुख्य टेक्स्ट के लिए सामान्य अक्षरों और अंकों का उपयोग करना बेहतर है।</p>
