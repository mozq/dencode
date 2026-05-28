<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>JIS keyboard conversion (Mikaka रूपांतरण) के बारे में</h3>
<p>JIS keyboard रूपांतरण (Mikaka रूपांतरण) एक मोनोअल्फाबेटिक सब्सटीट्यूशन सिफर (monoalphabetic substitution cipher) है जो टेक्स्ट में वर्णों को अन्य वर्णों से बदलकर एन्क्रिप्ट करता है। मूल रूप से, इसका उपयोग जापानी इंटरनेट पर शब्दजाल (jargon) और भ्रम (obfuscation) के लिए किया जाता है।</p>
<p>JIS कीबोर्ड रूपांतरण (Mikaka रूपांतरण) एक मोनोअल्फाबेटिक सब्सटीट्यूशन सिफर (monoalphabetic substitution cipher) है जो टेक्स्ट में वर्णों को अन्य वर्णों से बदलकर एन्क्रिप्ट करता है। मूल रूप से, इसका उपयोग जापानी इंटरनेट पर शब्दजाल (jargon) और भ्रम (obfuscation) के लिए किया जाता है। वर्ण प्रतिस्थापन जापानी JIS कीबोर्ड (JIS X4064 / OADG109A) पर मुद्रित अंग्रेजी वर्णों और जापानी वर्णों के बीच परिवर्तित करके किया जाता है। मूल रूप से, यह "みかか" (Mikaka) नामक इंटरनेट स्लैंग से लिया गया है, जो एक जापानी दूरसंचार वाहक "<abbr title="Nippon Telegraph and Telephone corporation">NTT</abbr>" को JIS कीबोर्ड के साथ टाइप करने का परिणाम है।</p>

<p><a title="StuartBrady (the first version) and others., GFDL &lt;http://www.gnu.org/copyleft/fdl.html&gt;, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:KB_Japanese.svg"><img width="512" alt="KB Japanese" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/KB_Japanese.svg/512px-KB_Japanese.svg.png"></a></p>

<p>उदाहरण के लिए, "t" को "か" और "h" को "く" में एन्क्रिप्ट किया जाता है। DenCode एक ही समय में अंग्रेजी और जापानी वर्णों को परिवर्तित करता है, इसलिए एन्क्रिप्शन और डिक्रिप्शन का अर्थ समान है।</p>

<pre>
प्लेन टेक्स्ट (Plain text)  : this is a secret message
सिफर टेक्स्ट (Cipher text) : かくにと にと ち といそすいか もいととちきい
</pre>

<pre>
सिफर टेक्स्ट (Cipher text)       : かくにと にと ち といそすいか もいととちきい
पुनः सिफर टेक्स्ट (Re-cipher text) : this is a secret message
</pre>

