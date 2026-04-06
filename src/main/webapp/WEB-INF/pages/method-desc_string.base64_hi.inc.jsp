<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Base64 के बारे में</h3>
<p>Base64, 7-बिट प्रिंट करने योग्य ASCII वर्णों का उपयोग करने वाली एक एन्कोडिंग योजना है। मुख्य रूप से ईमेल में, 8-बिट डेटा को 7-बिट डेटा पथ पर स्थानांतरित करने के लिए इसका उपयोग किया जाता है।</p>
<p>Base64 में, डेटा को 6 बिट्स में विभाजित किया जाता है, और उन्हें अल्फ़ान्यूमेरिक (A-Z, a-z, 0-9) और प्रतीकों (+, /) में परिवर्तित करके व्यक्त किया जाता है। 4 वर्णों के समूह में परिवर्तित किया जाता है, और यदि अंत में 4 वर्ण नहीं हैं, तो अंत में बराबर चिह्न (=) से पैडिंग की जाती है।</p>
<p>इसके अलावा, RFC 1421 (PEM: Privacy-Enhanced Mail) में हर 64 वर्णों के बाद, और RFC 2045 (MIME) में हर 76 वर्णों के बाद नई लाइन (newline) का नियम है।</p>

<p>Base64 वर्ण रूपांतरण तालिका निम्नानुसार है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>6-बिट डेटा</th><th>Base64 वर्ण</th></tr>
		<tr><td>000000</td><td>A</td></tr>
		<tr><td>000001</td><td>B</td></tr>
		<tr><td>000010</td><td>C</td></tr>
		<tr><td>000011</td><td>D</td></tr>
		<tr><td>000100</td><td>E</td></tr>
		<tr><td>000101</td><td>F</td></tr>
		<tr><td>000110</td><td>G</td></tr>
		<tr><td>000111</td><td>H</td></tr>
		<tr><td>001000</td><td>I</td></tr>
		<tr><td>001001</td><td>J</td></tr>
		<tr><td>001010</td><td>K</td></tr>
		<tr><td>001011</td><td>L</td></tr>
		<tr><td>001100</td><td>M</td></tr>
		<tr><td>001101</td><td>N</td></tr>
		<tr><td>001110</td><td>O</td></tr>
		<tr><td>001111</td><td>P</td></tr>
		<tr><td>010000</td><td>Q</td></tr>
		<tr><td>010001</td><td>R</td></tr>
		<tr><td>010010</td><td>S</td></tr>
		<tr><td>010011</td><td>T</td></tr>
		<tr><td>010100</td><td>U</td></tr>
		<tr><td>010101</td><td>V</td></tr>
		<tr><td>010110</td><td>W</td></tr>
		<tr><td>010111</td><td>X</td></tr>
		<tr><td>011000</td><td>Y</td></tr>
		<tr><td>011001</td><td>Z</td></tr>
		<tr><td>011010</td><td>a</td></tr>
		<tr><td>011011</td><td>b</td></tr>
		<tr><td>011100</td><td>c</td></tr>
		<tr><td>011101</td><td>d</td></tr>
		<tr><td>011110</td><td>e</td></tr>
		<tr><td>011111</td><td>f</td></tr>
		<tr><td>100000</td><td>g</td></tr>
		<tr><td>100001</td><td>h</td></tr>
		<tr><td>100010</td><td>i</td></tr>
		<tr><td>100011</td><td>j</td></tr>
		<tr><td>100100</td><td>k</td></tr>
		<tr><td>100101</td><td>l</td></tr>
		<tr><td>100110</td><td>m</td></tr>
		<tr><td>100111</td><td>n</td></tr>
		<tr><td>101000</td><td>o</td></tr>
		<tr><td>101001</td><td>p</td></tr>
		<tr><td>101010</td><td>q</td></tr>
		<tr><td>101011</td><td>r</td></tr>
		<tr><td>101100</td><td>s</td></tr>
		<tr><td>101101</td><td>t</td></tr>
		<tr><td>101110</td><td>u</td></tr>
		<tr><td>101111</td><td>v</td></tr>
		<tr><td>110000</td><td>w</td></tr>
		<tr><td>110001</td><td>x</td></tr>
		<tr><td>110010</td><td>y</td></tr>
		<tr><td>110011</td><td>z</td></tr>
		<tr><td>110100</td><td>0</td></tr>
		<tr><td>110101</td><td>1</td></tr>
		<tr><td>110110</td><td>2</td></tr>
		<tr><td>110111</td><td>3</td></tr>
		<tr><td>111000</td><td>4</td></tr>
		<tr><td>111001</td><td>5</td></tr>
		<tr><td>111010</td><td>6</td></tr>
		<tr><td>111011</td><td>7</td></tr>
		<tr><td>111100</td><td>8</td></tr>
		<tr><td>111101</td><td>9</td></tr>
		<tr><td>111110</td><td>+</td></tr>
		<tr><td>111111</td><td>/</td></tr>
	</table>
</div>

<p>उदाहरण के लिए, "Hello" को Base64 में बदलने पर परिणाम इस प्रकार होगा।</p>

