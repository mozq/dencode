<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>URL एन्कोडिंग के बारे में</h3>
<p>URL एन्कोडिंग, URL में टेक्स्ट को सुरक्षित रूप से दर्शाने की एक विधि है। इसका औपचारिक नाम "percent-encoding" है, जिसे URI विनिर्देश <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a> में परिभाषित किया गया है।</p>
<p>URL में विशेष अर्थ रखने वाले अक्षर, या URL में सीधे उपयोग करने में कठिन अक्षर, प्रतिशत चिह्न (%) और दो हेक्साडेसिमल अंकों के रूप में बदले जाते हैं।</p>
<p>उदाहरण के लिए, स्पेस को <code>%20</code>, विस्मयादिबोधक चिह्न (<code>!</code>) को <code>%21</code>, और जापानी अक्षर "あ" को UTF-8 में <code>%E3%81%82</code> के रूप में दर्शाया जाता है।</p>

<p>URL एन्कोडिंग पहले टेक्स्ट को चुनी गई कैरेक्टर एन्कोडिंग के अनुसार बाइट्स में बदलती है, फिर आवश्यक होने पर प्रत्येक बाइट को <code>%HH</code> के रूप में दिखाती है। DenCode में, RFC 3986 के unreserved characters, यानी अल्फान्यूमेरिक अक्षर और <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, नहीं बदले जाते; बाकी अक्षरों को percent-encoding के रूप में एन्कोड किया जाता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">अक्षर</th><th scope="col">URL एन्कोडिंग के बाद</th><th scope="col">विवरण</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>अल्फान्यूमेरिक अक्षर unreserved होते हैं, इसलिए उन्हें नहीं बदला जाता।</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code>, और <code>~</code> unreserved होते हैं, इसलिए उन्हें नहीं बदला जाता।</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>यह URL path segments को अलग करता है; value के रूप में इस्तेमाल होने पर इसे एन्कोड करें।</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>यह reserved character query string शुरू करता है।</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>यह reserved character query parameters को अलग करता है।</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>यह reserved character parameter name और value को अलग करता है।</td></tr>
		<tr><td>स्पेस</td><td><code>%20</code></td><td>URL percent-encoding में स्पेस <code>%20</code> के रूप में एन्कोड होता है; <code>application/x-www-form-urlencoded</code> में यह <code>+</code> होता है।</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>जब plus sign स्वयं value हो, तो <code>+</code> को एन्कोड करें।</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>UTF-8 में यह अक्षर तीन बाइट की sequence के रूप में एन्कोड होता है।</td></tr>
	</table>
</div>

<p>उदाहरण के लिए, "Hello, world!" को URL encode करने पर निम्न परिणाम मिलता है।</p>

<pre>Hello%2C%20world%21</pre>

<p>इस उदाहरण में, comma (<code>,</code>) <code>%2C</code>, space <code>%20</code>, और exclamation mark (<code>!</code>) <code>%21</code> में बदलते हैं।</p>


<h4>application/x-www-form-urlencoded में स्पेस का रूप</h4>
<p>HTML form submission में उपयोग होने वाले <code>application/x-www-form-urlencoded</code> में, spaces को <code>+</code> के रूप में दिखाया जा सकता है। यह format <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> में form submission encoding के रूप में परिभाषित है।</p>
<p>DenCode में encoding करते समय spaces को <code>%20</code> या <code>+</code> के रूप में output करने का विकल्प चुना जा सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">"Hello world" का परिणाम</th><th scope="col">उपयोग</th></tr>
		<tr><td>Percent-encoding</td><td><code>Hello%20world</code></td><td>URLs के लिए सामान्य रूप से उपयोगी format।</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>HTML forms की query strings और request bodies में उपयोग होता है।</td></tr>
	</table>
</div>
