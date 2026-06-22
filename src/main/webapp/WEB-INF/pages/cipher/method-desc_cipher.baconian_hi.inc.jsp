<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>बेकन सिफर के बारे में</h3>
<p>बेकन सिफर एक प्रतिस्थापन सिफर है, जिसमें हर अक्षर को A/B जैसे दो मानों वाले पांच-चिह्न पैटर्न से दिखाया जाता है।</p>

<pre>
सादा पाठ  : HELLO, WORLD!
कूट पाठ   : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>मूल बेकन सिफर 24-अक्षर वाली वर्णमाला का उपयोग करता है, जिसमें I/J और U/V को एक ही अक्षर माना जाता है। दूसरे संस्करण में A से Z तक हर अक्षर को अलग कूट दिया गया है। DenCode दोनों वर्णमालाओं का समर्थन करता है।</p>

<h4>मूल 24-अक्षर वर्णमाला</h4>
<p>मूल वर्णमाला में I और J एक ही कूट साझा करते हैं, और U और V भी एक ही कूट साझा करते हैं। कूटलेखन के समय J को I की तरह और V को U की तरह बदला जाता है।</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>दूसरा संस्करण: 26-अक्षर वर्णमाला</h4>
<p>दूसरे संस्करण में A से Z तक हर अक्षर का अपना बेकन कूट होता है, जिसमें I, J, U और V भी अलग-अलग शामिल हैं।</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>चुनी गई वर्णमाला में समर्थित न होने वाले अक्षर जैसे हैं वैसे ही रखे जाते हैं।</p>

<h4>स्टेगनोग्राफी के रूप में उपयोग</h4>
<p>बेकन सिफर 1605 में फ्रांसिस बेकन ने बनाया था। जब A/B के पांच-चिह्नों वाले समूह सीधे लिखे जाते हैं, तो यह प्रतिस्थापन सिफर की तरह काम करता है। जब A/B के चुनाव किसी दूसरे पाठ के रूप-रंग में छिपाए जाते हैं, तो इसे छिपाव सिफर या स्टेगनोग्राफी के रूप में भी उपयोग किया जा सकता है।</p>
<p>स्टेगनोग्राफी में उपयोग करने के लिए, पहले गुप्त संदेश को A/B क्रम में बदला जाता है और फिर इतना लंबा आवरण पाठ तैयार किया जाता है कि वह क्रम उसमें समा सके। आवरण पाठ का हर अक्षर दो फ़ॉन्टों में से किसी एक में लिखा जाता है: एक को A और दूसरे को B पढ़ा जाता है। पाठ सामान्य वाक्य जैसा दिखता है, लेकिन फ़ॉन्ट के अंतर को पांच-पांच के समूहों में पढ़ने पर छिपा संदेश मिल जाता है। बेकन ने हस्तलेखन के लिए द्विअक्षरी वर्णमाला भी बताई थी, जिसमें बड़े और छोटे अक्षरों के दो वैकल्पिक रूप थे।</p>

<p>उदाहरण के लिए, “HI” को कूटबद्ध करने पर “AABBB ABAAA” मिलता है। इसे आवरण पाठ “Hello world” में छिपाने पर यह ऐसा दिखता है:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>इस उदाहरण में सामान्य अक्षरों को A और मोटे अक्षरों को B पढ़ा जाता है। दिखाई देने वाला पाठ “Hello world” है, लेकिन केवल फ़ॉन्ट के अंतर पढ़ने पर “AABBB ABAAA” मिलता है, जो पांच-पांच के समूहों में पढ़ने पर “HI” बनता है।</p>
