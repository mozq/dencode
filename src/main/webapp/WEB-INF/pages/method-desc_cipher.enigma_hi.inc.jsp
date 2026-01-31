<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Enigma Cipher के बारे में</h3>
<p>Enigma Cipher एक प्रतिस्थापन सिफर (substitution cipher) है जो वर्णों को अन्य वर्णों से बदलकर एन्क्रिप्ट करता है। यह "A" से "Z" तक के 26 वर्णों के एन्क्रिप्शन का समर्थन करता है।</p>
<p>वर्णों का प्रतिस्थापन Enigma मशीन का उपयोग करके किया जाता है। DenCode निम्नलिखित Enigma मशीनों के सिमुलेशन का समर्थन करता है।</p>

<ul>
	<li>Enigma I</li>
	<li>Enigma M3</li>
	<li>Enigma M4 (U-boat Enigma)</li>
	<li>Norway Enigma "Norenigma"</li>
	<li>Sondermaschine (Special machine)</li>
	<li>Enigma G "Zählwerk Enigma" (A28/G31)</li>
	<li>Enigma G G-312 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-260 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-111 (G31 Hungarian Enigma)</li>
	<li>Enigma D (Commercial Enigma A26)</li>
	<li>Enigma K (Commercial Enigma A27)</li>
	<li>Enigma KD (Enigma K with UKW-D)</li>
	<li>Swiss-K (Swiss Enigma K variant)</li>
	<li>Railway Enigma "Rocket I"</li>
	<li>Enigma T "Tirpitz" (Japanese Enigma)</li>
	<li>Spanish Enigma, wiring D</li>
	<li>Spanish Enigma, wiring F</li>
	<li>Spanish Enigma, Delta (A 16081)</li>
	<li>Spanish Enigma, Sonderschaltung / Delta (A 16101)</li>
</ul>

<p>Enigma मशीन की संरचना इस प्रकार है। कीबोर्ड (Tastatur) से इनपुट किए गए वर्ण, प्लगबोर्ड (Steckerbrett), एन्री व्हील (ETW, Eintrittswalze), 3 या 4 रोटर्स (Walze), और रिफ्लेक्टर (UKW, Umkehrwalze) से गुजरते हैं, और फिर उल्टे रास्ते का पालन करते हुए एन्क्रिप्टेड परिणाम लैम्पबोर्ड (Lampenfeld) पर प्रदर्शित होते हैं। रोटर्स जैसी सभी जगहों पर वर्णों का प्रतिस्थापन होता है।</p>

<pre>
 UKW   Walze  Walze  Walze   ETW  (Stecker)
         3      2      1
 ___    ___    ___    ___    ___    ___
|   |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &lt; Tastatur
| | |  |   |  |   |  |   |  |   |  |   |
| | |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &gt; Lampenfeld
|   |  |   |  |   |  |   |  |   |  |   |
 ---    ---    ---    ---    ---    ---
</pre>

<p>एंट्री व्हील, रोटर्स और रिफ्लेक्टर में "A" से "Z" तक के 26 वर्णों को आंतरिक रूप से अन्य वर्णों में बदलने के लिए वायरिंग होती है, और जब उस वायरिंग में बिजली प्रवाहित होती है तो प्रतिस्थापन होता है। उदाहरण के लिए, Enigma I के रोटर "I" में निम्नलिखित वायरिंग होती है, और "A" वर्ण "E" में बदल जाता है। इसके अलावा, यदि रिफ्लेक्टर से लौटने वाला वर्ण "J" है, तो यह उल्टी वायरिंग का पालन करता है और "Z" में बदल जाता है।</p>

<pre>
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ
</pre>

