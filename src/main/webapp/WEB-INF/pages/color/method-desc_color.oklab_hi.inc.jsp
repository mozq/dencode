<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Oklab रंग के बारे में</h3>
<p>Oklab रंग एक अनुभूति-आधारित रंग स्थान है जो रंगों को लाइटनेस और दो रंग घटकों से व्यक्त करता है। Lab की तरह यह चमक और रंग को अलग करता है, लेकिन नए मॉडल के रूप में इसे रंग परिवर्तन को दृश्य अनुभव के अधिक निकट बनाने के लिए डिज़ाइन किया गया है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>घटक</th><th>अर्थ</th><th>उदाहरण मान</th></tr>
		</thead>
		<tbody>
			<tr><td>L: लाइटनेस</td><td>रंग की चमक को दर्शाता है। 0% काला और 100% सफेद है.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>हरे से लाल की दिशा दिखाता है। ऋणात्मक मान अधिक हरे और धनात्मक मान अधिक लाल होते हैं.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>नीले से पीले की दिशा दिखाता है। ऋणात्मक मान अधिक नीले और धनात्मक मान अधिक पीले होते हैं.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>उदाहरण के लिए, लाल जैसे मुख्य रंगों को इस प्रकार दिखाया जा सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>रंग</th><th>Oklab संकेतन</th><th>RGB संकेतन</th></tr>
		</thead>
		<tbody>
			<tr><td>लाल</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>हरा</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>लाइम</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>नीला</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>सफेद</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>काला</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>पारदर्शिता शामिल करने के लिए अल्फा मान जोड़ें। उदाहरण के लिए, अर्ध-पारदर्शी लाल को इस प्रकार दिखाया जा सकता है: <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>लाइटनेस, a और b का व्यवहार</h4>
<p>रंग की चमक को दर्शाता है। 0% काला और 100% सफेद है 0% से कम मान 0% और 100% से अधिक मान 100% तक सीमित किए जाते हैं.</p>

<p><code>a</code> और <code>b</code> को धनात्मक या ऋणात्मक संख्याओं के रूप में दिया जाता है। इनके मान किसी निश्चित सीमा में काटे नहीं जाते और दिए गए घटक के रूप में संभाले जाते हैं.</p>

<h4>Oklab और Oklch में अंतर</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> Oklab जैसी अनुभूति-आधारित सोच का उपयोग करता है, लेकिन रंग को क्रोमा और ह्यू से व्यक्त करता है।</p>

<h4>Oklab और Lab में अंतर</h4>
<p>Oklab को ह्यू या क्रोमा बदलने पर <a href="${dc:h(basePath)}/color/lab">Lab</a> की तुलना में अधिक समान दृश्य परिवर्तन देने के लिए डिज़ाइन किया गया है।</p>
