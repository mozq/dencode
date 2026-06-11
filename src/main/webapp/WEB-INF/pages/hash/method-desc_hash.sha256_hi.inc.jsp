<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-256 के बारे में</h3>
<p>SHA-256 एक क्रिप्टोग्राफ़िक हैश फ़ंक्शन है जो किसी भी लंबाई के डेटा से 256-बिट हैश मान बनाता है। यह SHA-2 परिवार का हिस्सा है और फ़ाइल में बदलाव का पता लगाने, डेटा की समानता जाँचने, डिजिटल हस्ताक्षर, प्रमाणपत्र, blockchain आदि में उपयोग होता है।</p>
<p>DenCode में, दर्ज किए गए टेक्स्ट को चुनी गई character encoding की byte sequence के रूप में माना जाता है, और SHA-256 हैश मान 64 hexadecimal अंकों में दिखाया जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" का SHA-256 हैश मान इस प्रकार है।</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>हैश मान की विशेषताएँ</h4>
<p>SHA-256 में समान इनपुट से हमेशा समान हैश मान बनता है। इनपुट थोड़ा भी बदलने पर आउटपुट हैश मान बहुत बदल जाता है।</p>
<p>हैश फ़ंक्शन एक एकदिशी फ़ंक्शन है, इसलिए हैश मान से मूल इनपुट डेटा को पुनः प्राप्त नहीं किया जा सकता।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">SHA-256 हैश मान</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