<p>Enigma I की सभी वायरिंग इस प्रकार हैं।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>व्हील (Wheel)</th><th>ABCDEFGHIJKLMNOPQRSTUVWXYZ</th></tr>
		<tr><td>ETW</td><td>ABCDEFGHIJKLMNOPQRSTUVWXYZ</td></tr>
		<tr><td>I</td><td>EKMFLGDQVZNTOWYHXUSPAIBRCJ</td></tr>
		<tr><td>II</td><td>AJDKSIRUXBLHWTMCQGZNPYFVOE</td></tr>
		<tr><td>III</td><td>BDFHJLCPRTXVZNYEIWGAKMUSQO</td></tr>
		<tr><td>IV</td><td>ESOVPZJAYQUIRHXLNFTGKDCMWB</td></tr>
		<tr><td>V</td><td>VZBRGITYUPSDNHLXAWMJQOFECK</td></tr>
		<tr><td>UKW-A</td><td>EJMZALYXVBWFCRQUONTSPIKHGD</td></tr>
		<tr><td>UKW-B</td><td>YRUHQSLDPXNGOKMIEBFZCWVJAT</td></tr>
		<tr><td>UKW-C</td><td>FVPJIAOYEDRZXWGCTKUQSBNMHL</td></tr>
	</table>
</div>

<p>प्लगबोर्ड एक ऐसा तंत्र है जो उपयोगकर्ता को वायरिंग द्वारा प्रतिस्थापन करने की अनुमति देता है। कुछ Enigma मशीनों में ETW से पहले एक प्लगबोर्ड होता है। प्लगबोर्ड में "A" से "Z" तक के 26 वर्णों के इनपुट/आउटपुट टर्मिनल होते हैं, और किन्हीं भी दो वर्णों को केबल से जोड़कर उन दो वर्णों को प्रतिस्थापित किया जा सकता है। उदाहरण के लिए, यदि "A" और "M" को केबल से जोड़ा जाता है, तो "A" को "M" और "M" को "A" में बदल दिया जाता है। जिन इनपुट/आउटपुट टर्मिनलों को केबल से नहीं जोड़ा गया है, उनके वर्ण प्रतिस्थापित नहीं होते हैं।</p>
<p>जब कीबोर्ड से एक वर्ण इनपुट किया जाता है, तो रोटर एक कदम घूमता है। रोटर दाईं ओर से घूमना शुरू करता है, और जब यह रोटर पर नॉच (notch) की स्थिति तक घूमता है, तो बाईं ओर का रोटर भी एक कदम घूमता है। इस रोटर के घूमने के कारण, एन्क्रिप्शन के लिए वायरिंग हर वर्ण के साथ बदल जाती है, इसलिए यदि समान वर्ण इनपुट किया जाता है, तो इसे पिछली बार से अलग वर्ण में बदल दिया जाता है।</p>
<p>रोटर में एक रिंग (ring) होती है, और रिंग की परिधि पर "A" से "Z" (या "01" से "26") तक के वर्ण उत्कीर्ण होते हैं। रिंग अपनी परिधि पर वर्णों और रोटर की आंतरिक वायरिंग के ऑफसेट को 26 चरणों में सेट कर सकती है। उदाहरण के लिए, "Enigma I" के रोटर "I" के मामले में, यदि रिंग सेटिंग "A (01)" है, तो "A" को "E" में बदल दिया जाता है, लेकिन यदि रिंग सेटिंग "B (02)" है, तो आंतरिक वायरिंग 1 शिफ्ट हो जाती है, इसलिए मूल Z-J वायरिंग के रूप में "A" को "K" में बदल दिया जाता है।</p>

<pre>
रिंग: A (01)
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ

रिंग: B (02)
BCDEFGHIJKLMNOPQRSTUVWXYZA
||||||||||||||||||||||||||
FLNGMHERWAOUPXZIYVTQBJCSDK
</pre>

<p>रोटर्स के क्रम और शुरुआती स्थिति को सेट किया जा सकता है। उदाहरण के लिए, यदि "I", "II", "III" के 3 प्रकार के रोटर हैं, तो उन्हें Enigma मशीन में "II", "I", "III" जैसे क्रम में सेट किया जा सकता है, और प्रत्येक रोटर की प्रारंभिक स्थिति को "A (01)" से "Z (26)" के बीच सेट किया जा सकता है। रिफ्लेक्टर के लिए भी, ऐसी Enigma मशीनें हैं जहाँ रिफ्लेक्टर को अलग-अलग वायरिंग वाले कई प्रकारों में बदला जा सकता है, या प्रारंभिक स्थिति सेट की जा सकती है। एंट्री व्हील तय होता है और इसे बदला नहीं जा सकता। प्लगबोर्ड वाली Enigma मशीनों में, प्लगबोर्ड को भी सेट किया जा सकता है। ये सेटिंग्स Enigma मशीन द्वारा एन्क्रिप्शन की कुंजी (key) बन जाती हैं।</p>
<p>निचे Enigma I के साथ एन्क्रिप्ट करने का एक उदाहरण है।</p>

