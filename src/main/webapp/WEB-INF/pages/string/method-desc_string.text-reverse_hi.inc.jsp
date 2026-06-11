<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>टेक्स्ट उलटने के बारे में</h3>
<p>टेक्स्ट उलटना इनपुट स्ट्रिंग के वर्णों को उल्टे क्रम में रखता है। पूरी स्ट्रिंग को अंतिम वर्ण से पहले वर्ण तक पढ़ा जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" को उलटने पर परिणाम यह होता है:</p>

<pre>!dlrow ,olleH</pre>

<p>कई पंक्तियों वाले टेक्स्ट में newline भी स्ट्रिंग का हिस्सा माना जाता है। इसलिए पंक्तियों के क्रम सहित पूरी सामग्री उलट जाती है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">उलटने के बाद</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>यह रूपांतरण वाक्य का अर्थ बनाए रखते हुए शब्दों का क्रम नहीं बदलता है। यह केवल इनपुट वर्णों के क्रम को उलट देता है।</p>
