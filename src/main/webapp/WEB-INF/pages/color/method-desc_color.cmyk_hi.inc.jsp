<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>CMYK रंग के बारे में</h3>
<p>CMYK रंग एक कलर मॉडल है जो रंगों को चार घटकों से व्यक्त करता है: सायन, मैजेंटा, पीला और काला (key plate)। यह मुख्य रूप से प्रिंटिंग और डेस्कटॉप पब्लिशिंग में उपयोग होता है, और घटावात्मक रंग मिश्रण पर आधारित है, जहाँ स्याही की परतों से रंग बनाए जाते हैं।</p>

<p>CMYK में प्रत्येक घटक 0% से 100% की सीमा में व्यक्त किया जाता है। सामान्यतः <code>C</code>, <code>M</code> और <code>Y</code> रंग-स्वर को, और <code>K</code> काले की मात्रा को दर्शाते हैं। जब सभी घटक 0% हों तो रंग सफेद होता है; जब <code>K</code> 100% हो तो रंग काले के करीब होता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>रंग</th><th>CMYK लेखन</th></tr>
		</thead>
		<tbody>
			<tr><td>लाल</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>सायन</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>मैजेंटा</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>पीला</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>सफेद</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>काला</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>पारदर्शिता शामिल करने के लिए अल्फा मान जोड़ें। उदाहरण के लिए, अर्ध-पारदर्शी लाल को <code>device-cmyk(0% 100% 100% 0% / 0.5)</code> के रूप में व्यक्त किया जा सकता है।</p>

<h4>कलर प्रोफाइल</h4>
<p>DenCode में कई कलर प्रोफाइल चुने जा सकते हैं। समर्थित कलर प्रोफाइल नीचे दिए गए हैं।</p>

<div class="table-responsive">
	<table class="table">
		<caption>CMYK रंग</caption>
		<thead>
			<tr><th>कलर प्रोफाइल</th><th>CMYK लेखन उदाहरण</th><th>विशेषताएँ</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>सरल RGB और CMYK रूपांतरण। यह किसी विशेष प्रिंटिंग स्थिति या ICC प्रोफाइल पर निर्भर नहीं करता।</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>U.S. Web Coated (SWOP) v2 के करीब एक CMYK कलर प्रोफाइल।</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>SWOP 2013 C3 ICC प्रोफाइल का उपयोग करने वाला CMYK रूपांतरण।</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>GRACoL 2013 ICC प्रोफाइल का उपयोग करने वाला CMYK रूपांतरण।</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>FOGRA39 ICC प्रोफाइल का उपयोग करने वाला CMYK रूपांतरण।</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>FOGRA51 के करीब एक CMYK कलर प्रोफाइल।</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>FOGRA52 के करीब एक CMYK कलर प्रोफाइल।</td></tr>
		</tbody>
	</table>
</div>

<p>“ICC प्रोफाइल” या “अनुमानित कलर प्रोफाइल” वाले CMYK रंग CSS के कस्टम कलर स्पेस प्रारूप <code>color(--profile C% M% Y% K%)</code> में दिखाए जाते हैं। वास्तविक CSS में उपयोग करने के लिए संबंधित ICC प्रोफाइल को <code>@color-profile</code> से निर्दिष्ट करें।</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>अनुमानित कलर प्रोफाइल प्रकाशित Characterization data के आधार पर अनुमानित CMYK रंगों की गणना करते हैं। इसलिए CSS <code>@color-profile</code> में मिलता-जुलता ICC प्रोफाइल उपयोग करने पर भी प्रदर्शित रंग में थोड़ा अंतर हो सकता है।</p>

<h4>CMYK और RGB का अंतर</h4>
<p>CMYK प्रिंटिंग स्याही के लिए घटावात्मक कलर मॉडल है। इसके विपरीत, <a href="${dc:h(basePath)}/color/rgb">RGB</a> डिस्प्ले जैसी रोशनी के लिए योगात्मक कलर मॉडल है। एक जैसे दिखने वाले रंगों के लिए भी CMYK और RGB के घटक मान काफी अलग हो सकते हैं।</p>
