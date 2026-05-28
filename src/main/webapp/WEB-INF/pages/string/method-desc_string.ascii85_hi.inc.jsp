<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Ascii85 के बारे में</h3>
<p>Ascii85, 7-बिट प्रिंट करने योग्य ASCII वर्णों का उपयोग करने वाली एक एन्कोडिंग योजना है। इसे Base85 भी कहा जाता है।</p>
<p>Ascii85 में, डेटा को 4 बाइट्स में विभाजित किया जाता है और उन्हें 5 ASCII वर्णों में परिवर्तित करके दर्शाया जाता है।</p>
<p>Ascii85 के कई वेरिएंट मौजूद हैं। DenCode निम्नलिखित तीन प्रकार के Ascii85 का समर्थन करता है। मूल btoa है, जिसके बाद Adobe और Z85 आए।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>परिचय (Overview)</th></tr>
		<tr><th>Z85</th><td>ZeroMQ में उपयोग किया जाता है। इसमें "\" (बैकस्लैश) और "'" (अपोस्ट्रोफी) जैसे वर्णों का उपयोग नहीं किया जाता है जिन्हें एस्केप करने की आवश्यकता होती है।</td></tr>
		<tr><th>Adobe</th><td>Adobe के PostScript और PDF (Portable Document Format) फ़ाइलों के भीतर छवियों आदि को एन्कोड करने के लिए उपयोग किया जाता है। "&lt;~" और "~&gt;" से घिरा होता है।</td></tr>
		<tr><th>btoa</th><td>UNIX btoa कमांड का प्रारूप। अतीत में इसका उपयोग बाइनरी डेटा के आदान-प्रदान के लिए किया जाता था, लेकिन अब यह आम नहीं है। "xbtoa Begin" और "xbtoa End" लाइनों से घिरा होता है।</td></tr>
	</table>
</div>

<p>Ascii85 में उपयोग किए जाने वाले ASCII वर्ण निम्नानुसार हैं। 4-बाइट मान को big-endian unsigned integer के रूप में माना जाता है, और 85-आधार (base-85) के प्रत्येक अंक (5 अंक) की गणना करने के बाद, निम्नलिखित ASCII वर्णों के आधार पर Ascii85 रूपांतरण परिणाम प्राप्त किया जाता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>ASCII वर्ण</th></tr>
		<tr><th>Z85</th><td>0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-:+=^!/*?&amp;&lt;&gt;()[]{}@%$#</td></tr>
		<tr><th>Adobe</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu</td></tr>
		<tr><th>btoa</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu<br />(मूल रूप से " " (स्पेस) से "t" तक के वर्ण थे, लेकिन कुछ मेलर (mailer) अंत के स्पेस को हटा देते थे, इसलिए बाद में इसे स्पेस को छोड़कर "!" से "u" वर्णों से बदल दिया गया।)</td></tr>
	</table>
</div>

<p>उदाहरण के लिए, "Hello" को Ascii85 में बदलने पर परिणाम इस प्रकार होगा।</p>

<p>1. 4 बाइट्स में विभाजित करें। यदि 4 बाइट्स से कम हैं, तो अंत में "00" से पैडिंग करें।</p>

<pre>48656C6C<sub>(16)</sub> 6F000000<sub>(16)</sub>  (Hell o)</pre>

<p>2. प्रत्येक 4 बाइट्स को big-endian unsigned integer के रूप में मानें, और उस मान को 85-आधार के प्रत्येक अंक में बदलें।</p>

<pre>48656C6C<sub>(16)</sub>
= 1214606444<sub>(10)</sub>
= <b>23</b> * 85<sup>4</sup> + <b>22</b> * 85<sup>3</sup> + <b>66</b> * 85<sup>2</sup> + <b>52</b> * 85 + <b>49</b></pre>

<pre>6F000000<sub>(16)</sub>
= 1862270976<sub>(10)</sub>
= <b>35</b> * 85<sup>4</sup> + <b>57</b> * 85<sup>3</sup> + <b>33</b> * 85<sup>2</sup> + <b>65</b> * 85 + <b>26</b></pre>

<p>3. 85-आधार के प्रत्येक अंक को ASCII वर्ण में बदलें। यदि अंत में "00" से पैडिंग की गई थी, तो Adobe/Z85 के मामले में पैडिंग भाग को हटा दिया जाता है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><td>23</td><td>22</td><td>66</td><td>52</td><td>49</td><td></td><td>35</td><td>57</td><td>33</td><td>65</td><td>26</td></tr>
		<tr><th>Z85</th><td>n</td><td>m</td><td>=</td><td>Q</td><td>N</td><td></td><td>z</td><td>V</td><td></td><td></td><td></td></tr>
		<tr><th>Adobe</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td></td><td></td><td></td></tr>
		<tr><th>btoa</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td>B</td><td>b</td><td>;</td></tr>
	</table>
</div>

<p>4. सभी वर्णों को जोड़कर Ascii85 का रूपांतरण परिणाम प्राप्त करें। Adobe "&lt;~" और "~&gt;" में बंद होता है और हर 80 वर्णों के बाद नई लाइन होती है। btoa "xbtoa Begin" और "xbtoa End" (इसमें डेटा लंबाई और चेकसम भी शामिल है) में बंद होता है और हर 78 वर्णों के बाद नई लाइन होती है।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>रूपांतरण परिणाम</th></tr>
		<tr><th>Z85</th><td>nm=QNzV</td></tr>
		<tr><th>Adobe</th><td>&lt;~87cURDZ~&gt;</td></tr>
		<tr><th>btoa</th><td>xbtoa Begin<br />87cURDZBb;<br />xbtoa End N 5 5 E 42 S 1f9 R a9f</td></tr>
	</table>
</div>

<p>इसके अलावा, कुछ संक्षिप्त रूप (short forms) परिभाषित हैं।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>संक्षिप्त रूप</th></tr>
		<tr><th>Z85</th><td>None (कोई नहीं)</td></tr>
		<tr><th>Adobe</th><td>00000000<sub>(16)</sub> -&gt; z</td></tr>
		<tr><th>btoa</th><td>00000000<sub>(16)</sub> -&gt; z<br />20202020<sub>(16)</sub> -&gt; y (btoa v4.2 या बाद का संस्करण)</td></tr>
	</table>
</div>
