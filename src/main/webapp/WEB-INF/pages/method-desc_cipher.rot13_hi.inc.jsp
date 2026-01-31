<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>ROT13 के बारे में</h3>
<p>ROT13 एक मोनोअल्फाबेटिक सब्सटीट्यूशन सिफर (monoalphabetic substitution cipher) है जो टेक्स्ट में वर्णों को अन्य वर्णों से बदलकर एन्क्रिप्ट करता है।</p>
<p>वर्णों का प्रतिस्थापन "A" से "Z" तक के वर्णों को "ABCDEFGHIJKLMNOPQRSTUVWXYZ" के 26 वर्णों के भीतर 13 वर्ण शिफ्ट करके किया जाता है।</p>
<p>उदाहरण के लिए, "A" को "N" और "Z" को "M" में एन्क्रिप्ट किया जाता है।</p>

<pre>
एन्क्रिप्शन से पहले : ABCDEFGHIJKLMNOPQRSTUVWXYZ
एन्क्रिप्शन के बाद : NOPQRSTUVWXYZABCDEFGHIJKLM
</pre>

<pre>
एन्क्रिप्शन से पहले का टेक्स्ट : THIS IS A SECRET MESSAGE
एन्क्रिप्शन के बाद का टेक्स्ट : GUVF VF N FRPERG ZRFFNTR
</pre>

<p>चूंकि इसमें उलटनीयता (reversibility) है कि सिफरटेक्स्ट को फिर से एन्क्रिप्ट करने पर प्लेनटेक्स्ट (plaintext) प्राप्त होता है, इसलिए डिक्रिप्शन भी एन्क्रिप्शन की तरह ही किया जा सकता है।</p>
