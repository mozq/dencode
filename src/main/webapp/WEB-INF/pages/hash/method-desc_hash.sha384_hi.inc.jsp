<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-384 के बारे में</h3>
<p>SHA-384 एक क्रिप्टोग्राफ़िक हैश फ़ंक्शन है जो किसी भी लंबाई के डेटा से 384-बिट हैश मान बनाता है। यह SHA-2 परिवार का हिस्सा है और <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> से लंबा हैश मान देता है।</p>
<p>DenCode में, दर्ज किए गए टेक्स्ट को चुनी गई character encoding की byte sequence के रूप में माना जाता है, और SHA-384 हैश मान 96 hexadecimal अंकों में दिखाया जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" का SHA-384 हैश मान इस प्रकार है।</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>हैश मान की विशेषताएँ</h4>
<p>SHA-384 में समान इनपुट से हमेशा समान हैश मान बनता है। इनपुट थोड़ा भी बदलने पर आउटपुट हैश मान बहुत बदल जाता है।</p>
<p>हैश फ़ंक्शन एक एकदिशी फ़ंक्शन है, इसलिए हैश मान से मूल इनपुट डेटा को पुनः प्राप्त नहीं किया जा सकता।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">SHA-384 हैश मान</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
