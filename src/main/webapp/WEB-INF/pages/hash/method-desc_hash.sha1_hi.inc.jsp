<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-1 के बारे में</h3>
<p>SHA-1 एक क्रिप्टोग्राफ़िक हैश फ़ंक्शन है जो किसी भी लंबाई के डेटा से 160-बिट हैश मान बनाता है। पहले इसका व्यापक उपयोग होता था, लेकिन अब collision resistance में कमज़ोरी के कारण नए क्रिप्टोग्राफ़िक उपयोगों के लिए अनुशंसित नहीं है।</p>
<p>DenCode में, दर्ज किए गए टेक्स्ट को चुनी गई character encoding की byte sequence के रूप में माना जाता है, और SHA-1 हैश मान 40 hexadecimal अंकों में दिखाया जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" का SHA-1 हैश मान इस प्रकार है।</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>हैश मान की विशेषताएँ</h4>
<p>SHA-1 में समान इनपुट से हमेशा समान हैश मान बनता है। इनपुट थोड़ा भी बदलने पर आउटपुट हैश मान बहुत बदल जाता है।</p>
<p>हैश फ़ंक्शन एक एकदिशी फ़ंक्शन है, इसलिए हैश मान से मूल इनपुट डेटा को पुनः प्राप्त नहीं किया जा सकता।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">SHA-1 हैश मान</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>यह मौजूदा सिस्टम के साथ compatibility के लिए उपयोग हो सकता है, लेकिन नए उपयोगों के लिए <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> या किसी अधिक मजबूत हैश फ़ंक्शन पर विचार करें।</p>
