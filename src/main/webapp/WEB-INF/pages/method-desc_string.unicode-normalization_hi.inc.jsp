<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Unicode Normalization के बारे में</h3>
<p>Unicode Normalization का अर्थ है वर्णों का अपघटन (decomposition) और संरचना (composition)। Unicode के कुछ वर्ण दृष्टिगत रूप से समान होते हैं लेकिन उनके प्रतिनिधित्व के कई तरीके होते हैं। उदाहरण के लिए, "â" को "â" (U+00E2) के 1 कोडपॉइंट के रूप में भी दर्शाया जा सकता है, और "a" (U+0061) और "̂" (U+0302) के 2 अपघटित कोडपॉइंट्स (आधार वर्ण + संयोजन वर्ण) के रूप में भी दर्शाया जा सकता है। पहले वाले को पूर्व-संयोजित वर्ण (precomposed character) और बाद वाले को संयोजन वर्ण अनुक्रम (combining character sequence, CCS) कहा जाता है।</p>
<p>Unicode Normalization के निम्नलिखित प्रकार हैं।</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Normalization Form</th><th scope="col">विवरण</th><th scope="col">उदाहरण</th></tr>
		<tr><td>Normalization Form D (NFD)</td><td>Canonical Equivalence द्वारा अपघटन</td><td>"â"(U+00E2) -&gt; "a"(U+0061) + "̂"(U+0302)</td></tr>
		<tr><td>Normalization Form KD (NFKD)</td><td>Compatibility Equivalence द्वारा अपघटन</td><td>"ﬁ"(U+FB01) -&gt; "f"(U+0066) + "i"(U+0069)</td></tr>
		<tr><td>Normalization Form C (NFC)</td><td>Canonical Equivalence द्वारा अपघटन और पुन: संयोजन</td><td>"â"(U+00E2) -&gt; "a"(U+0061) + "̂"(U+0302) -&gt; "â"(U+00E2)</td></tr>
		<tr><td>Normalization Form KC (NFKC)</td><td>Compatibility Equivalence द्वारा अपघटन, और Canonical Equivalence द्वारा पुन: संयोजन</td><td>"ﬁ"(U+FB01) -&gt; "f"(U+0066) + "i"(U+0069) -&gt; "f"(U+0066) + "i"(U+0069)</td></tr>
	</table>
</div>

<p>Canonical Equivalence उन वर्णों को सामान्य (normalize) करता है जो दृष्टिगत और कार्यात्मक रूप से समान हैं। उदाहरण: "â" &lt;-&gt; "a" + "̂"</p>
<p>Compatibility Equivalence में, Canonical Equivalence के अलावा, अर्थगत रूप से भिन्न रूप लेने वाले वर्ण भी सामान्यीकरण का विषय होते हैं। उदाहरण: "ﬁ" -&gt; "f" + "i"</p>
