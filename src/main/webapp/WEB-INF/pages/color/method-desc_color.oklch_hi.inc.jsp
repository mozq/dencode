<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Oklch रंग के बारे में</h3>
<p>Oklch रंग एक अनुभूति-आधारित रंग स्थान है जो रंगों को लाइटनेस, क्रोमा और ह्यू से व्यक्त करता है। यह Oklab जैसी सोच का उपयोग करता है, लेकिन रंग को क्रोमा और कोण से दिखाता है, जिससे रंग की तीव्रता और ह्यू को अलग-अलग समायोजित करना आसान होता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>घटक</th><th>अर्थ</th><th>उदाहरण मान</th></tr>
		</thead>
		<tbody>
			<tr><td>L: लाइटनेस</td><td>रंग की चमक को दर्शाता है। 0% काला और 100% सफेद है.</td><td><code>60%</code></td></tr>
			<tr><td>C: क्रोमा</td><td>रंग की तीव्रता दिखाता है। 0 अक्रोमैटिक है और बड़ा मान अधिक चमकीला रंग देता है.</td><td><code>0.2</code></td></tr>
			<tr><td>H: ह्यू</td><td>ह्यू को कोण के रूप में दिखाता है.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>उदाहरण के लिए, लाल जैसे मुख्य रंगों को इस प्रकार दिखाया जा सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>रंग</th><th>Oklch संकेतन</th><th>RGB संकेतन</th></tr>
		</thead>
		<tbody>
			<tr><td>लाल</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>हरा</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>लाइम</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>नीला</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>सफेद</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>काला</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>पारदर्शिता शामिल करने के लिए अल्फा मान जोड़ें। उदाहरण के लिए, अर्ध-पारदर्शी लाल को इस प्रकार दिखाया जा सकता है: <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>लाइटनेस, क्रोमा और ह्यू का व्यवहार</h4>
<p>रंग की चमक को दर्शाता है। 0% काला और 100% सफेद है 0% से कम मान 0% और 100% से अधिक मान 100% तक सीमित किए जाते हैं.</p>

<p>रंग की तीव्रता दिखाता है। 0 अक्रोमैटिक है और बड़ा मान अधिक चमकीला रंग देता है. ऋणात्मक क्रोमा को 0 माना जाता है। क्रोमा 0 होने पर रंग अक्रोमैटिक हो जाता है और ह्यू को 0deg माना जाता है.</p>

<p>Hue को कोण के रूप में संभाला जाता है। <code>oklch(62.8% 0.2577 389.23deg)</code> को <code>oklch(62.8% 0.2577 29.23deg)</code> के समान रंग माना जाता है।</p>

<h4>Oklch और Oklab में अंतर</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> रंगों को <code>a</code> और <code>b</code> के आयताकार निर्देशांकों से व्यक्त करता है। Oklch उस रंग को क्रोमा और ह्यू में बदलता है।</p>

<h4>Oklch और LCH में अंतर</h4>
<p>Oklch को ह्यू या क्रोमा बदलने पर <a href="${dc:h(basePath)}/color/lch">LCH</a> की तुलना में अधिक समान दृश्य परिवर्तन देने के लिए डिज़ाइन किया गया है।</p>
