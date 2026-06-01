<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Lab रंग के बारे में</h3>
<p>Lab रंग एक रंग स्थान है जो रंगों को लाइटनेस, हरे से लाल की धुरी और नीले से पीले की धुरी से व्यक्त करता है। RGB जहाँ डिस्प्ले के लाल, हरे और नीले घटकों को सीधे बताता है, वहीं Lab चमक और रंग को मानव दृष्टि के अधिक निकट तरीके से अलग करता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>घटक</th><th>अर्थ</th><th>उदाहरण मान</th></tr>
		</thead>
		<tbody>
			<tr><td>L: लाइटनेस</td><td>रंग की चमक को दर्शाता है। 0% काला और 100% सफेद है.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>हरे से लाल की दिशा दिखाता है। ऋणात्मक मान अधिक हरे और धनात्मक मान अधिक लाल होते हैं.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>नीले से पीले की दिशा दिखाता है। ऋणात्मक मान अधिक नीले और धनात्मक मान अधिक पीले होते हैं.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>उदाहरण के लिए, लाल जैसे मुख्य रंगों को इस प्रकार दिखाया जा सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>रंग</th><th>Lab संकेतन</th><th>RGB संकेतन</th></tr>
		</thead>
		<tbody>
			<tr><td>लाल</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>हरा</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>लाइम</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>नीला</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>सफेद</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>काला</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>पारदर्शिता शामिल करने के लिए अल्फा मान जोड़ें। उदाहरण के लिए, अर्ध-पारदर्शी लाल को इस प्रकार दिखाया जा सकता है: <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>लाइटनेस, a और b का व्यवहार</h4>
<p>रंग की चमक को दर्शाता है। 0% काला और 100% सफेद है 0% से कम मान 0% और 100% से अधिक मान 100% तक सीमित किए जाते हैं.</p>

<p><code>a</code> और <code>b</code> को धनात्मक या ऋणात्मक संख्याओं के रूप में दिया जाता है। इनके मान किसी निश्चित सीमा में काटे नहीं जाते और दिए गए घटक के रूप में संभाले जाते हैं.</p>

<h4>Lab और LCH में अंतर</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> Lab जैसी अनुभूति-आधारित सोच का उपयोग करता है, लेकिन रंग को क्रोमा और ह्यू से व्यक्त करता है।</p>
