<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>N-आधार (N-ary) के बारे में</h3>
<p>N-आधार (N-ary) संख्या प्रणाली, संख्याओं को N प्रतीकों (आमतौर पर अंक "0–9" और वर्णमाला "A–Z") का उपयोग करके स्थितिगत संकेतन (positional notation) में व्यक्त करती है.</p>

<p>DenCode 2 से 36 तक के आधारों का समर्थन करता है. 10 से बड़े आधारों (11 से 36) के लिए, 10 या उससे अधिक की संख्याओं को दर्शाने के लिए "A" से शुरू होने वाली वर्णमाला के अक्षरों का उपयोग किया जाता है. उदाहरण के लिए, 16-आधार (Hexadecimal) में 10 से 15 को A से F तक दर्शाया जाता है, और 36-आधार में 10 से 35 को A से Z तक दर्शाया जाता है.</p>

<p>प्रत्येक आधार में रूपांतरण का उदाहरण नीचे दिया गया है.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10-आधार</th><th>2-आधार</th><th>8-आधार</th><th>16-आधार</th><th>32-आधार</th><th>36-आधार</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td><td class="text-right">8</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td><td class="text-right">9</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td><td class="text-right">A</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td><td class="text-right">F</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">G</td><td class="text-right">G</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td><td class="text-right">H</td><td class="text-right">H</td></tr>
			<tr><td class="text-right">31</td><td class="text-right">11111</td><td class="text-right">37</td><td class="text-right">1F</td><td class="text-right">V</td><td class="text-right">V</td></tr>
			<tr><td class="text-right">32</td><td class="text-right">100000</td><td class="text-right">40</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">W</td></tr>
			<tr><td class="text-right">35</td><td class="text-right">100011</td><td class="text-right">43</td><td class="text-right">23</td><td class="text-right">13</td><td class="text-right">Z</td></tr>
			<tr><td class="text-right">36</td><td class="text-right">100100</td><td class="text-right">44</td><td class="text-right">24</td><td class="text-right">14</td><td class="text-right">10</td></tr>
		</tbody>
	</table>
</div>

<p>इसके अलावा, दशमलव बिंदु के बाद की संख्याओं को N-आधार में N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... के स्थानीय मान के रूप में परिवर्तित किया जाता है. यदि दशमलव भाग को N<sup>-n</sup> के योग के रूप में व्यक्त नहीं किया जा सकता है, तो इसे पूरी तरह से N-आधार में परिवर्तित नहीं किया जा सकता और सटीकता त्रुटि होती है. उस स्थिति में, DenCode अंत में "..." जोड़कर इसे संक्षिप्त रूप में दर्शाता है.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>10-आधार</th><th>2-आधार</th><th>8-आधार</th><th>16-आधार</th><th>32-आधार</th><th>36-आधार</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
