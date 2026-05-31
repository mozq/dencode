<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>भिन्न के बारे में</h3>
<p>भिन्न (Fractions) संख्याओं को अंश (Numerator) और हर (Denominator) के अनुपात (भागफल) के रूप में "अंश/हर" के प्रारूप में व्यक्त करता है।</p>

<p>DenCode में, दर्ज की गई संख्या (पूर्णांक या दशमलव) को एक अपरिवर्तनीय भिन्न (एक भिन्न जिसे आगे सरल नहीं किया जा सकता) में परिवर्तित किया जाता है।</p>

<p>भिन्न रूपांतरण के उदाहरण निम्नलिखित हैं।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>दशमलव (इनपुट)</th><th>भिन्न (आउटपुट)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>अंत में "..." वाली दशमलव संख्या को "संक्षिप्त संख्या" के रूप में समझा जाता है और निम्नलिखित नियमों के आधार पर परिवर्तित किया जाता है:</p>
<ul>
	<li><strong>यदि कोई आवर्ती पैटर्न है (आवर्ती दशमलव):</strong> दशमलव भाग में आवर्ती पैटर्न (आवर्त) को स्वचालित रूप से खोजा जाता है और सटीक भिन्न प्रतिनिधित्व में परिवर्तित किया जाता है।</li>
	<li><strong>यदि कोई आवर्ती पैटर्न नहीं है:</strong> इसे दर्ज किए गए अंकों की संख्या के आधार पर एक शांत दशमलव के रूप में भिन्न में परिवर्तित किया जाता है।</li>
</ul>

<p>अंत में "..." वाली दशमलव संख्या के रूपांतरण उदाहरण निम्नलिखित हैं।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>दशमलव (इनपुट)</th><th>भिन्न (आउटपुट)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
