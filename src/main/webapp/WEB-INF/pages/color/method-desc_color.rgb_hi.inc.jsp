<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>RGB रंग के बारे में</h3>
<p>RGB रंग एक कलर मॉडल है जो लाल, हरे और नीले प्रकाश के तीन घटकों को मिलाकर रंगों को व्यक्त करता है। यह डिस्प्ले, वेब पेज और इमेज डेटा जैसे स्क्रीन पर उपयोग होने वाले रंगों के लिए व्यापक रूप से इस्तेमाल होता है।</p>

<p>RGB में प्रत्येक घटक की तीव्रता संख्यात्मक मान से निर्दिष्ट की जाती है। सामान्यतः इसे 0 से 255 तक पूर्णांक या 0% से 100% तक प्रतिशत के रूप में व्यक्त किया जाता है। सभी घटक 0 होने पर रंग काला होता है; सभी घटक अधिकतम होने पर रंग सफेद होता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>रंग</th><th>RGB लेखन</th><th>हेक्स लेखन</th></tr>
		</thead>
		<tbody>
			<tr><td>लाल</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>हरा</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>नीला</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>सफेद</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>काला</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>RGB रंग फ़ंक्शन रूप या हेक्साडेसिमल रूप में लिखे जा सकते हैं। उदाहरण के लिए, लाल को <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> या <code>#f00</code> के रूप में दिखाया जा सकता है।</p>

<p>पारदर्शिता शामिल करने के लिए अल्फा मान जोड़ें। उदाहरण के लिए, अर्ध-पारदर्शी लाल को <code>rgb(255 0 0 / 50%)</code> या <code>#ff000080</code> के रूप में दिखाया जा सकता है।</p>

<p>DenCode का RGB रंग रूपांतरण निम्न लेखन विकल्पों का समर्थन करता है।</p>

<div class="table-responsive">
	<table class="table">
		<caption>RGB रंग (हेक्स)</caption>
		<thead>
			<tr><th>लेखन विकल्प</th><th>फॉर्मेट</th><th>उदाहरण</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>RGB रंग</caption>
		<thead>
			<tr><th>लेखन विकल्प</th><th>फॉर्मेट</th><th>उदाहरण</th></tr>
		</thead>
		<tbody>
			<tr><td>संख्या</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>प्रतिशत</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> CSS की मानक हेक्साडेसिमल रंग लेखन शैली नहीं है, बल्कि ARGB प्रारूप है जो कभी-कभी प्रोग्राम और एप्लिकेशन सेटिंग में उपयोग होता है। शुरू का <code>AA</code> अल्फा को दर्शाता है, और उसके बाद <code>RR</code>, <code>GG</code>, <code>BB</code> लाल, हरा और नीला दर्शाते हैं।</p>

<h4>sRGB और अन्य RGB कलर स्पेस</h4>
<p>RGB एक कलर मॉडल है जो लाल, हरे और नीले तीन घटकों से रंग व्यक्त करता है। हालांकि, समान RGB मान होने पर भी वास्तविक रंग इस पर निर्भर करता है कि उन्हें किस कलर स्पेस में समझा जा रहा है। वेब में सामान्य <code>rgb()</code> और <code>#RRGGBB</code> मान सामान्यतः sRGB कलर स्पेस के रंग माने जाते हैं।</p>

<p>CSS Color Module Level 4 Display P3 और ProPhoto RGB जैसे RGB कलर स्पेस भी परिभाषित करता है, जिनका रंग दायरा sRGB से अलग है। DenCode इन कलर स्पेस के रूपांतरण का भी समर्थन करता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>कलर स्पेस</th><th>फॉर्मेट</th><th>उदाहरण</th><th>विशेषताएँ</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>वेब और CSS के लिए सामान्य RGB कलर स्पेस। हेक्स रंग कोड और सामान्य <code>rgb()</code> मान मूलतः sRGB माने जाते हैं। <code>color(srgb ...)</code> CSS Color Module Level 4 का प्रारूप है।</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>ऐसा कलर स्पेस जो sRGB जैसा ही gamut उपयोग करता है, लेकिन मानों को linearized घटकों से व्यक्त करता है। यह रंग गणना और compositing में उपयोग होता है।</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>sRGB से व्यापक gamut वाला कलर स्पेस, जो wide-gamut डिस्प्ले और कुछ मोबाइल उपकरणों में उपयोग होता है।</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>sRGB से व्यापक कलर स्पेस, जो कभी-कभी फोटो संपादन और प्रिंट-उन्मुख workflow में उपयोग होता है।</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Adobe RGB से भी व्यापक gamut वाला RGB कलर स्पेस, जो फोटो संपादन में working color space के रूप में उपयोग होता है।</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>बहुत व्यापक gamut वाला RGB कलर स्पेस, जो UHDTV और HDR वीडियो मानकों में उपयोग होता है।</td></tr>
		</tbody>
	</table>
</div>

<p>Wide-gamut RGB कलर स्पेस में निर्दिष्ट रंग sRGB स्क्रीन या सामान्य हेक्स रंग कोड से सटीक रूप में व्यक्त नहीं हो सकते। DenCode जब <code>#RRGGBB</code> या संख्यात्मक <code>rgb(R G B)</code> में बदलता है, तो sRGB में व्यक्त सीमा से बाहर के घटकों को <code>0</code> से <code>255</code> की सीमा में फिट होने के रूप में संभाला जाता है। दूसरी ओर, <code>color(display-p3 ...)</code> या <code>color(a98-rgb ...)</code> जैसे कलर स्पेस चुनने पर रंग चयनित कलर स्पेस के घटक मानों के रूप में दिखाया जा सकता है।</p>
