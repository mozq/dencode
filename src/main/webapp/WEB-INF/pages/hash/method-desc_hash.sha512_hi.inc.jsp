<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-512 के बारे में</h3>
<p>SHA-512 एक क्रिप्टोग्राफ़िक हैश फ़ंक्शन है जो किसी भी लंबाई के डेटा से 512-बिट हैश मान बनाता है। यह SHA-2 परिवार का हिस्सा है और <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> से लंबा हैश मान देता है।</p>
<p>DenCode में, दर्ज किए गए टेक्स्ट को चुनी गई character encoding की byte sequence के रूप में माना जाता है, और SHA-512 हैश मान 128 hexadecimal अंकों में दिखाया जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" का SHA-512 हैश मान इस प्रकार है।</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>हैश मान की विशेषताएँ</h4>
<p>SHA-512 में समान इनपुट से हमेशा समान हैश मान बनता है। इनपुट थोड़ा भी बदलने पर आउटपुट हैश मान बहुत बदल जाता है।</p>
<p>हैश फ़ंक्शन एक एकदिशी फ़ंक्शन है, इसलिए हैश मान से मूल इनपुट डेटा को पुनः प्राप्त नहीं किया जा सकता।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">SHA-512 हैश मान</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