<pre>
व्हील           : UKW-A II I III
रिंग सेटिंग     : X M V  (24 13 22)
पोजीशन सेटिंग : A B L  (01 02 12)
प्लगबोर्ड       : AM FI NV PS TU WZ

एन्क्रिप्शन से पहले का टेक्स्ट : SECRET
एन्क्रिप्शन के बाद का टेक्स्ट : LCGODU
</pre>

<p>इस मामले में, पहले वर्ण "S" को निम्नलिखित प्रवाह में प्रतिस्थापित किया जाता है और अंत में "L" में एन्क्रिप्ट किया जाता है।</p>

<pre>
S -&gt; P  : प्लगबोर्ड
P -&gt; P  : ETW
P -&gt; L  : III
L -&gt; P  : I
P -&gt; W  : II
W -&gt; K  : UKW-A
K -&gt; Q  : II
Q -&gt; O  : I
O -&gt; L  : III
L -&gt; L  : ETW
L -&gt; L  : प्लगबोर्ड
</pre>

<p>इसके अलावा, यदि रोटर की रोटेशन स्थिति और इनपुट (+) / आउटपुट (-) की स्थिति को रिंग पर वर्णों द्वारा दर्शाया जाता है, तो यह इस प्रकार है। (चूंकि रोटर घूम रहा है, उपरोक्त "प्रतिस्थापित वर्ण" और "रिंग पर स्थिति के रूप में वर्ण" भिन्न हैं।)</p>

<pre>
           -      +       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : प्लगबोर्ड
           -   +          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           -   +          
MNOPQRSTUVWXYZABCDEFGHIJKL  : III
           +  -           
BCDEFGHIJKLMNOPQRSTUVWXYZA  : I
               +-         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          -           +   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>

<p>Enigma मशीन की एक विशेषता है कि यदि एन्क्रिप्टेड टेक्स्ट को उसी सेटिंग के साथ फिर से एन्क्रिप्ट किया जाता है, तो एन्क्रिप्शन से पहले का प्लेनटेक्स्ट प्राप्त होता है। इसलिए, उपरोक्त उदाहरण में एन्क्रिप्टेड "L" इनपुट करने पर मूल "S" प्राप्त होता है।</p>

<pre>
L -&gt; L  : प्लगबोर्ड
L -&gt; L  : ETW
L -&gt; O  : III
O -&gt; Q  : I
Q -&gt; K  : II
K -&gt; W  : UKW-A
W -&gt; P  : II
P -&gt; L  : I
L -&gt; P  : III
P -&gt; P  : ETW
P -&gt; S  : प्लगबोर्ड
</pre>

<pre>
           +      -       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : प्लगबोर्ड
           +   -          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           +   -          
MNOPQRSTUVWXYZABCDEFGHIJKL  : III
           -  +           
BCDEFGHIJKLMNOPQRSTUVWXYZA  : I
               -+         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          +           -   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>


<h3>DenCode में सेटिंग आइटम</h3>

