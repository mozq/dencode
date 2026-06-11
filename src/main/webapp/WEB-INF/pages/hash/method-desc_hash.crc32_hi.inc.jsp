<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>CRC32 के बारे में</h3>
<p>CRC32 एक error-detection विधि है जो किसी भी लंबाई के डेटा से 32-बिट check value बनाती है। फ़ाइल ट्रांसफ़र, compressed formats आदि में इसका उपयोग डेटा के क्षतिग्रस्त होने की जाँच के लिए किया जाता है।</p>
<p>DenCode में, दर्ज किए गए टेक्स्ट को चुनी गई character encoding की byte sequence के रूप में माना जाता है, और CRC32 मान hexadecimal में दिखाया जाता है।</p>

<p>उदाहरण के लिए, "Hello, world!" का CRC32 इस प्रकार है।</p>

<pre>ebe6c6e6</pre>

<h4>CRC32 की विशेषताएँ</h4>
<p>CRC32 आकस्मिक डेटा क्षति का पता लगाने के लिए उपयुक्त है। लेकिन यह क्रिप्टोग्राफ़िक हैश फ़ंक्शन नहीं है, इसलिए छेड़छाड़ से सुरक्षा की आवश्यकता वाले उपयोगों के लिए उपयुक्त नहीं है।</p>
<p>CRC32 में समान इनपुट से हमेशा समान मान बनता है। इनपुट बदलने पर आउटपुट मान भी बदल जाता है। हालांकि, CRC32 मान से मूल इनपुट डेटा को पुनः प्राप्त नहीं किया जा सकता।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">इनपुट</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
