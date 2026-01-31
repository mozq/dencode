<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Base45 के बारे में</h3>
<p>Base45 एक एन्कोडिंग स्कीम (encoding scheme) है जो 7-बिट प्रिंट करने योग्य ASCII वर्णों का उपयोग करती है।</p>
<p>Base45 में, डेटा को 2 बाइट्स में विभाजित किया जाता है, और उन्हें 3 ASCII वर्णों में परिवर्तित करके दर्शाया जाता है।</p>

<p>Base45 में उपयोग किए जाने वाले ASCII वर्ण इस प्रकार हैं। 2-बाइट मान को बिग-एEndian (big-endian) अनसाइन किए गए पूर्णांक के रूप में माना जाता है, और फिर उसे आधार-45 (base-45) के प्रत्येक अंक (3 अंक) की गणना करने के बाद, निम्नलिखित ASCII वर्णों के आधार पर Base45 रूपांतरण परिणाम प्राप्त किया जाता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>आधार-45 अंक</th><th>Base45 ASCII वर्ण</th></tr>
		<tr><td>0</td><td>0</td></tr>
		<tr><td>1</td><td>1</td></tr>
		<tr><td>2</td><td>2</td></tr>
		<tr><td>3</td><td>3</td></tr>
		<tr><td>4</td><td>4</td></tr>
		<tr><td>5</td><td>5</td></tr>
		<tr><td>6</td><td>6</td></tr>
		<tr><td>7</td><td>7</td></tr>
		<tr><td>8</td><td>8</td></tr>
		<tr><td>9</td><td>9</td></tr>
		<tr><td>10</td><td>A</td></tr>
		<tr><td>11</td><td>B</td></tr>
		<tr><td>12</td><td>C</td></tr>
		<tr><td>13</td><td>D</td></tr>
		<tr><td>14</td><td>E</td></tr>
		<tr><td>15</td><td>F</td></tr>
		<tr><td>16</td><td>G</td></tr>
		<tr><td>17</td><td>H</td></tr>
		<tr><td>18</td><td>I</td></tr>
		<tr><td>19</td><td>J</td></tr>
		<tr><td>20</td><td>K</td></tr>
		<tr><td>21</td><td>L</td></tr>
		<tr><td>22</td><td>M</td></tr>
		<tr><td>23</td><td>N</td></tr>
		<tr><td>24</td><td>O</td></tr>
		<tr><td>25</td><td>P</td></tr>
		<tr><td>26</td><td>Q</td></tr>
		<tr><td>27</td><td>R</td></tr>
		<tr><td>28</td><td>S</td></tr>
		<tr><td>29</td><td>T</td></tr>
		<tr><td>30</td><td>U</td></tr>
		<tr><td>31</td><td>V</td></tr>
		<tr><td>32</td><td>W</td></tr>
		<tr><td>33</td><td>X</td></tr>
		<tr><td>34</td><td>Y</td></tr>
		<tr><td>35</td><td>Z</td></tr>
		<tr><td>36</td><td> [SP]</td></tr>
		<tr><td>37</td><td>$</td></tr>
		<tr><td>38</td><td>%</td></tr>
		<tr><td>39</td><td>*</td></tr>
		<tr><td>40</td><td>+</td></tr>
		<tr><td>41</td><td>-</td></tr>
		<tr><td>42</td><td>.</td></tr>
		<tr><td>43</td><td>/</td></tr>
	</table>
</div>

<p>उदाहरण के लिए, यदि आप "Hello" को Base45 में बदलते हैं, तो यह इस प्रकार होगा।</p>

<p>1. इसे हर 2 बाइट्स में विभाजित करें।</p>

<pre>4865<sub>(16)</sub> 6C6C<sub>(16)</sub> 6F<sub>(16)</sub>  (He ll o)</pre>

<p>2. प्रत्येक 2 बाइट्स को बिग-एEndian अनसाइन किए गए पूर्णांक के रूप में मानकर, उस मान को आधार-45 के प्रत्येक 3 अंकों में बदलें। यदि अंत में 1 बाइट है, तो इसे आधार-45 के 2 अंकों में बदलें।</p>

<pre>4865<sub>(16)</sub>
= 18533<sub>(10)</sub>
= <b>9</b> * 45<sup>2</sup> + <b>6</b> * 45 + <b>38</b></pre>

<pre>6C6C<sub>(16)</sub>
= 27756<sub>(10)</sub>
= <b>13</b> * 45<sup>2</sup> + <b>31</b> * 45 + <b>36</b></pre>

<pre>6F<sub>(16)</sub>
= 111<sub>(10)</sub>
= <b>2</b> * 45 + <b>21</b></pre>

<p>3. आधार-45 के प्रत्येक 3 अंकों को उल्टे क्रम में ASCII वर्णों में बदलें।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>आधार-45 अंक</th><td>38</td><td>6</td><td>9</td><td></td><td>36</td><td>31</td><td>13</td><td></td><td>21</td><td>2</td></tr>
		<tr><th>Base45 ASCII वर्ण</th><td>%</td><td>6</td><td>9</td><td></td><td> [SP]</td><td>V</td><td>D</td><td></td><td>L</td><td>2</td></tr>
	</table>
</div>

<p>4. सभी वर्णों को जोड़कर Base45 रूपांतरण परिणाम प्राप्त करें।</p>

<pre>%69 VDL2</pre>

<h3>Base45/Zlib/COSE/CBOR के बारे में</h3>
<p>Base45/Zlib/COSE/CBOR, CBOR प्रारूप में व्यक्त डेटा को COSE प्रारूप में हस्ताक्षर करने के बाद, Zlib प्रारूप में संकुचित करके और Base45 प्रारूप में परिवर्तित करके प्राप्त किया जाता है।</p>
<p>इसका उपयोग <a href="https://ec.europa.eu/info/live-work-travel-eu/coronavirus-response/safe-covid-19-vaccines-europeans/eu-digital-covid-certificate_en" target="_blank">EUDCC (EU Digital COVID Certificate)</a> के QR कोड डेटा प्रारूप के रूप में किया जाता है। EUDCC यूरोपीय संघ में COVID-19 टीकाकरण प्रमाण पत्र का एक सामान्य प्रारूप है, जिसे DGC (EU Digital Green Certificate) या Green Pass भी कहा जाता है।</p>
<p>DenCode केवल डिकोडिंग का समर्थन करता है, और डिकोड किया गया परिणाम JSON प्रारूप में दिखाया जाता है। हस्ताक्षर की वैधता सत्यापित नहीं की जाती है।</p>