<p>1. बाइनरी प्रतिनिधित्व में बदलें।</p>

<pre>01001000 01100101 01101100 01101100 01101111  (US-ASCII / UTF-8 के मामले में)</pre>

<p>2. हर 6 बिट में विभाजित करें। यदि 6 बिट से कम हैं, तो अंत में "0" से पैडिंग करें।</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. रूपांतरण तालिका का उपयोग करके वर्णों में बदलें। 4 वर्णों के समूह में बदलें, और यदि 4 वर्णों से कम हैं, तो अंत में "=" से पैडिंग करें।</p>

<pre>SGVs bG8=</pre>

<p>4. सभी वर्णों को जोड़कर Base64 का रूपांतरण परिणाम प्राप्त करें।</p>

<pre>SGVsbG8=</pre>


<h4>E-mail का MIME संदेश हेडर प्रारूप (Format) (RFC 2047)</h4>
<p>DenCode, निम्नलिखित MIME संदेश हेडर प्रारूप (RFC 2047) के डिकोडिंग का भी समर्थन करता है। इस प्रारूप का उपयोग तब किया जाता है जब ईमेल के विषय या पते में ASCII के अलावा अन्य वर्ण शामिल होते हैं।</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>डिकोडिंग के बाद परिणाम इस प्रकार है।</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) एक टोकन प्रारूप है जो Base64url एन्कोडिंग का उपयोग करके JSON डेटा को संक्षिप्त रूप में प्रस्तुत करता है। यह वेब अनुप्रयोगों में प्रमाणीकरण और प्राधिकरण के लिए व्यापक रूप से उपयोग किया जाता है और RFC 7519 में मानकीकृत है।</p>

<p>एक JWT तीन तत्वों से बना होता है जो डॉट (.) द्वारा अलग किए जाते हैं।</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>प्रत्येक तत्व की भूमिका इस प्रकार है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>तत्व</th><th>विवरण</th></tr>
		<tr><td>Header</td><td>टोकन प्रकार (typ) और हस्ताक्षर एल्गोरिथ्म (alg) जैसी मेटाडेटा जानकारी वाला JSON ऑब्जेक्ट</td></tr>
		<tr><td>Payload</td><td>उपयोगकर्ता ID और समाप्ति समय जैसी जानकारी वाला JSON ऑब्जेक्ट</td></tr>
		<tr><td>Signature</td><td>हेडर और पेलोड की छेड़छाड़ का पता लगाने के लिए उपयोग किया जाने वाला हस्ताक्षर डेटा</td></tr>
	</table>
</div>

<p>हेडर और पेलोड प्रत्येक Base64url एन्कोडेड होते हैं। Base64url मानक Base64 की तुलना में "+" को "-" से और "/" को "_" से बदलता है, और पैडिंग "=" को छोड़ देता है (RFC 4648)। इससे उन्हें URL और HTTP हेडर में सुरक्षित रूप से शामिल किया जा सकता है।</p>

<p>उदाहरण के लिए, निम्नलिखित JWT को डिकोड करने पर हेडर और पेलोड JSON के रूप में प्राप्त होते हैं।</p>

<pre>eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c</pre>

<pre>
{
  "alg": "HS256",
  "typ": "JWT"
}
{
  "sub": "1234567890",
  "name": "John Doe",
  "iat": 1516239022
}
</pre>

<p>हेडर और पेलोड में शामिल मुख्य फ़ील्ड (क्लेम) निम्नलिखित हैं।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>फ़ील्ड</th><th>नाम</th><th>विवरण</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>हस्ताक्षर या एन्क्रिप्शन के लिए उपयोग किया जाने वाला एल्गोरिथ्म (जैसे HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>टोकन का प्रकार (आमतौर पर "JWT")</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>पेलोड का कंटेंट प्रकार (नेस्टेड JWT के लिए "JWT")</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>हस्ताक्षर सत्यापन के लिए उपयोग की जाने वाली कुंजी का पहचानकर्ता</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>हस्ताक्षर सत्यापन के लिए उपयोग किए जाने वाले JWK सेट का संदर्भ URL</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>हस्ताक्षर सत्यापन के लिए उपयोग की जाने वाली X.509 प्रमाणपत्र श्रृंखला का संदर्भ URL</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>हस्ताक्षर सत्यापन के लिए उपयोग किए जाने वाले X.509 प्रमाणपत्र का SHA-1 थंबप्रिंट</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>फ़ील्ड</th><th>नाम</th><th>विवरण</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>टोकन का जारीकर्ता</td></tr>
		<tr><td>sub</td><td>Subject</td><td>टोकन का विषय (जैसे उपयोगकर्ता ID)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>टोकन का प्राप्तकर्ता</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>टोकन की समाप्ति समय (Unix टाइमस्टैम्प)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>जिस समय से पहले टोकन मान्य नहीं है (Unix टाइमस्टैम्प)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>टोकन जारी होने का समय (Unix टाइमस्टैम्प)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>टोकन का अद्वितीय पहचानकर्ता</td></tr>
	</table>
</div>
