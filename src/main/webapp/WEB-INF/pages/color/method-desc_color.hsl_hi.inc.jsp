<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>HSL रंग के बारे में</h3>
<p>HSL रंग एक रंग मॉडल है जो रंगों को ह्यू, सैचुरेशन और लाइटनेस से व्यक्त करता है। RGB लाल, हरे और नीले प्रकाश की तीव्रता को सीधे बताता है, जबकि HSL रंग-भाव, चमकदारपन और उजाले को अलग करता है, इसलिए रंग समायोजन और CSS डिज़ाइन में उपयोगी है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>घटक</th><th>अर्थ</th><th>उदाहरण मान</th></tr>
		</thead>
		<tbody>
			<tr><td>H: ह्यू</td><td>रंग-भाव को कोण के रूप में दिखाता है। लाल लगभग 0deg, हरा 120deg और नीला 240deg के पास होता है।</td><td><code>90deg</code></td></tr>
			<tr><td>S: सैचुरेशन</td><td>रंग की चमकदारता दिखाता है। 0% अक्रोमैटिक है और 100% सबसे चमकीला रंग है।</td><td><code>50%</code></td></tr>
			<tr><td>L: लाइटनेस</td><td>रंग की चमक दिखाता है। 0% काला, 50% सामान्य चमक और 100% सफेद है।</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>उदाहरण के लिए, लाल जैसे मुख्य रंगों को इस प्रकार दिखाया जा सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>रंग</th><th>HSL संकेतन</th><th>RGB संकेतन</th></tr>
		</thead>
		<tbody>
			<tr><td>लाल</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>हरा</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>लाइम</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>नीला</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>सफेद</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>काला</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>पारदर्शिता शामिल करने के लिए अल्फा मान जोड़ें। उदाहरण के लिए, अर्ध-पारदर्शी लाल को <code>hsl(0deg 100% 50% / 0.5)</code> के रूप में दिखाया जा सकता है।</p>

<p>इनपुट में <code>hsl(0deg 100% 50%)</code> जैसे स्पेस से अलग संकेतन और <code>hsl(0deg, 100%, 50%)</code> जैसे पुराने कॉमा से अलग संकेतन का उपयोग किया जा सकता है।</p>

<h4>ह्यू, सैचुरेशन और लाइटनेस का व्यवहार</h4>
<p>ह्यू को कोण के रूप में संभाला जाता है, और 360deg से बड़े या ऋणात्मक मान 0deg से 360deg की सीमा में सामान्यीकृत किए जाते हैं। उदाहरण के लिए, <code>hsl(360deg 100% 50%)</code> को <code>hsl(0deg 100% 50%)</code> के समान रंग माना जाता है, और <code>hsl(-120deg 100% 50%)</code> को <code>hsl(240deg 100% 50%)</code> के समान रंग माना जाता है।</p>

<p>सैचुरेशन और लाइटनेस को 0% से 100% की सीमा में संभाला जाता है। सैचुरेशन 0% होने पर रंग ह्यू से स्वतंत्र होकर ग्रे अक्रोमैटिक रंग बन जाता है। लाइटनेस 0% होने पर रंग काला और 100% होने पर सफेद होता है।</p>

<h4>HSL और RGB में अंतर</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> लाल, हरे और नीले घटकों को सीधे निर्दिष्ट करता है, इसलिए यह स्क्रीन प्रदर्शन और छवि डेटा के निकट है। HSL ह्यू, सैचुरेशन और लाइटनेस को अलग करता है, जिससे “उसी ह्यू में अधिक उजला करना” या “केवल सैचुरेशन घटाना” जैसे समायोजन आसान होते हैं।</p>

<p>हालाँकि, HSL मानव अनुभूति के अनुसार पूरी तरह समान रंग स्थान नहीं है। दृश्य चमक या रंग अंतर को अधिक आसानी से संभालने के लिए <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> और <a href="${dc:h(basePath)}/color/oklch">Oklch</a> जैसे रंग स्थानों का उपयोग किया जा सकता है।</p>
