<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>ROT47 के बारे में</h3>
<p>ROT47 एक मोनोअल्फाबेटिक सब्सटीट्यूशन सिफर (monoalphabetic substitution cipher) है जो टेक्स्ट में वर्णों को अन्य वर्णों से बदलकर एन्क्रिप्ट करता है।</p>
<p>वर्णों का प्रतिस्थापन "!" से "~" तक के वर्णों को "!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~" के 94 वर्णों के भीतर 47 वर्ण शिफ्ट करके किया जाता है।</p>
<p>उदाहरण के लिए, "!" को "P", "A" को "p", और "0" को "_" में एन्क्रिप्ट किया जाता है।</p>

<pre>
एन्क्रिप्शन से पहले : !"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
एन्क्रिप्शन के बाद : PQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNO
</pre>

<pre>
एन्क्रिप्शन से पहले का टेक्स्ट : THIS IS A SECRET MESSAGE 123!
एन्क्रिप्शन के बाद का टेक्स्ट : %wx$ x$ p $tr#t% |t$$pvt `abP
</pre>

<p>चूंकि इसमें उलटनीयता (reversibility) है कि सिफरटेक्स्ट को फिर से एन्क्रिप्ट करने पर प्लेनटेक्स्ट (plaintext) प्राप्त होता है, इसलिए डिक्रिप्शन भी एन्क्रिप्शन की तरह ही किया जा सकता है।</p>
