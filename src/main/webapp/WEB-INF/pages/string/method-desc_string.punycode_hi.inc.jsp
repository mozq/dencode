<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Punycode IDN के बारे में</h3>
<p>Punycode एक encoding विधि है, जिससे Unicode strings को केवल ASCII characters से लिखा जा सकता है। इसका मुख्य उपयोग internationalized domain names (IDN) को, जैसे Japanese, Chinese, Korean या accented Latin characters वाले domain names को, DNS द्वारा संभाली जा सकने वाली ASCII form में बदलने के लिए किया जाता है।</p>
<p>Internationalized domain name में domain name के हर label को Punycode से बदला जाता है, और बदले हुए label के शुरू में <code>xn--</code> लगाया जाता है। इस ASCII form को A-label कहा जाता है, जबकि मूल Unicode form को U-label कहा जाता है।</p>

<p>उदाहरण के लिए, “ドメイン.com” को Punycode IDN में बदलने पर परिणाम यह होता है।</p>

<pre>xn--eckwd4c7c.com</pre>

<p>इस उदाहरण में top-level domain <code>com</code> केवल ASCII characters से बना है, इसलिए वह वैसा ही रहता है। केवल “ドメイン” वाला label <code>xn--eckwd4c7c</code> में बदलता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode form</th><th scope="col">Punycode IDN form</th><th scope="col">विवरण</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Japanese characters वाला domain name.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>हर label अलग-अलग बदला जाता है.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Accented Latin character वाला उदाहरण.</td></tr>
	</table>
</div>

<p>Punycode IDN, URL encoding से अलग है। URL encoding URL के अंदर characters को <code>%E3%81%82</code> जैसी byte sequences से दिखाता है, जबकि Punycode IDN domain name labels को <code>xn--</code> से शुरू होने वाले ASCII labels में बदलता है।</p>

<h4>Domain label के अनुसार conversion</h4>
<p>Domain name dots (<code>.</code>) से अलग किए गए labels की श्रृंखला होता है। Punycode IDN पूरे domain name को एक string के रूप में नहीं बदलता; हर label को अलग-अलग बदलता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Label</th><th scope="col">Conversion result</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>इसलिए <code>例え.テスト</code> का परिणाम <code>xn--r8jz45g.xn--zckzah</code> होता है।</p>
