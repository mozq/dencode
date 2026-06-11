<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>HTML एस्केप के बारे में</h3>
<p>HTML एस्केप उन अक्षरों को character references में बदलता है जिनका HTML में विशेष अर्थ होता है, ताकि किसी स्ट्रिंग को HTML टेक्स्ट के रूप में सुरक्षित रूप से दिखाया जा सके। उदाहरण के लिए, <code>&lt;</code> और <code>&gt;</code>, जिन्हें tag के रूप में समझा जा सकता है, <code>&amp;lt;</code> और <code>&amp;gt;</code> के रूप में लिखे जाते हैं।</p>
<p>HTML एस्केप करने से इनपुट टेक्स्ट HTML tag या attribute के रूप में नहीं समझा जाता और स्क्रीन पर टेक्स्ट के रूप में वैसा ही दिखाया जा सकता है।</p>

<p>उदाहरण के लिए, “&lt;p&gt;Hello, world!&lt;/p&gt;” को HTML एस्केप करने पर परिणाम यह होता है।</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">अक्षर</th><th scope="col">HTML एस्केप के बाद</th><th scope="col">विवरण</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>HTML tag की शुरुआत के रूप में समझा जा सकता है।</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>HTML tag के अंत के रूप में समझा जा सकता है।</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>character reference की शुरुआत के रूप में समझा जा सकता है।</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>जब attribute value double quotes में हो, तब इसका विशेष अर्थ होता है।</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>जब attribute value single quotes में हो, तब इसका विशेष अर्थ होता है।</td></tr>
	</table>
</div>

<h4>मूलभूत एस्केप और पूर्ण एस्केप</h4>
<p>DenCode में HTML एस्केप के परिणाम के रूप में “मूलभूत” और “सभी” दो प्रकार दिखाए जाते हैं।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">प्रकार</th><th scope="col">विवरण</th><th scope="col">“A &lt; あ” का उदाहरण</th></tr>
		<tr><td>HTML एस्केप (मूलभूत)</td><td><code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> और <code>'</code> इन पांच अक्षरों को बदलता है।</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML एस्केप (सभी)</td><td>जहाँ named character reference उपलब्ध हो, वहाँ उसका उपयोग करता है; अन्य अक्षरों के लिए decimal numeric character reference का उपयोग करता है।</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>सामान्य HTML प्रदर्शन में आमतौर पर मूलभूत एस्केप उपयोग किया जाता है, जो केवल आवश्यक अक्षरों को बदलता है। पूर्ण एस्केप तब उपयोगी है जब स्ट्रिंग को HTML character references के रूप में जाँचना हो या हर अक्षर को स्पष्ट reference रूप में दिखाना हो।</p>

<h4>अनएस्केप</h4>
<p>HTML अनएस्केप HTML character references को मूल अक्षरों में वापस बदलता है। DenCode <code>&amp;lt;</code> और <code>&amp;amp;</code> जैसे named character references, <code>&amp;#12354;</code> जैसे decimal numeric character references, और <code>&amp;#x3042;</code> जैसे hexadecimal numeric character references को decode कर सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML character reference</th><th scope="col">अनएस्केप के बाद</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
