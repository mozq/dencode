<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Unicode-normalisatie</h3>
<p>Unicode-normalisatie betekent het ontleden en samenstellen van tekens. Sommige Unicode-tekens hebben meerdere representatiemethoden, zelfs als ze er hetzelfde uitzien. Bijvoorbeeld, "â" kan worden weergegeven als één codepunt "â" (U+00E2), of als twee ontlede codepunten (basisteken + combinerend teken) "a" (U+0061) en " ̂" (U+0302). Het eerste wordt een voorgesamengesteld teken genoemd, en het laatste een combinerende tekenreeks (combining character sequence, CCS).</p>
<p>Er zijn de volgende soorten Unicode-normalisatie:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Normalisatievorm</th><th scope="col">Beschrijving</th><th scope="col">Voorbeeld</th></tr>
		<tr><td>Normalization Form D (NFD)</td><td>Ontleden volgens canonieke equivalentie</td><td>「â」(U+00E2) -&gt; 「a」(U+0061) + 「 ̂」(U+0302)</td></tr>
		<tr><td>Normalization Form KD (NFKD)</td><td>Ontleden volgens compatibiliteitsequivalentie</td><td>「ﬁ」(U+FB01) -&gt; 「f」(U+0066) + 「i」(U+0069)</td></tr>
		<tr><td>Normalization Form C (NFC)</td><td>Ontleden volgens canonieke equivalentie en opnieuw samenstellen</td><td>「â」(U+00E2) -&gt; 「a」(U+0061) + 「 ̂」(U+0302) -&gt; 「â」(U+00E2)</td></tr>
		<tr><td>Normalization Form KC (NFKC)</td><td>Ontleden volgens compatibiliteitsequivalentie en canoniek opnieuw samenstellen</td><td>「ﬁ」(U+FB01) -&gt; 「f」(U+0066) + 「i」(U+0069) -&gt; 「f」(U+0066) + 「i」(U+0069)</td></tr>
	</table>
</div>

<p>Canonieke equivalentie normaliseert met behoud van visueel en functioneel equivalente tekens. Bijv. 「â」 &lt;-&gt; 「a」 + 「 ̂」</p>
<p>Compatibiliteitsequivalentie omvat, naast canonieke equivalentie, ook de normalisatie van tekens die semantisch verschillende vormen aannemen. Bijv. 「ﬁ」 -&gt; 「f」 + 「i」</p>
