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

<h4>HTML एस्केप विकल्प</h4>
<p>DenCode में लक्ष्य, नामित वर्ण संदर्भों का उपयोग, और संख्यात्मक संदर्भ संकेतन चुना जा सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<caption>लक्ष्य</caption>
		<tr><th scope="col">विकल्प</th><th scope="col">विवरण</th><th scope="col">“A &lt; 😀” का उदाहरण</th></tr>
		<tr><td>मूल</td><td><code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code>, और <code>'</code> इन पाँच वर्णों को बदलता है।</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>मूल + गैर-ASCII</td><td>पाँच मूल वर्णों और गैर-ASCII वर्णों को बदलता है।</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>गैर-अल्फ़ान्यूमेरिक</td><td>ASCII अक्षरों और अंकों के अलावा अन्य वर्णों को बदलता है।</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>सभी</td><td>सभी वर्णों को बदलता है।</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>सामान्य HTML प्रदर्शन के लिए “मूल” अक्सर उपयोग किया जाता है, क्योंकि यह केवल आवश्यक वर्णों को बदलता है। किसी स्ट्रिंग को HTML वर्ण संदर्भों के रूप में जाँचना हो या हर वर्ण को स्पष्ट संदर्भ के रूप में दिखाना हो, तो “सभी” का उपयोग करें।</p>

<div class="table-responsive">
	<table class="table">
		<caption>नामित वर्ण संदर्भ</caption>
		<tr><th scope="col">विकल्प</th><th scope="col">विवरण</th><th scope="col">उदाहरण</th></tr>
		<tr><td>HTML5</td><td>HTML5 में परिभाषित नामित वर्ण संदर्भों का उपयोग करता है।</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>HTML4 में परिभाषित नामित वर्ण संदर्भों का उपयोग करता है।</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td><code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code>, और <code>&amp;apos;</code> इन पाँच संदर्भों का उपयोग करता है।</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>कोई नहीं</td><td>नामित वर्ण संदर्भों का उपयोग नहीं करता; केवल संख्यात्मक संदर्भों का उपयोग होता है।</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>संख्यात्मक संदर्भ संकेतन</caption>
		<tr><th scope="col">विकल्प</th><th scope="col">विवरण</th><th scope="col">उदाहरण</th></tr>
		<tr><td>दशमलव</td><td>दशमलव संख्यात्मक संदर्भों का उपयोग करता है।</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>हेक्स छोटे अक्षर</td><td>छोटे अक्षरों वाले हेक्साडेसिमल संख्यात्मक संदर्भों का उपयोग करता है।</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>हेक्स बड़े अक्षर</td><td>बड़े अक्षरों वाले हेक्साडेसिमल संख्यात्मक संदर्भों का उपयोग करता है।</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
