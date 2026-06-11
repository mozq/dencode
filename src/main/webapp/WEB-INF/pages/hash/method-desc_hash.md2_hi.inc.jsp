<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD2 के बारे में</h3>
<p>MD2 एक हैश फ़ंक्शन है जो किसी भी लंबाई के डेटा से 128-बिट हैश मान बनाता है। यह पुराना एल्गोरिदम है और वर्तमान क्रिप्टोग्राफ़िक उपयोगों के लिए अनुशंसित नहीं है।</p>
<p>DenCode में, दर्ज किए गए टेक्स्ट को चुनी गई character encoding की byte sequence के रूप में माना जाता है, और MD2 हैश मान 32 hexadecimal अंकों में दिखाया जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" का MD2 हैश मान इस प्रकार है।</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>हैश मान की विशेषताएँ</h4>
<p>MD2 में समान इनपुट से हमेशा समान हैश मान बनता है। इनपुट थोड़ा भी बदलने पर आउटपुट हैश मान बहुत बदल जाता है।</p>
<p>हैश फ़ंक्शन एक एकदिशी फ़ंक्शन है, इसलिए हैश मान से मूल इनपुट डेटा को पुनः प्राप्त नहीं किया जा सकता।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">MD2 हैश मान</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 का उपयोग compatibility checks में हो सकता है, लेकिन नए उपयोगों के लिए <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> जैसे नए हैश फ़ंक्शन पर विचार करें।</p>
