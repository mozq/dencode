<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Playfair सिफर के बारे में</h3>
<p>Playfair सिफर एक substitution cipher है, जिसमें 5×5 अक्षर तालिका का उपयोग करके अक्षरों के जोड़े बदले जाते हैं।</p>

<p>उदाहरण के लिए, यदि कुंजी "SECRET" है और plaintext "HELLO" है, तो यह इस प्रकार encrypt होता है।</p>

<pre>
Plaintext  : HELLO
Ciphertext : ISKYIQ
</pre>

<p>Encryption में पहले plaintext को दो-दो अक्षरों के जोड़ों में बाँटा जाता है। यदि किसी जोड़े में एक ही अक्षर दो बार आता है, जैसे "LL", तो उनके बीच सहायक अक्षर "X" डाला जाता है। यदि अंत में केवल एक अक्षर बचता है, तो वहाँ भी "X" जोड़ा जाता है।</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>इसके बाद 5×5, यानी कुल 25 खानों वाली cipher table तैयार की जाती है। Alphabet में 26 अक्षर होते हैं, इसलिए सामान्यतः "I=J" को एक ही खाने में रखा जाता है।</p>
<p>सबसे पहले कुंजी के अक्षरों को दोहराव हटाकर table में लिखा जाता है। कुंजी "SECRET" होने पर दूसरा "E" नहीं लिखा जाता। इसके बाद "ABCDEFGHIKLMNOPQRSTUVWXYZ" लिखा जाता है, लेकिन कुंजी में पहले से मौजूद अक्षर फिर नहीं लिखे जाते। इस तरह बिना दोहराव वाली 5×5 cipher table बनती है।</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>इस table का उपयोग करके हर अक्षर-जोड़े को नीचे दिए गए नियमों से encrypt किया जाता है। तरीका इस बात पर निर्भर करता है कि दोनों अक्षर table में कहाँ स्थित हैं।</p>

<ul>
	<li>एक ही पंक्ति में हों: प्रत्येक अक्षर को उसके दाएँ वाले अक्षर से बदलें। यदि वह सबसे दाएँ है, तो सबसे बाएँ अक्षर पर लौटें।</li>
	<li>एक ही स्तंभ में हों: प्रत्येक अक्षर को उसके नीचे वाले अक्षर से बदलें। यदि वह सबसे नीचे है, तो सबसे ऊपर लौटें।</li>
	<li>अलग पंक्ति और स्तंभ में हों: उन दो अक्षरों को कोने मानकर एक आयत की कल्पना करें और उन्हें बाकी दो कोनों के अक्षरों से बदलें।</li>
</ul>

<pre>
S <strong>E</strong>
A B
<strong>H</strong> I

K <strong>L</strong>
P Q
<strong>X</strong> Y

I K <strong>L</strong>
<strong>O</strong> P Q
</pre>

<pre>
HE LX LO
↓
IS KY IQ
</pre>

<p>Decryption में ciphertext को उसी अक्षर तालिका से दो-दो अक्षरों में process किया जाता है। ध्यान दें कि सहायक अक्षर "X" अपने-आप हटाया नहीं जाता।</p>

<pre>
Ciphertext : ISKYIQ
Plaintext  : HEL<strong>X</strong>LO
</pre>
