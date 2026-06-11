<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD5 के बारे में</h3>
<p>MD5 एक हैश फ़ंक्शन है जो किसी भी लंबाई के डेटा से 128-बिट हैश मान बनाता है। इसका व्यापक उपयोग हुआ है, लेकिन collision resistance में कमज़ोरी के कारण यह वर्तमान क्रिप्टोग्राफ़िक उपयोगों के लिए अनुशंसित नहीं है।</p>
<p>DenCode में, दर्ज किए गए टेक्स्ट को चुनी गई character encoding की byte sequence के रूप में माना जाता है, और MD5 हैश मान 32 hexadecimal अंकों में दिखाया जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" का MD5 हैश मान इस प्रकार है।</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>हैश मान की विशेषताएँ</h4>
<p>MD5 में समान इनपुट से हमेशा समान हैश मान बनता है। इनपुट थोड़ा भी बदलने पर आउटपुट हैश मान बहुत बदल जाता है।</p>
<p>हैश फ़ंक्शन एक एकदिशी फ़ंक्शन है, इसलिए हैश मान से मूल इनपुट डेटा को पुनः प्राप्त नहीं किया जा सकता।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">MD5 हैश मान</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 पुराने चेकसम से तुलना में दिख सकता है, लेकिन बदलाव का पता लगाने या हस्ताक्षर जैसे सुरक्षा की आवश्यकता वाले उपयोगों के लिए <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> या किसी नए हैश फ़ंक्शन पर विचार करें।</p>
