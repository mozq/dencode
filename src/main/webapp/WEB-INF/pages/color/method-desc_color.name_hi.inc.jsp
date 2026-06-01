<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>रंग नामों के बारे में</h3>
<p>रंग नाम CSS में परिभाषित named colors का उपयोग करके रंगों को व्यक्त करने का तरीका है। <code>red</code>, <code>blue</code> और <code>orange</code> जैसे कीवर्ड से रंग निर्दिष्ट किए जा सकते हैं, इसलिए HTML और CSS में अक्सर उपयोग होने वाले रंग आसानी से पढ़े जा सकते हैं।</p>

<p>उदाहरण के लिए, लाल जैसे प्रमुख रंगों को इस प्रकार व्यक्त किया जा सकता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>रंग</th><th>रंग नाम</th><th>RGB लेखन</th><th>हेक्स लेखन</th></tr>
		</thead>
		<tbody>
			<tr><td>लाल</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>लाइम</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>नीला</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>सफेद</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>काला</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>नारंगी</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>पारदर्शी</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> एक विशेष रंग नाम है जो पारदर्शी काले को दर्शाता है।</p>

<p><code>transparent</code> को छोड़कर रंग नामों में पारदर्शिता की जानकारी नहीं होती। DenCode में, यदि पारदर्शिता वाला रंग named color के रूप में व्यक्त किया जा सकता है, तो उसे CSS relative color syntax से दिखाया जाता है। उदाहरण के लिए, अर्ध-पारदर्शी <code>red</code> को <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code> के रूप में दिखाया जाता है।</p>

<h4>रंग नाम और RGB का अंतर</h4>
<p>रंग नाम पढ़ने में आसान कीवर्ड से प्रमुख रंगों को व्यक्त करते हैं। इसके विपरीत, <a href="${dc:h(basePath)}/color/rgb">RGB</a> लाल, हरे और नीले घटक मानों को निर्दिष्ट करता है और बहुत अधिक रंगों को संख्यात्मक रूप से व्यक्त कर सकता है। CSS या HTML में पठनीयता प्राथमिक होने पर रंग नाम उपयोग होते हैं, जबकि विस्तृत रंग निर्दिष्ट करने या रंग रूपांतरण के लिए RGB लेखन अधिक उपयोग होता है।</p>