<h4>व्हील (Walzenlage)</h4>
<p>रिफ्लेक्टर और रोटर्स के प्रकार और रोटर्स का क्रम सेट करता है।</p>
<p>चूंकि इनपुट Enigma मशीन के दाईं ओर से होता है, रोटर्स को दाईं ओर से 1, 2, 3 गिना जाता है, लेकिन व्हील ऑर्डर सेटिंग को आमतौर पर बाएं से दाएँ लिखा जाता है। उदाहरण के लिए, "UKW-A II I III" के व्हील ऑर्डर का मतलब है रोटर 1 "III", रोटर 2 "I", रोटर 3 "II", और रिफ्लेक्टर "UKW-A" की सेटिंग।</p>
<p>आम तौर पर 1 रिफ्लेक्टर और 3 रोटर होते हैं, कुल 4, लेकिन Enigma M4 में रिफ्लेक्टर स्लॉट में "पतला रिफ्लेक्टर (thin reflector)" और "पतला रोटर (thin rotor)" सेट किया जा सकता है। DenCode में, "पतले रिफ्लेक्टर" को सामान्य रिफ्लेक्टर के समान माना जाता है, और "पतले रोटर" (Beta, Gamma) को अतिरिक्त रूप से रोटर 4 के रूप में प्रदर्शित किया जाता है, कुल 5 सेटिंग्स। हालांकि, यदि रिफ्लेक्टर UKW-D है, तो यह रिफ्लेक्टर स्लॉट को घेर लेता है, इसलिए रोटर 4 सेट नहीं किया जा सकता है।</p>

<h4>रिंग सेटिंग (Ringstellung)</h4>
<p>रोटर की रिंग सेट करता है। यह सेटिंग रिंग के सापेक्ष रोटर की आंतरिक वायरिंग की स्थिति को बदल देती है। कुछ Enigma मशीनों में, रिफ्लेक्टर के लिए भी रिंग सेट की जा सकती है।</p>

<h4>पोजीशन सेटिंग (Grundstellung)</h4>
<p>रोटर की प्रारंभिक स्थिति सेट करता है। कुछ Enigma मशीनों में, रिफ्लेक्टर की प्रारंभिक स्थिति भी सेट की जा सकती है।</p>
<p>चूंकि हर संदेश के लिए सेटिंग बदल दी जाती थी, इसे कभी-कभी "Message key" भी कहा जाता है।</p>

<h4>प्लगबोर्ड वायरिंग (Steckerverbindungen)</h4>
<p>प्लगबोर्ड वायरिंग के जोड़े सेट करता है।</p>
<p>DenCode में, वायरिंग को "AB CD EF GH IJ KL" जैसे प्रतिस्थापित किए जाने वाले 2 वर्णों के जोड़ों को स्पेस से अलग करके निर्दिष्ट किया जाता है। यह उदाहरण "A" और "B", "C" और "D", आदि के वायरिंग जोड़ों का प्रतिनिधित्व करता है।</p>

<h4>Uhr</h4>
<p>Uhr एक एक्सेसरी है जो प्लगबोर्ड से जुड़ती है और "00" से "39" तक के 40 वायरिंग विकल्पों में से चयन करती है। प्लगबोर्ड और Uhr 20 केबलों से जुड़े होते हैं। केबल जोड़े में होते हैं, और ऐसे 10 जोड़े होते हैं। यदि Uhr सेटिंग "00" है, तो यह प्लगबोर्ड पर सीधे वायर किए गए केबल जोड़ों के बराबर है।</p>
<p>Uhr को केवल Enigma I पर सेट किया जा सकता है। Uhr सेटिंग को पहले प्लगबोर्ड वायरिंग के 10 जोड़े निर्दिष्ट करके सक्षम किया जाता है।</p>

<h4>UKW-D वायरिंग</h4>
<p>UKW-D एक रिफ्लेक्टर है जिसकी आंतरिक वायरिंग को बदला जा सकता है।</p>
<p>सामान्य रिफ्लेक्टर रिंग का नोटेशन "ABCDEFGHIJKLMNOPQRSTUVWXYZ" है, लेकिन UKW-D का नोटेशन "A-ZXWVUTSRQPON-MLKIHGFEDCB" का एक विशेष क्रम है। दो हाइफ़न "-" (सामान्य नोटेशन में B और O) तय हैं, और हमेशा एक दूसरे से जुड़े होते हैं और उन्हें बदला नहीं जा सकता है। अन्य 24 वर्णों के 12 जोड़ों की वायरिंग सेट की जाती है।</p>

<pre>
UKW-D नोटेशन : A-ZXWVUTSRQPON-MLKIHGFEDCB
सामान्य नोटेशन : ABCDEFGHIJKLMNOPQRSTUVWXYZ
</pre>

<p>UKW-D को Enigma I, Enigma M4, Enigma KD के मामले में सेट किया जा सकता है।</p>