<p>JIS कीबोर्ड रूपांतरण द्वारा परिवर्तित वर्णों की मैपिंग इस प्रकार है। कोष्ठक (parentheses) में वर्ण वे हैं जो lenient-mode (उदार मोड) में अनुमत हैं।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>अंग्रेज़ी (English)</th><th>जापानी (Japanese)</th></tr>
		</thead>
		<tbody>
			<tr><td>1</td><td>ぬ (ヌ)</td></tr>
			<tr><td>2</td><td>ふ (フ)</td></tr>
			<tr><td>3</td><td>あ (ア)</td></tr>
			<tr><td>#</td><td>ぁ (ァ)</td></tr>
			<tr><td>4</td><td>う (ウ)</td></tr>
			<tr><td>$</td><td>ぅ (ゥ)</td></tr>
			<tr><td>5</td><td>え (エ)</td></tr>
			<tr><td>%</td><td>ぇ (ェ)</td></tr>
			<tr><td>6</td><td>お (オ)</td></tr>
			<tr><td>&amp;</td><td>ぉ (ォ)</td></tr>
			<tr><td>7</td><td>や (ヤ)</td></tr>
			<tr><td>'</td><td>ゃ (ャ)</td></tr>
			<tr><td>8</td><td>ゆ (ユ)</td></tr>
			<tr><td>(</td><td>ゅ (ュ)</td></tr>
			<tr><td>9</td><td>よ (ヨ)</td></tr>
			<tr><td>)</td><td>ょ (ョ)</td></tr>
			<tr><td>0</td><td>わ (ワ)</td></tr>
			<tr><td>-</td><td>ほ (ホ)</td></tr>
			<tr><td>^</td><td>へ (ヘ)</td></tr>
			<tr><td>|</td><td>ー</td></tr>
		</tbody>
		<tbody>
			<tr><td>q (Q)</td><td>た (タ)</td></tr>
			<tr><td>w (W)</td><td>て (テ)</td></tr>
			<tr><td>e</td><td>い (イ)</td></tr>
			<tr><td>E</td><td>ぃ (ィ)</td></tr>
			<tr><td>r (R)</td><td>す (ス)</td></tr>
			<tr><td>t (T)</td><td>か (カ)</td></tr>
			<tr><td>y (Y)</td><td>ん (ン)</td></tr>
			<tr><td>u (U)</td><td>な (ナ)</td></tr>
			<tr><td>i (I)</td><td>に (ニ)</td></tr>
			<tr><td>o (O)</td><td>ら (ラ)</td></tr>
			<tr><td>p (P)</td><td>せ (セ)</td></tr>
			<tr><td>@</td><td>゛</td></tr>
			<tr><td>[</td><td>゜</td></tr>
			<tr><td>{</td><td>「</td></tr>
		</tbody>
		<tbody>
			<tr><td>a (A)</td><td>ち (チ)</td></tr>
			<tr><td>s (S)</td><td>と (ト)</td></tr>
			<tr><td>d (D)</td><td>し (シ)</td></tr>
			<tr><td>f (F)</td><td>は (ハ)</td></tr>
			<tr><td>g (G)</td><td>き (キ)</td></tr>
			<tr><td>h (H)</td><td>く (ク)</td></tr>
			<tr><td>j (J)</td><td>ま (マ)</td></tr>
			<tr><td>k (K)</td><td>の (ノ)</td></tr>
			<tr><td>l (L)</td><td>り (リ)</td></tr>
			<tr><td>;</td><td>れ (レ)</td></tr>
			<tr><td>:</td><td>け (ケ)</td></tr>
			<tr><td>]</td><td>む (ム)</td></tr>
			<tr><td>}</td><td>」</td></tr>
		</tbody>
		<tbody>
			<tr><td>z</td><td>つ (ツ)</td></tr>
			<tr><td>Z</td><td>っ (ッ)</td></tr>
			<tr><td>x (X)</td><td>さ (サ)</td></tr>
			<tr><td>c (C)</td><td>そ (ソ)</td></tr>
			<tr><td>v (V)</td><td>ひ (ヒ)</td></tr>
			<tr><td>b (B)</td><td>こ (コ)</td></tr>
			<tr><td>n (N)</td><td>み (ミ)</td></tr>
			<tr><td>m (M)</td><td>も (モ)</td></tr>
			<tr><td>,</td><td>ね (ネ)</td></tr>
			<tr><td>&lt;</td><td>、</td></tr>
			<tr><td>.</td><td>る (ル)</td></tr>
			<tr><td>&gt;</td><td>。</td></tr>
			<tr><td>/</td><td>め (メ)</td></tr>
			<tr><td>?</td><td>・</td></tr>
			<tr><td>\</td><td>ろ (ロ)</td></tr>
		</tbody>
	</table>
</div>

<p>जापानी "を" को परिवर्तित नहीं किया जाता है क्योंकि इसका JIS कीबोर्ड पर कोई अंग्रेजी समकक्ष नहीं है।</p>

<p>कृपया ध्यान दें कि जापानी "ー" को अपवाद रूप से "|" पर मैप किया गया है। "\" (बैकस्लैश या येन प्रतीक) को "ろ" पर मैप किया गया है।</p>

<p>दो वैकल्पिक रूपांतरण मोड प्रदान किए जाते हैं: strict (सख्त) और lenient (उदार)। Strict-mode मूल रूप से अपर-केस वर्णमाला वर्णों और जापानी काताकाना वर्णों को परिवर्तित नहीं करता है, लेकिन lenient-mode उन वर्णों को भी परिवर्तित करता है। कृपया ध्यान दें कि lenient-mode में, पुन: रूपांतरण मूल वर्ण पर वापस नहीं आ सकता है, जैसे "N -&gt; み -&gt; n" या "ミ -&gt; n -&gt; み" ।</p>
