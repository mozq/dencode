<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>8-आधार (Octal) के बारे में</h3>
<p>8-आधार (Octal), संख्याओं को ऑक्टल नोटेशन में व्यक्त करता है।</p>

<p>8-आधार में, संख्याओं को 8 के आधार के रूप में "01234567" का उपयोग करके व्यक्त किया जाता है।</p>

<p>8-आधार में रूपांतरण का उदाहरण नीचे दिया गया है। संदर्भ के लिए, 2-आधार और 16-आधार के रूपांतरण उदाहरण भी दिए गए हैं।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10-आधार</th><th>2-आधार</th><th>8-आधार</th><th>16-आधार</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td></tr>
		</tbody>
	</table>
</div>

<p>इसके अलावा, दशमलव बिंदु के बाद की संख्याओं को 8-आधार में 8<sup>-1</sup> (1/8), 8<sup>-2</sup> (1/64), 8<sup>-3</sup> (1/512), ... के स्थानीय मान के रूप में परिवर्तित किया जाता है। यदि दशमलव भाग को 8<sup>-n</sup> के योग के रूप में व्यक्त नहीं किया जा सकता है, तो इसे पूरी तरह से 8-आधार में परिवर्तित नहीं किया जा सकता और त्रुटि (error) होती है। उस स्थिति में, DenCode अंत में "..." जोड़कर इसे संक्षिप्त रूप में दर्शाता है।</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10-आधार</th><th>2-आधार</th><th>8-आधार</th><th>16-आधार</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td></tr>
		</tbody>
	</table>
</div>
